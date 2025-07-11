import 'package:bom_hamburguer/domain/table/type_item_table.dart';
import 'package:drift/drift.dart';

class ItemTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  RealColumn get price => real()();
  TextColumn get imagePath => text()();
  IntColumn get type => integer().references(TypeItemTable, #id)();
}
