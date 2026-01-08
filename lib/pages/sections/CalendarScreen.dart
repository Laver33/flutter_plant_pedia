import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/models/care_event.dart';
import 'package:my_first_app/provider/care_provider.dart';
import 'package:my_first_app/provider/plants_provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // ignore: unused_element
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

  // ignore: unused_element
  String _getEventTitle(String eventType, BuildContext context) {
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

  void _showAddEventDialog() {
    showDialog(
      context: context,
      builder: (context) => AddEventDialog(
        selectedDate: _selectedDay ?? DateTime.now(),
        onEventAdded: () => setState(() {}),
        ref: ref,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = ref.watch(localizationProvider);
    final careEvents = ref.watch(careProvider);
    
    final eventsForSelectedDay = _selectedDay != null
        ? ref.read(careProvider.notifier).getEventsForDate(_selectedDay!)
        : [];

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.sectionsTitles[1]),
        actions: [
          if (_selectedDay != null)
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _showAddEventDialog,
            ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() => _calendarFormat = format);
              },
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              eventLoader: (day) {
                return careEvents
                    .where((event) => isSameDay(event.date, day))
                    .map((event) => event.eventType)
                    .toList();
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                markerDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                markersAutoAligned: true,
                markerSize: 8,
              ),
            ),
            Expanded(
              child: _selectedDay == null
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          localizations.calendarLeng[2],
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            '${localizations.calendarLeng[0]}${DateFormat('dd.MM.yyyy').format(_selectedDay!)}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (eventsForSelectedDay.isEmpty)
                          Expanded(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    size: 64,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Событий на этот день нет',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        else
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.all(8),
                              itemCount: eventsForSelectedDay.length,
                              itemBuilder: (context, index) {
                                final event = eventsForSelectedDay[index];
                                return EventCard(
                                  event: event,
                                  index: index,
                                  onToggle: () {
                                    ref.read(careProvider.notifier)
                                        .toggleEventCompletion(index);
                                  },
                                  onDelete: () {
                                    ref.read(careProvider.notifier)
                                        .removeEvent(index);
                                  },
                                );
                              },
                            ),
                          ),
                      ],
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: _selectedDay != null
          ? FloatingActionButton(
              onPressed: _showAddEventDialog,
              child: Icon(Icons.add),
              backgroundColor: Colors.green,
            )
          : null,
    );
  }
}

class EventCard extends ConsumerWidget {
  final CareEvent event;
  final int index;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const EventCard({
    super.key,
    required this.event,
    required this.index,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final icon = _getEventIcon(event.eventType);
    final title = _getEventTitle(event.eventType, context);

    return Card(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      color: event.isCompleted ? Colors.grey[100] : Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _getEventColor(event.eventType),
          child: Text(
            icon,
            style: TextStyle(fontSize: 20),
          ),
        ),
        title: Text(
          '$title: ${event.plantName}',
          style: TextStyle(
            decoration: event.isCompleted
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('HH:mm').format(event.date),
              style: TextStyle(fontSize: 12),
            ),
            if (event.notes != null && event.notes!.isNotEmpty)
              Text(
                event.notes!,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(
                event.isCompleted
                    ? Icons.check_circle
                    : Icons.check_circle_outline,
                color: event.isCompleted ? Colors.green : Colors.grey,
              ),
              onPressed: onToggle,
            ),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: onDelete,
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

  String _getEventTitle(String eventType, BuildContext context) {
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

  Color _getEventColor(String eventType) {
    switch (eventType) {
      case 'watering':
        return Colors.blue[100]!;
      case 'fertilizing':
        return Colors.green[100]!;
      case 'repotting':
        return Colors.brown[100]!;
      default:
        return Colors.grey[100]!;
    }
  }
}

class AddEventDialog extends ConsumerStatefulWidget {
  final DateTime selectedDate;
  final VoidCallback onEventAdded;
  final WidgetRef ref;

  const AddEventDialog({
    super.key,
    required this.selectedDate,
    required this.onEventAdded,
    required this.ref,
  });

  @override
  ConsumerState<AddEventDialog> createState() => _AddEventDialogState();
}

class _AddEventDialogState extends ConsumerState<AddEventDialog> {
  final _formKey = GlobalKey<FormState>();
  final _notesController = TextEditingController();
  DateTime _selectedDateTime = DateTime.now();
  String _selectedEventType = 'watering';
  int? _selectedPlantId;
  String? _selectedPlantName;

  @override
  void initState() {
    super.initState();
    _selectedDateTime = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
      widget.selectedDate.day,
      DateTime.now().hour,
      DateTime.now().minute,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cartItems = widget.ref.read(plantsProvider);

    return AlertDialog(
      title: Text('Добавить событие'),
      content: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<int?>(
                value: _selectedPlantId,
                decoration: InputDecoration(
                  labelText: 'Растение',
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    value: null,
                    child: Text('Выберите растение'),
                  ),
                  ...cartItems.map((item) {
                    return DropdownMenuItem(
                      value: item.plant.id,
                      child: Text(item.plant.title),
                    );
                  }).toList(),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedPlantId = value;
                    if (value != null) {
                      final plant = cartItems
                          .firstWhere((item) => item.plant.id == value)
                          .plant;
                      _selectedPlantName = plant.title;
                    }
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Выберите растение';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedEventType,
                decoration: InputDecoration(
                  labelText: 'Тип события',
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    value: 'watering',
                    child: Row(
                      children: [
                        Icon(Icons.water_drop, color: Colors.blue),
                        SizedBox(width: 8),
                        Text('Полив'),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'fertilizing',
                    child: Row(
                      children: [
                        Icon(Icons.eco, color: Colors.green),
                        SizedBox(width: 8),
                        Text('Подкормка'),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'repotting',
                    child: Row(
                      children: [
                        Icon(Icons.landscape, color: Colors.brown),
                        SizedBox(width: 8),
                        Text('Пересадка'),
                      ],
                    ),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedEventType = value!;
                  });
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _notesController,
                decoration: InputDecoration(
                  labelText: 'Заметки (необязательно)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Отмена'),
        ),
        ElevatedButton(
          onPressed: _selectedPlantId == null
              ? null
              : () {
                  if (_formKey.currentState!.validate()) {
                    final event = CareEvent(
                      plantId: _selectedPlantId!,
                      plantName: _selectedPlantName!,
                      date: _selectedDateTime,
                      eventType: _selectedEventType,
                      notes: _notesController.text.isNotEmpty
                          ? _notesController.text
                          : null,
                    );

                    widget.ref.read(careProvider.notifier).addEvent(event);
                    widget.onEventAdded();
                    Navigator.pop(context);
                  }
                },
          child: Text('Добавить'),
        ),
      ],
    );
  }
}