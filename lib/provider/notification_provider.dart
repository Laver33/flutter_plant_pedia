import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/provider/care_provider.dart';
import 'package:my_first_app/services/notification_service.dart';

final notificationProvider = Provider<NotificationService>((ref) {
  return NotificationService();
});

final notificationSchedulerProvider = Provider((ref) {
  final careEvents = ref.watch(careProvider);
  final notificationService = ref.watch(notificationProvider);
  
  for (final event in careEvents) {
    if (!event.isCompleted && event.date.isAfter(DateTime.now())) {
      notificationService.scheduleCareNotification(
        id: event.hashCode,
        title: _getNotificationTitle(event.eventType),
        body: 'Не забудьте ${_getNotificationAction(event.eventType)} растение "${event.plantName}"',
        scheduledDate: event.date,
      );
    }
  }
  
  return null;
});

String _getNotificationTitle(String eventType) {
  switch (eventType) {
    case 'watering':
      return '💧 Время полива';
    case 'fertilizing':
      return '🌱 Время подкормки';
    case 'repotting':
      return '🪴 Время пересадки';
    default:
      return '📌 Напоминание по уходу';
  }
}

String _getNotificationAction(String eventType) {
  switch (eventType) {
    case 'watering':
      return 'полить';
    case 'fertilizing':
      return 'подкормить';
    case 'repotting':
      return 'пересадить';
    default:
      return 'ухаживать за';
  }
}