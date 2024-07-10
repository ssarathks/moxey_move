import 'package:flutter/material.dart';
import 'package:moxey_move/constants/theme_constants.dart';
import 'package:moxey_move/widgets/app_bar_cart_icon.dart';
import 'package:moxey_move/widgets/main_drawer.dart';
import 'package:moxey_move/widgets/profile_avatar_widget.dart';

class CommonScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final bool showProfileAvatar;
  const CommonScaffold({
    super.key,
    required this.title,
    required this.body,
    this.showProfileAvatar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          const AppBarCartIcon(),
          if (showProfileAvatar) const ProvileAvatarWidget(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: ThemeConstants.scaffoldHorizontalPadding,
        ),
        child: body,
      ),
      endDrawer: const MainDrawer(),
    );
  }
}
