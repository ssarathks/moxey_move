import 'package:flutter/material.dart';
import 'package:moxey_move/constants/theme_constants.dart';

class LocationSwitcher extends StatelessWidget {
  const LocationSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: ThemeConstants.primaryGreen,
            ),
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(
                    Icons.location_on,
                    size: 40,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Al Mirath Tire Trading',
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                      ),
                      const Text(
                        "24°58'59. 55°12 - 38 - 2 شارع ١ - Dubai - United Arab Emirates",
                        maxLines: 2,
                        softWrap: true,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Change Location'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: ThemeConstants.primaryGreen,
                  ),
                  child: const Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
