// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetRoutineCollection on Isar {
  IsarCollection<Routine> get routines => getCollection();
}

const RoutineSchema = CollectionSchema(
  name: 'Routine',
  schema:
      '{"name":"Routine","idName":"routineId","properties":[{"name":"day","type":"String"},{"name":"startTime","type":"Long"},{"name":"title","type":"String"}],"indexes":[{"name":"day","unique":false,"properties":[{"name":"day","type":"Hash","caseSensitive":false}]},{"name":"startTime","unique":false,"properties":[{"name":"startTime","type":"Value","caseSensitive":false}]}],"links":[{"name":"category","target":"Category"}]}',
  idName: 'routineId',
  propertyIds: {'day': 0, 'startTime': 1, 'title': 2},
  listProperties: {},
  indexIds: {'day': 0, 'startTime': 1},
  indexValueTypes: {
    'day': [
      IndexValueType.stringHashCIS,
    ],
    'startTime': [
      IndexValueType.long,
    ]
  },
  linkIds: {'category': 0},
  backlinkLinkNames: {},
  getId: _routineGetId,
  setId: _routineSetId,
  getLinks: _routineGetLinks,
  attachLinks: _routineAttachLinks,
  serializeNative: _routineSerializeNative,
  deserializeNative: _routineDeserializeNative,
  deserializePropNative: _routineDeserializePropNative,
  serializeWeb: _routineSerializeWeb,
  deserializeWeb: _routineDeserializeWeb,
  deserializePropWeb: _routineDeserializePropWeb,
  version: 3,
);

int? _routineGetId(Routine object) {
  if (object.routineId == Isar.autoIncrement) {
    return null;
  } else {
    return object.routineId;
  }
}

void _routineSetId(Routine object, int id) {
  object.routineId = id;
}

List<IsarLinkBase> _routineGetLinks(Routine object) {
  return [object.category];
}

void _routineSerializeNative(
    IsarCollection<Routine> collection,
    IsarRawObject rawObj,
    Routine object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.day;
  final _day = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_day.length) as int;
  final value1 = object.startTime;
  final _startTime = value1;
  final value2 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value2);
  dynamicSize += (_title.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _day);
  writer.writeDateTime(offsets[1], _startTime);
  writer.writeBytes(offsets[2], _title);
}

Routine _routineDeserializeNative(IsarCollection<Routine> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Routine();
  object.day = reader.readString(offsets[0]);
  object.routineId = id;
  object.startTime = reader.readDateTime(offsets[1]);
  object.title = reader.readString(offsets[2]);
  _routineAttachLinks(collection, id, object);
  return object;
}

P _routineDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _routineSerializeWeb(
    IsarCollection<Routine> collection, Routine object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'day', object.day);
  IsarNative.jsObjectSet(jsObj, 'routineId', object.routineId);
  IsarNative.jsObjectSet(
      jsObj, 'startTime', object.startTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  return jsObj;
}

Routine _routineDeserializeWeb(
    IsarCollection<Routine> collection, dynamic jsObj) {
  final object = Routine();
  object.day = IsarNative.jsObjectGet(jsObj, 'day') ?? '';
  object.routineId =
      IsarNative.jsObjectGet(jsObj, 'routineId') ?? double.negativeInfinity;
  object.startTime = IsarNative.jsObjectGet(jsObj, 'startTime') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'startTime'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.title = IsarNative.jsObjectGet(jsObj, 'title') ?? '';
  _routineAttachLinks(
      collection,
      IsarNative.jsObjectGet(jsObj, 'routineId') ?? double.negativeInfinity,
      object);
  return object;
}

P _routineDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'day':
      return (IsarNative.jsObjectGet(jsObj, 'day') ?? '') as P;
    case 'routineId':
      return (IsarNative.jsObjectGet(jsObj, 'routineId') ??
          double.negativeInfinity) as P;
    case 'startTime':
      return (IsarNative.jsObjectGet(jsObj, 'startTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'startTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _routineAttachLinks(IsarCollection col, int id, Routine object) {
  object.category.attach(col, col.isar.categorys, 'category', id);
}

extension RoutineQueryWhereSort on QueryBuilder<Routine, Routine, QWhere> {
  QueryBuilder<Routine, Routine, QAfterWhere> anyRoutineId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Routine, Routine, QAfterWhere> anyDay() {
    return addWhereClauseInternal(const IndexWhereClause.any(indexName: 'day'));
  }

  QueryBuilder<Routine, Routine, QAfterWhere> anyStartTime() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'startTime'));
  }
}

