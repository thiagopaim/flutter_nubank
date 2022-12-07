import 'package:intl/intl.dart';

final moneyParser = NumberFormat('#,##00.00', 'pt_BR');

class Format {
  static money(double amount) {
    return 'R\$ ${moneyParser.format(amount)}';
  }
}
