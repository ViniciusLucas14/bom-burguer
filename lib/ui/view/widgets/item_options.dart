import 'package:flutter/material.dart';

class ItemOptions extends StatefulWidget {
  const ItemOptions({super.key});

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
          debugPrint("FloatingActionButton pressed");
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
