//category, title, start time, day
//annotation
import 'package:isar/isar.dart';

@Collection()
class Routine {
  @Id()
  int routineId = Isar.autoIncrement;
  late String title;

  @Index()
  late DateTime startTime;

  @Index(caseSensitive: false)
  late String day;
  @Index(composite: [CompositeIndex('title')]) //composite ndexing
  late String category;
}
