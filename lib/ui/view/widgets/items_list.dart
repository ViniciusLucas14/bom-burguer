import 'package:bom_hamburguer/enum/item_options_enum.dart';
import 'package:bom_hamburguer/models/item_model.dart';
import 'package:bom_hamburguer/ui/view/widgets/item.dart';
import 'package:bom_hamburguer/ui/view/widgets/item_modal_bottom_sheet.dart';
import 'package:bom_hamburguer/ui/viewModel/item_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ItemsList extends StatefulWidget {
  ItemOptionEnum filterByOptionCallback;
  ItemsList({super.key, required this.filterByOptionCallback});
  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<ItemListViewModel>(context, listen: false)
          .fetchItemList(widget.filterByOptionCallback);
    });
  }

  @override
  void didUpdateWidget(covariant ItemsList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.filterByOptionCallback != widget.filterByOptionCallback) {
      Future.microtask(() {
        Provider.of<ItemListViewModel>(context, listen: false)
            .fetchItemList(widget.filterByOptionCallback);
      });
    }
  }

  itemSelected(ItemModel item) async {
    List<ItemModel> itemExtraListViewModel = [];

    if (item.type == ItemOptionEnum.sandwich.value) {
      itemExtraListViewModel =
          await Provider.of<ItemListViewModel>(context, listen: false)
              .fetchItemsExtraList();
    }

    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return ItemModalBottomSheet(
            item: item, extraItems: itemExtraListViewModel);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemListViewModel>(
      builder: (context, viewModel, child) {
        if (viewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (viewModel.errorMessage != null) {
          return Center(child: Text(viewModel.errorMessage!));
        } else if (viewModel.itemsList.isEmpty) {
          return const Center(child: Text('No items found.'));
        }
        return GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            viewModel.itemsList.length,
            (index) {
              final item = viewModel.itemsList[index];
              return Center(
                child: Item(
                  Key('item_$index'),
                  item: item,
                  onTap: itemSelected,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
