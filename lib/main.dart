import 'package:flutter/material.dart';
import 'package:moxey_move/constants/router_constants.dart';
import 'package:moxey_move/providers/products_provider.dart';
import 'package:moxey_move/providers/ui_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductsProvider(),
        ),
      ],
      child: Consumer<UiProvider>(builder: (context, uiModal, _) {
        return MaterialApp(
          theme: uiModal.currentThemeData,
          routes: RouterConstants.appRoutes,
          onGenerateRoute: RouterConstants.onGenerateRoute,
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
