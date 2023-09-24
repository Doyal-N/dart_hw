import 'package:notify/notify.dart';
import 'package:notify/notify_content.dart';

void main(List<String> arguments) {
  NotificationContent text = NotificationContent.testInstance();
  Notification letter =
      Notification(type: 'sms', content: text, contact: '8922222', address: '');

  print(letter);
}
