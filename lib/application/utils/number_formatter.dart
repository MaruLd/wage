import 'package:intl/intl.dart';

String pointFormat(int? point, int? point2, int? point3) {
  var temp = point! + point2! + point3!;
  if (point / 10000 > 1) {
    return NumberFormat.compact(locale: "en_US").format(temp);
  } else {
    return temp.toString();
  }
}
