import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class AnimatedText extends StatefulWidget {
  const AnimatedText({Key? key}) : super(key: key);

  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
     return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 20.0,
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        // totalRepeatCount: 30,
        animatedTexts: [
          WavyAnimatedText('facebook',textStyle: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
            speed: const Duration(milliseconds: 400),
          ),
        ],
        isRepeatingAnimation: true,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }
}
