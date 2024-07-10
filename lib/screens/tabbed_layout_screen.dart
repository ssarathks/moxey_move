import 'package:flutter/material.dart';
import 'package:moxey_move/providers/ui_provider.dart';
import 'package:moxey_move/screens/coming_soon_screen.dart';
import 'package:moxey_move/screens/store_screen.dart';
import 'package:provider/provider.dart';

class TabbedLayoutScreen extends StatefulWidget {
  static const routeName = '/';
  const TabbedLayoutScreen({super.key});

  @override
  State<TabbedLayoutScreen> createState() => _TabbedLayoutScreenState();
}

class _TabbedLayoutScreenState extends State<TabbedLayoutScreen> {
  final Map<int, Widget> _indexScreenMap = {
    0: const ComingSoonScreen(),
    1: const StoreScreen(),
    2: const ComingSoonScreen(),
    3: const ComingSoonScreen(),
    4: const ComingSoonScreen(),
  };
  int _currentScreenIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _indexScreenMap[_currentScreenIndex],
      bottomNavigationBar:
          Consumer<UiProvider>(builder: (context, uiModal, child) {
        return BottomNavigationBar(
          currentIndex: _currentScreenIndex,
          onTap: _changeScreenHandler,
          items: uiModal.bottomNavItems
              .map(
                (item) => BottomNavigationBarItem(
                  icon: item.icon,
                  label: item.title,
                ),
              )
              .toList(),
        );
      }),
    );
  }

  void _changeScreenHandler(int index) {
    setState(() {
      _currentScreenIndex = index;
    });
  }
}
