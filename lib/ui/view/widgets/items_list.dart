import 'package:bom_hamburguer/domain/repository/item_repository.dart';
import 'package:bom_hamburguer/models/item_model.dart';
import 'package:bom_hamburguer/ui/view/widgets/item.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({super.key});

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  Future<List<ItemModel>>? futureItems;
  final ItemRepository _itemRepository = ItemRepository();

  @override
  void initState() {
    super.initState();
    futureItems = _itemRepository.getAllItems();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ItemModel>>(
      future: futureItems,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No items found.'));
        }
        final items = snapshot.data!;
        return GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            items.length,
            (index) {
              final item = items[index];
              return Center(
                child: Item(
                  Key('item_$index'),
                  item: item,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
