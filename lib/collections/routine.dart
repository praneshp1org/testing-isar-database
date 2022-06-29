//category, title, start time, day
//annotation
import 'package:isar/isar.dart';

@Collection()
class Routine {
  @Id()
  int routineId = Isar.autoIncrement;
  late String title;
  late DateTime startTime;
  late String day;
  late String category;
}
