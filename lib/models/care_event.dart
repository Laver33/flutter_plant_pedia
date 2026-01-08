class CareEvent {
  final int plantId;
  final String plantName;
  final DateTime date;
  final String eventType; // 'watering', 'fertilizing', 'repotting'
  final bool isCompleted;
  final String? notes;

  CareEvent({
    required this.plantId,
    required this.plantName,
    required this.date,
    required this.eventType,
    this.isCompleted = false,
    this.notes,
  });

  Map<String, dynamic> toMap() {
    return {
      'plantId': plantId,
      'plantName': plantName,
      'date': date.toIso8601String(),
      'eventType': eventType,
      'isCompleted': isCompleted ? 1 : 0,
      'notes': notes,
    };
  }

  static CareEvent fromMap(Map<String, dynamic> map) {
    return CareEvent(
      plantId: map['plantId'],
      plantName: map['plantName'],
      date: DateTime.parse(map['date']),
      eventType: map['eventType'],
      isCompleted: map['isCompleted'] == 1,
      notes: map['notes'],
    );
  }
}