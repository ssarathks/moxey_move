import 'package:flutter/material.dart';
import 'package:moxey_move/constants/theme_constants.dart';

class UsertypeSwitcher extends StatelessWidget {
  const UsertypeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    double borderRadius = 8;
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        double buttonWidth = (constraints.maxWidth / 2) -
            (ThemeConstants.scaffoldHorizontalPadding);
        return Placeholder(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                borderRadius,
              ),
              color: Colors.white,
            ),
            child: ToggleButtons(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              borderWidth: 0,
              renderBorder: false,
              onPressed: (int index) {},
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
              selectedColor: Colors.white,
              fillColor: ThemeConstants.primaryGreen,
              color: const Color.fromARGB(255, 153, 159, 172),
              constraints: BoxConstraints(
                minHeight: 30.0,
                minWidth: buttonWidth,
              ),
              isSelected: [true, false],
              children: [
                Text('Driver'),
                Text('Broker'),
              ],
            ),
          ),
        );
      }),
    );
  }
}
