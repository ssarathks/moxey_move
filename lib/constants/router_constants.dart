import 'package:flutter/material.dart';
import 'package:moxey_move/screens/products_list_screen.dart';
import 'package:moxey_move/screens/tabbed_layout_screen.dart';

class RouterConstants {
  static Map<String, Widget Function(BuildContext)> appRoutes = {
    TabbedLayoutScreen.routeName: (context) => const TabbedLayoutScreen(),
    ProductsListScreen.routeName: (context) => const ProductsListScreen(),
  };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text(
                "404 Not Found",
              ),
            ),
          ),
        );
    }
  }
}
