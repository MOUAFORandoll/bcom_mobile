class MissionSession {
  final int id;
  final String date_start;
  final String? date_end;
  final bool? end_mission;

  MissionSession(
      {required this.id,
      required this.date_start,
      this.date_end,
      this.end_mission});

  MissionSession.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        date_start = json['date_start'],
        date_end = json['date_end'],
        end_mission = json['end_mission'] ?? false;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date_start': date_start,
      'date_end': date_end,
      'end_mission': end_mission,
    };
  }
}
