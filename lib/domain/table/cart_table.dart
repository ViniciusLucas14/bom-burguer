import 'package:drift/drift.dart';

class CartTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  BoolColumn get isCombo => boolean()();
  TextColumn get name => text()();
  TextColumn get img => text()();

  RealColumn get total => real()();
  RealColumn get subTotal => real()();
  RealColumn get discount => real()();
  TextColumn get itemsList => text()();
  DateTimeColumn get date => dateTime()();
}
