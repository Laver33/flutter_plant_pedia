import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}


class _SettingsScreenState extends ConsumerState<SettingsScreen> {

    // Switch №1
    bool currentNum1 = false;


    static const TextStyle _textStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
    );

    void _saveLanguagePreference(String locale) async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('language', locale);
    }



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    final double ContainerOptionsSize = 150;
    final double DividerSize = 2;

    final localizations = ref.watch(localizationProvider);


    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.sectionsTitles[3]),
      ),
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
        child: Column(
          children: [

            // Окно настроек
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
              width: screenWidth,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.only(
                      left: 60),
                    child: Text(localizations.sectionsTitles[3], style: GoogleFonts.poppins(
                      fontSize: 24
                    ),)
                    ),
                ],
              ),
            ),
            ),

            // Сами настройки
            Padding(
              padding: const EdgeInsets.all(10),

                child: Column(
                  children: [

                    Container(
                      height: ContainerOptionsSize / 2 - (DividerSize / 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Text(
                              localizations.settingsTitles[0]
                          ),

                          Container(
                            child: AnimatedToggleSwitch.dual(
                              current: currentNum1, 
                              first: false, 
                              second: true,
                              spacing: 10,
                              height: ContainerOptionsSize / 4,
                              borderWidth: 2,

                              style: ToggleStyle(
                                borderColor: Colors.transparent,
                                backgroundColor: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0, 0.1)
                                  )
                                ],
                              ),
                              
                              onChanged: (ind) {
                                setState(() => currentNum1 = ind);
                                
                                final newLocale = ind ? 'en' : 'ru';
                                ref.read(currentLocaleProvider.notifier).state = newLocale;
                                
                                _saveLanguagePreference(newLocale);
                              },
                              
                              styleBuilder: (ind) => ToggleStyle(indicatorColor: ind ? Colors.red : Colors.green ),

                              textBuilder: (ind) => ind ?
                                Center(
                                  child: Text(
                                    localizations.switchText1[0], 
                                    style: _textStyle
                                  )
                                ) 
                                : Center(
                                  child: Text(
                                    localizations.switchText1[1], 
                                    style: GoogleFonts.poppins(fontSize: 12),
                                  ),
                                ),
                            ),
                          )

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: ContainerOptionsSize,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.warning, color: Colors.red),
                                  Text(
                                    localizations.warningTitle, style: GoogleFonts.poppins(
                                    fontSize: 15
                                  ),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(localizations.appWarningText),
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
          ],
        )
      )
    );
  }
}