extension RoutineQueryWhere on QueryBuilder<Routine, Routine, QWhereClause> {
  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdEqualTo(
      int routineId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: routineId,
      includeLower: true,
      upper: routineId,
      includeUpper: true,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdNotEqualTo(
      int routineId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: routineId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: routineId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: routineId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: routineId, includeUpper: false),
      );
    }
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdGreaterThan(
      int routineId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: routineId, includeLower: include),
    );
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdLessThan(
      int routineId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: routineId, includeUpper: include),
    );
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> routineIdBetween(
    int lowerRoutineId,
    int upperRoutineId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerRoutineId,
      includeLower: includeLower,
      upper: upperRoutineId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> dayEqualTo(String day) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'day',
      value: [day],
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> dayNotEqualTo(String day) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'day',
        upper: [day],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'day',
        lower: [day],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'day',
        lower: [day],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'day',
        upper: [day],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeEqualTo(
      DateTime startTime) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'startTime',
      value: [startTime],
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeNotEqualTo(
      DateTime startTime) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'startTime',
        upper: [startTime],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'startTime',
        lower: [startTime],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'startTime',
        lower: [startTime],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'startTime',
        upper: [startTime],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeGreaterThan(
    DateTime startTime, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'startTime',
      lower: [startTime],
      includeLower: include,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeLessThan(
    DateTime startTime, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'startTime',
      upper: [startTime],
      includeUpper: include,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterWhereClause> startTimeBetween(
    DateTime lowerStartTime,
    DateTime upperStartTime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'startTime',
      lower: [lowerStartTime],
      includeLower: includeLower,
      upper: [upperStartTime],
      includeUpper: includeUpper,
    ));
  }
}

extension RoutineQueryFilter
    on QueryBuilder<Routine, Routine, QFilterCondition> {
  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'day',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'day',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> dayMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'day',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'routineId',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'routineId',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'routineId',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> routineIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'routineId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> startTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'startTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Routine, Routine, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension RoutineQueryLinks
    on QueryBuilder<Routine, Routine, QFilterCondition> {
  QueryBuilder<Routine, Routine, QAfterFilterCondition> category(
      FilterQuery<Category> q) {
    return linkInternal(
      isar.categorys,
      q,
      'category',
    );
  }
}

extension RoutineQueryWhereSortBy on QueryBuilder<Routine, Routine, QSortBy> {
  QueryBuilder<Routine, Routine, QAfterSortBy> sortByDay() {
    return addSortByInternal('day', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByDayDesc() {
    return addSortByInternal('day', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByRoutineId() {
    return addSortByInternal('routineId', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByRoutineIdDesc() {
    return addSortByInternal('routineId', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByStartTime() {
    return addSortByInternal('startTime', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByStartTimeDesc() {
    return addSortByInternal('startTime', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension RoutineQueryWhereSortThenBy
    on QueryBuilder<Routine, Routine, QSortThenBy> {
  QueryBuilder<Routine, Routine, QAfterSortBy> thenByDay() {
    return addSortByInternal('day', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByDayDesc() {
    return addSortByInternal('day', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByRoutineId() {
    return addSortByInternal('routineId', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByRoutineIdDesc() {
    return addSortByInternal('routineId', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByStartTime() {
    return addSortByInternal('startTime', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByStartTimeDesc() {
    return addSortByInternal('startTime', Sort.desc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Routine, Routine, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }
}

extension RoutineQueryWhereDistinct
    on QueryBuilder<Routine, Routine, QDistinct> {
  QueryBuilder<Routine, Routine, QDistinct> distinctByDay(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('day', caseSensitive: caseSensitive);
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctByRoutineId() {
    return addDistinctByInternal('routineId');
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctByStartTime() {
    return addDistinctByInternal('startTime');
  }

  QueryBuilder<Routine, Routine, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }
}

extension RoutineQueryProperty
    on QueryBuilder<Routine, Routine, QQueryProperty> {
  QueryBuilder<Routine, String, QQueryOperations> dayProperty() {
    return addPropertyNameInternal('day');
  }

  QueryBuilder<Routine, int, QQueryOperations> routineIdProperty() {
    return addPropertyNameInternal('routineId');
  }

  QueryBuilder<Routine, DateTime, QQueryOperations> startTimeProperty() {
    return addPropertyNameInternal('startTime');
  }

  QueryBuilder<Routine, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }
}
