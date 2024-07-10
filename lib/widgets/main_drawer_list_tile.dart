import 'package:flutter/material.dart';
import 'package:moxey_move/models/ui/drawer_list_item.dart';

class MainDrawerListTile extends StatelessWidget {
  final DrawerListItem item;
  const MainDrawerListTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    const Color textColor = Color.fromARGB(204, 255, 255, 255);
    return InkWell(
      onTap: () {},
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        leading: Icon(
          item.iconData,
          color: textColor,
        ),
        title: Text(
          item.title,
          style: const TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: item.hasInternalNavigation
            ? const Icon(
                Icons.chevron_right_outlined,
                color: textColor,
              )
            : null,
      ),
    );
  }
}
