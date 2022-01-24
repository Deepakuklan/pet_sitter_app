import 'package:pet_sitter_app/calender/models/day.dart';
import 'package:pet_sitter_app/calender/service.dart';

class Controller {
  final _service = Service();
  final int? month;
  final int? year;

  late List<List<Day>> list;

  Controller({this.month, this.year}) {
    generate();
  }

  void generate() {
    list = _service.getDaysInMonth(month: month!, year: year!);
  }
}
