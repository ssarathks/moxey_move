import 'package:flutter/material.dart';

class ProvileAvatarWidget extends StatelessWidget {
  const ProvileAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openDrawerHandler(context),
      child: const CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage('assets/images/profile.jpeg'),
      ),
    );
  }

  void _openDrawerHandler(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }
}
