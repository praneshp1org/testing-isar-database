//category, title, start time, day
//annotation
import 'package:isar/isar.dart';
import 'package:isar111/collections/category.dart';
part 'routine.g.dart';

@Collection()
class Routine {
  @Id()
  int routineId = Isar.autoIncrement;
  late String title;

  @Index()
  late DateTime startTime;

  @Index(caseSensitive: false) //caseSensitive Indexing
  late String day;

  @Index(composite: [CompositeIndex('title')]) //composite ndexing
  final category = IsarLink<Category>(); //Linking Collection
}
