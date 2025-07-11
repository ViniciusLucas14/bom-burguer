import 'package:drift/drift.dart';

class TypeItemTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
