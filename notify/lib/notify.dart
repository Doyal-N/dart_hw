import 'notify_content.dart';

class Notification {
  static const int periodOfLifeInHours = 24;
  final String type;
  final NotificationContent content;
  final String contact;
  final String? address;
  double? _price;

  double? get price => _price;
  set cost(String type) => _price = type == 'sms' ? 4.5 : 0;

  Notification(
      {required this.type,
      required this.content,
      required this.contact,
      required this.address});

  Notification.sms(
      {this.type = 'sms',
      required this.content,
      required this.contact,
      this.address = ''});

  Notification.test(
      {this.type = 'email',
      required this.content,
      this.contact = 'example@gcom',
      this.address = ''});

  void save() {
    print('$this was saved to database storage');
  }

  void remove() {
    print('$this was deleted');
  }

  @override
  String toString() {
    var flash = '''
      Это уведомление для $contact действует $periodOfLifeInHours часа.
      Тип: $type
      Важная информация о стоимости: $content
    ''';
    return flash;
  }
}
