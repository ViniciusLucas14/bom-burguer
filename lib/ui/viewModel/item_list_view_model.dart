import 'package:bom_hamburguer/domain/repository/item_repository.dart';
import 'package:bom_hamburguer/enum/item_options_enum.dart';
import 'package:bom_hamburguer/models/item_model.dart';
import 'package:flutter/material.dart';

class ItemListViewModel with ChangeNotifier {
  final ItemRepository _itemRepository = ItemRepository();

  List<ItemModel> _itemsList = [];
  List<ItemModel> get itemsList => _itemsList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> fetchItemList(ItemOptionEnum option) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final data = await _itemRepository.getItemsByOption(option);
      _itemsList = data;
    } catch (e) {
      _errorMessage = 'Failed to load items: $e';
      _itemsList = [];
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<List<ItemModel>> fetchItemsExtraList() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final data =
          await _itemRepository.getItemsByOption(ItemOptionEnum.extras);
      return data;
    } catch (e) {
      _errorMessage = 'Failed to load items: $e';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
    return [];
  }
}
