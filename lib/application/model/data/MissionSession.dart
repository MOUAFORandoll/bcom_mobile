class MissionSession {
  final int id;
  final String date_start;
  final String? date_end;

  MissionSession({
    required this.id,
    required this.date_start,
    this.date_end,
  });

  MissionSession.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        date_start = json['date_start'],
        date_end = json['date_end'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date_start': date_start,
      'date_end': date_end,
    };
  }
}
