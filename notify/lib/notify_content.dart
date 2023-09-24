class NotificationContent {
  static double systemCost = 4.5;
  final String text;
  final int pdu;
  final String lang;
  bool? spam;
  double _selfCost = 0;

  NotificationContent(
      {required this.text, required this.pdu, required this.lang});

  get myCost => _selfCost;
  set cost(double price) => {
        if (price < systemCost)
          {_selfCost = pdu * price}
        else
          {_selfCost = pdu * systemCost}
      };

  NotificationContent.testInstance(
      {this.lang = 'en', this.pdu = 3, this.text = 'first letter'});

  @override
  String toString() {
    var str = '''
      Язык сообщения: $lang
      Стоимость: $_selfCost
      Количество PDU - $pdu
    ''';
    return str;
  }
}
