import 'package:bom_hamburguer/models/item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Function(ItemModel item) onTap;
  Item(
    Key? key, {
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: LayoutBuilder(
        builder: (_, constraints) {
          return InkWell(
            onTap: () => {
              onTap(item),
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Hero(
                        tag: item.id,
                        child: Image.asset(
                          item.images,
                          width: constraints.maxWidth * 0.8,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  item.name,
                  maxLines: 1,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 18,
                    color: Color(0xFF222222),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.01,
                ),
                Text(
                  ' R\$${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF222222),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
