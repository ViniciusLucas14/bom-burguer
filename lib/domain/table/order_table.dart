import 'package:drift/drift.dart';

class OrderTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get total => real()();
  RealColumn get subTotal => real()();
  RealColumn get discount => real()();
  DateTimeColumn get date => dateTime()();
}
