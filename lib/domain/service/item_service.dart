import 'package:bom_hamburguer/config/database/app_database.dart';

class ItemService {
  final AppDatabase _db = AppDatabase();
  ItemService();
  Future<List<ItemTableData>> getAllItems() async {
    return (await _db.select(_db.itemTable).get()).toList();
  }
}
