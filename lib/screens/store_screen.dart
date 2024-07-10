import 'package:flutter/material.dart';
import 'package:moxey_move/widgets/common_scaffold.dart';
import 'package:moxey_move/widgets/scaffold_header.dart';
import 'package:moxey_move/widgets/trending_categories.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      showProfileAvatar: true,
      title: 'Store',
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Search bar"),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Image.asset('assets/images/main_banner.png'),
            ),
            const ScaffoldHeader(headerText: 'Trending Categories'),
            const TrendingCategories()
          ],
        ),
      ),
    );
  }
}
