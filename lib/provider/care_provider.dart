import 'package:flutter_riverpod/legacy.dart';
import 'package:my_first_app/models/care_event.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

final careProvider = StateNotifierProvider<CareNotifier, List<CareEvent>>((ref) {
  return CareNotifier();
});

class CareNotifier extends StateNotifier<List<CareEvent>> {
  static const String _storageKey = 'care_events';

  CareNotifier() : super([]) {
    _loadEvents();
  }

  Future<void> _loadEvents() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final eventsJson = prefs.getStringList(_storageKey) ?? [];
      final events = eventsJson
          .map((json) => CareEvent.fromMap(jsonDecode(json)))
          .toList();
      state = events;
    } catch (e) {
      state = [];
    }
  }

  Future<void> _saveEvents() async {
    final prefs = await SharedPreferences.getInstance();
    final eventsJson = state
        .map((event) => jsonEncode(event.toMap()))
        .toList();
    await prefs.setStringList(_storageKey, eventsJson);
  }

  void addEvent(CareEvent event) {
    state = [...state, event];
    _saveEvents();
  }

  void updateEvent(int index, CareEvent event) {
    final newEvents = List<CareEvent>.from(state);
    newEvents[index] = event;
    state = newEvents;
    _saveEvents();
  }

  void removeEvent(int index) {
    final newEvents = List<CareEvent>.from(state);
    newEvents.removeAt(index);
    state = newEvents;
    _saveEvents();
  }

  void toggleEventCompletion(int index) {
    final event = state[index];
    final updatedEvent = CareEvent(
      plantId: event.plantId,
      plantName: event.plantName,
      date: event.date,
      eventType: event.eventType,
      isCompleted: !event.isCompleted,
      notes: event.notes,
    );
    updateEvent(index, updatedEvent);
  }

  List<CareEvent> getEventsForDate(DateTime date) {
    return state.where((event) => 
      event.date.year == date.year &&
      event.date.month == date.month &&
      event.date.day == date.day
    ).toList();
  }

  List<CareEvent> getUpcomingEvents() {
    final now = DateTime.now();
    return state
        .where((event) => event.date.isAfter(now) || 
            event.date.year == now.year && 
            event.date.month == now.month && 
            event.date.day == now.day)
        .where((event) => !event.isCompleted)
        .toList();
  }
}