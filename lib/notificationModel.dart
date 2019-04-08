// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

NotificationModel notificationModelFromJson(String str) {
  final jsonData = json.decode(str);
  return NotificationModel.fromJson(jsonData);
}

String notificationModelToJson(NotificationModel data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class NotificationModel {
  Notification notification;
  Data data;

  NotificationModel({
    this.notification,
    this.data,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => new NotificationModel(
    notification: Notification.fromJson(json["notification"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "notification": notification.toJson(),
    "data": data.toJson(),
  };
}

class Data {
  String f;
  String i;
  String l;
  String r;
  String sound;
  String clickAction;

  Data({
    this.f,
    this.i,
    this.l,
    this.r,
    this.sound,
    this.clickAction,
  });

  factory Data.fromJson(Map<String, dynamic> json) => new Data(
    f: json["f"],
    i: json["i"],
    l: json["l"],
    r: json["r"],
    sound: json["sound"],
    clickAction: json["click_action"],
  );

  Map<String, dynamic> toJson() => {
    "f": f,
    "i": i,
    "l": l,
    "r": r,
    "sound": sound,
    "click_action": clickAction,
  };
}

class Notification {
  String body;
  String title;

  Notification({
    this.body,
    this.title,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => new Notification(
    body: json["body"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "body": body,
    "title": title,
  };
}
