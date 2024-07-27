import 'package:flutter/material.dart';

class CommonTabAnimationView extends StatefulWidget {
  final Function onTab;
  final Widget child;
  final bool isDelayed;

  const CommonTabAnimationView({
    super.key,
    required this.child,
    required this.onTab,
    this.isDelayed = false,
  });

  @override
  CommonTabAnimationViewState createState() => CommonTabAnimationViewState();
}

class CommonTabAnimationViewState extends State<CommonTabAnimationView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 100,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1 - _controller.value,
      child: GestureDetector(
        onTap: () async {
          await _controller.forward().then((value) => _controller.reverse());
          if (widget.isDelayed) {
            await Future.delayed(const Duration(milliseconds: 195));
          }
          widget.onTab();
        },
        onLongPress: () async {
          await _controller.forward().then((value) => _controller);
          if (widget.isDelayed) {
            await Future.delayed(const Duration(milliseconds: 195));
          }
        },
        onLongPressEnd: (_) async {
          await _controller.reverse();
        },
        child: widget.child,
      ),
    );
  }
}
