import 'package:flutter/material.dart';
import 'package:moxey_move/constants/theme_constants.dart';

class LimitedTimeDealWidget extends StatefulWidget {
  const LimitedTimeDealWidget({super.key});

  @override
  State<LimitedTimeDealWidget> createState() => _LimitedTimeDealWidgetState();
}

class _LimitedTimeDealWidgetState extends State<LimitedTimeDealWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, -0.5),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      color: ThemeConstants.primaryGreen,
      child: Row(
        children: [
          SlideTransition(
            position: _offsetAnimation,
            child: Text('⚡️'),
          ),
          const Text(
            'Limited Time Deal',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
