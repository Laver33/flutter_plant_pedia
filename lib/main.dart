import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Widgets/list_category.dart';
import 'package:my_first_app/data/category_data.dart';
import 'package:my_first_app/models/care_event.dart';
import 'package:my_first_app/pages/ProfileScreen.dart';
import 'package:my_first_app/Route.dart';
import 'package:my_first_app/pages/SearchScreen.dart';
import 'package:my_first_app/Style/String.dart';
import 'package:my_first_app/Widgets/list_popular.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:my_first_app/services/notification_service.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';


// Provider 
final currentLocaleProvider = StateProvider<String>((ref) => 'ru');

final localizationProvider = Provider<AppLocalizations>((ref) {
  final currentLocale = ref.watch(currentLocaleProvider);
  return localizationMap[currentLocale]!;
});


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final notificationService = NotificationService();
  await notificationService.initialize();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}

class StartScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends ConsumerState<StartScreen> {
  int _currentBottomIndex = 1;

  List<Widget> pagesWidget = [
    ProfileScreen(),
    HomeScreen(),
    Searchscreen(),
  ];

  void _indexSwapBottom(int index) {
    setState(() {
      _currentBottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final localizations = ref.watch(localizationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appName), 
      ),
      body: pagesWidget[_currentBottomIndex],
      bottomNavigationBar: StylishBottomBar(
        option: DotBarOptions(
          dotStyle: DotStyle.tile,
        ),
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.person_2_outlined),
            title: Text(localizations.navbottonbarTitles[0]) 
          ),
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text(localizations.navbottonbarTitles[1]) 
          ),
          BottomBarItem(
            icon: Icon(Icons.search),
            title: Text(localizations.navbottonbarTitles[2]) 
          ),
        ],
        currentIndex: _currentBottomIndex,
        onTap: _indexSwapBottom,
      ),
    );
  }
}

final upcomingEventsProvider = Provider<List<dynamic>>((ref) {
  return []; 
});

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = ref.watch(localizationProvider);
    final upcomingEvents = ref.watch(upcomingEventsProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (upcomingEvents.isNotEmpty) ...[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                      child: Text(
                        'Предстоящие события',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: upcomingEvents.length,
                    itemBuilder: (context, index) {
                      final event = upcomingEvents[index];
                      return UpcomingEventCard(event: event);
                    },
                  ),
                ),
              ],
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                    child: Text(
                      localizations.plantCategory,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryes.length,
                  itemBuilder: (context, index) {
                    return ListCategory(
                      title: localizations.categotyTitles[index],
                      imagePath: categoryes[index].imagePath,
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                    child: Text(
                      localizations.popularPlants,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return ListPopular(
                      title: localizations.postsTitle[index],
                      imagePath: posts[index].imagePath,
                      category: localizations.category[index],
                      indexId: posts[index].id,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpcomingEventCard extends StatelessWidget {
  final CareEvent event;

  const UpcomingEventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    final icon = _getEventIcon(event.eventType);
    final title = _getEventTitle(event.eventType);
    final time = _formatTime(event.date);

    return Container(
      width: 200,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: _getEventColor(event.eventType),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  icon,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              event.plantName,
              style: TextStyle(fontSize: 12),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4),
            Text(
              time,
              style: TextStyle(fontSize: 11, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }

  String _getEventIcon(String eventType) {
    switch (eventType) {
      case 'watering':
        return '💧';
      case 'fertilizing':
        return '🌱';
      case 'repotting':
        return '🪴';
      default:
        return '📌';
    }
  }

  String _getEventTitle(String eventType) {
    switch (eventType) {
      case 'watering':
        return 'Полив';
      case 'fertilizing':
        return 'Подкормка';
      case 'repotting':
        return 'Пересадка';
      default:
        return 'Уход';
    }
  }

  String _formatTime(DateTime date) {
    return '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }

  Color _getEventColor(String eventType) {
    switch (eventType) {
      case 'watering':
        return Colors.blue[50]!;
      case 'fertilizing':
        return Colors.green[50]!;
      case 'repotting':
        return Colors.brown[50]!;
      default:
        return Colors.grey[50]!;
    }
  }
}