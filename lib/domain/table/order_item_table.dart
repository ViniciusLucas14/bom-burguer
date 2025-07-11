import 'package:bom_hamburguer/domain/table/item_table.dart';
import 'package:bom_hamburguer/domain/table/order_table.dart';
import 'package:drift/drift.dart';

class OrderItemTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get quantity => integer().autoIncrement()();
  RealColumn get price => real()();
  IntColumn get itemId => integer().references(ItemTable, #id)();
  IntColumn get orderId => integer().references(OrderTable, #id)();
}
