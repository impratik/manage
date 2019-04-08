import 'dart:async';
import 'dart:convert' show Encoding, json;
import 'package:http/http.dart' as http;

class PostCall {
  final postUrl = 'https://fcm.googleapis.com/fcm/send';

  final data = {
    "data": {
      "click_action": "FLUTTER_NOTIFICATION_CLICK",
      "TenantId": 14,
  "Endpoint": "Endpoint=sb: //superwise-v1.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=Cvdd3ZQ+debH1nATu3Yl5K4JRoC9QMmZJHwNSejA6wU=",
  "NotificationHub": "app",
  "RecordId": 164,
  "ProjectId": 1,
  "SentBy": "SuperWise Support",
  "ProjectName": "Northern Heights",
  "Text": null,
  "Icon": null,
  "Sound": null,
  "Link": "",
  "Reason": 7,
  "For": 1,
  "ReasonStr": "Rejection",
  "Users": "cQGvYxC73qQ:APA91bGGnH7GMAQVEZCMw9j6wHn1HtKeKjyspt0T-ZT_wxhzUCfK2ISxaNttCVc0FrBUeLUtHZfZ9hDvkqvaihVIS25cPFn-8dodc0L5iQ-IStAv49cPFPHp5KO3YkR9ZRSfvcNSnxsE"
    },
//    "to": "cQGvYxC73qQ:APA91bGGnH7GMAQVEZCMw9j6wHn1HtKeKjyspt0T-ZT_wxhzUCfK2ISxaNttCVc0FrBUeLUtHZfZ9hDvkqvaihVIS25cPFn-8dodc0L5iQ-IStAv49cPFPHp5KO3YkR9ZRSfvcNSnxsE"
  };

  Future<bool> makeCall() async {
    final headers = {
      'content-type': 'application/json',
      'Authorization': 'key= AIzaSyDVHmZ4tYObLxo1C9fp4rw2X9VDA5nP7rg'
    };

    final response = await http.post(postUrl,
        body: json.encode(data),
        encoding: Encoding.getByName('utf-8'),
        headers: headers);

    if (response.statusCode == 200) {
      // on success do sth
      return true;
    } else {
      // on failure do sth
      return false;
    }
  }
}