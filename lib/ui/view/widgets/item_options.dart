import 'package:bom_hamburguer/enum/item_options_enum.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemOptions extends StatefulWidget {
  Function(ItemOptionEnum option) optionSelectedCallback;
  ItemOptions({super.key, required this.optionSelectedCallback});
  @override
  State<ItemOptions> createState() => _ItemOptionsState();
}

class _ItemOptionsState extends State<ItemOptions> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      labelType: NavigationRailLabelType.all,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
          if (index == 0) {
            widget.optionSelectedCallback(ItemOptionEnum.sandwich);
          } else if (index == 1) {
            widget.optionSelectedCallback(ItemOptionEnum.extras);
          }
        });
      },
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(Icons.fastfood),
          label: Text('Sandwiches'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.local_drink),
          label: Text('Extras'),
        ),
      ],
    );
  }
}
