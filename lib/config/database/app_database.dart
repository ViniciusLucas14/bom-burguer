import 'dart:io';
import 'package:bom_hamburguer/domain/table/item_table.dart';
import 'package:bom_hamburguer/domain/table/order_item_table.dart';
import 'package:bom_hamburguer/domain/table/order_table.dart';
import 'package:bom_hamburguer/domain/table/type_item_table.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

/// Tables inside [tables] list
@DriftDatabase(tables: [ItemTable, TypeItemTable, OrderTable, OrderItemTable])

class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        m.createAll();
      },
      beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
        if (details.wasCreated) {
          await batch((batch) {
            batch.insertAll(typeItemTable, [
              //OPTIONS
              TypeItemTableCompanion.insert(
                id: const Value(1),
                name: 'Sadwich',
              ),
              TypeItemTableCompanion.insert(
                id: const Value(2),
                name: 'Extras',
              ),
            ]);
            batch.insertAll(itemTable, [
              ItemTableCompanion.insert(
                name: 'X Burguer',
                price: 5.00,
                imagePath: 'assets/images/xburguer.png',
                type: 1,
              ),
              ItemTableCompanion.insert(
                name: 'X Egg',
                price: 4.50,
                imagePath: 'assets/images/xegg.png',
                type: 1,
              ),
              ItemTableCompanion.insert(
                name: 'X Bacon',
                price: 7.00,
                imagePath: 'assets/images/xbacon.png',
                type: 1,
              ),
              //EXTRAS
              ItemTableCompanion.insert(
                name: 'Fries',
                price: 2.00,
                imagePath: 'assets/images/fries.png',
                type: 2,
              ),
              ItemTableCompanion.insert(
                name: 'Soft drink',
                price: 2.50,
                imagePath: 'assets/images/extras.png',
                type: 2,
              ),
            ]);
          });
        }
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // if (from == 1) {
        //   //TO DO
        // }
      },
    );
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }
    /// Make sqlite3 pick a more suitable location for temporary files - the
    /// one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    /// We can't access /tmp on Android, which sqlite3 would try by default.
    /// Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;
    return NativeDatabase.createInBackground(file);
  });
}
