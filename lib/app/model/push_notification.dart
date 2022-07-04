class PushNotification{
  final String title;
  final String body;
  final String dataTitle;
  final String dataBody;

  PushNotification({
    required this.body,
    required this.dataBody,
    required this.dataTitle,
    required this.title
  });

  factory PushNotification.fromJson(Map<String , dynamic> json) {
    return PushNotification(body: json['body'], dataBody: json['dataBody'], dataTitle: json['dataTitle'], title: json['title']);
  }
}