import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/main.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final Map<DateTime, List> _events = {
    DateTime.utc(2025, 11, 22): ['2025'],
  };

  List<dynamic> _getEventsForDay(DateTime day) {
    return _events[day] ?? []; 
  }

  

  @override
  Widget build(BuildContext context) {
    
    final localizations = ref.watch(localizationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.sectionsTitles[1]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2025, 11, 1), 
              lastDay: DateTime.utc(2025, 12, 1),
              
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },

              eventLoader: (day) {
                return _getEventsForDay(day);
              },
              
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; 
                });
              },
            ),

            // Для текста
            
            if (_selectedDay != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [

                    RichText(text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: localizations.calendarLeng[0],
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: '${_selectedDay}',
                          style: TextStyle(
                            fontWeight: FontWeight.normal
                          )
                        ),
                      ]
                    )),
                    
                    SizedBox(height: 8),

                    RichText(text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: localizations.calendarLeng[1],
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: '${_getEventsForDay(_selectedDay!).join(", ")}',
                          style: TextStyle(
                            fontWeight: FontWeight.normal
                          )
                        ),
                      ]
                    ))
                  ],
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  localizations.calendarLeng[2],
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
          ] 
        ),
      ),
    );
  }
}