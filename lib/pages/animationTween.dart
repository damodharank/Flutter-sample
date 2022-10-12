import 'package:flutter/material.dart';

class AnimationTweenPage extends StatefulWidget {
  const AnimationTweenPage({super.key});
  @override
  State<AnimationTweenPage> createState() => _AnimationTweenState();
}

class _AnimationTweenState extends State<AnimationTweenPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;
  late Animation _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, // the SingleTickerProviderStateMixin
        // duration: widget.duration,
        duration: Duration(seconds: 2));

    _colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.yellow).animate(_controller);
    _sizeAnimation =
        Tween<double>(begin: 1.0, end: 200.0).animate(_controller);

    // REBUILD THE SCREEN ONCE ANIMAITON DONE
    _controller.addListener(() {
      setState(() {});
    });

    // REPEAT THE ANIMATION
    _controller.repeat();

  }

  @override
  void didUpdateWidget(AnimationTweenPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // _controller.duration = widget.duration;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Animation Demo"),
      ),
       body: Center(  
        child: Container(
          height: _sizeAnimation.value,
          width: _sizeAnimation.value,
          color: _colorAnimation.value,
        ),
       ),
    );
  }
}

void goBack(BuildContext context) {
  Navigator.pop(context);
}
