import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Style/String.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    final double ContainerOptionsSize = 150;
    final double DividerSize = 2;

    return Scaffold(
      appBar: AppBar(
        title: Text(RuStrings.sectionsTitles[3]),
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
                    child: Text('Настройки', style: GoogleFonts.poppins(
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
              child: Container(
                height: ContainerOptionsSize,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [

                    Container(
                      height: ContainerOptionsSize / 2 - (DividerSize / 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Text(
                              RuStrings.settingsTitles[0]
                          ),

                          Container(
                            child: ToggleSwitch(
                              minWidth: 60,
                              cornerRadius: 20,
                              activeFgColor: Colors.white,
                              activeBgColors: [
                                [Colors.green],
                                [Colors.red],
                              ],
                              inactiveBgColor: Colors.grey,
                              inactiveFgColor: Colors.white,
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              labels: ['Ru', 'Eng'],
                              onToggle: (index){
                                String res = ' ';

                                if (index == 0) {
                                  res = 'Ru';
                                }
                                else {
                                  res = 'Eng';
                                }

                                print('Язык: $res');
                              },
                            ),
                          )

                        ],
                      ),
                    ),

                    Divider(
                      height: 2,
                    ),

                    Container(
                      height: ContainerOptionsSize / 2 - (DividerSize / 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Text(
                            RuStrings.settingsTitles[1]
                          ),

                          Container(
                            child: ToggleSwitch(
                              minWidth: 70,
                              cornerRadius: 10,
                              activeFgColor: Colors.white,
                              activeBgColors: [
                                [Colors.green],
                                [Colors.red],
                              ],
                              inactiveBgColor: Colors.grey,
                              inactiveFgColor: Colors.white,
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              labels: ['Defoult', 'Black'],
                              onToggle: (index){
                                String res = ' ';

                                if (index == 0) {
                                  res = 'Defoult';
                                }
                                else {
                                  res = 'Black';
                                }

                                print('Стиль: $res');
                              },
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )


          ],
        )
      )
    );
  }
}