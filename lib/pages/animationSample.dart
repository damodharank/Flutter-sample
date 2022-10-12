import 'package:flutter/material.dart';

class AnimationSamplePage extends StatelessWidget  {
  const AnimationSamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animation'),
        ),
        body: const Center(
         child: Text(
            'Go Back',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

void goBack(BuildContext context) {
  Navigator.pop(
    context
    );
}


