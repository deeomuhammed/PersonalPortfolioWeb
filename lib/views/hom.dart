import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:deeoweb/fixed.dart';
import 'package:flutter/material.dart';

class Top extends StatefulWidget {
  Top({Key? key}) : super(key: key);

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    bool hoverIndex = true;

    var height = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth, minHeight: height),
      child: Expanded(
          child: AspectRatio(
        aspectRatio: 3,
        child: Stack(fit: StackFit.expand, children: [
          const Image(
            image: AssetImage('assests/image/deeo.png'),
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(.78),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Muhammed DO',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                AnimatedText(),
                SizedBox(
                  height: 30,
                ),
                // Menu()
              ],
            ),
          )
        ]),
      )),
    );
  }
}

class space extends StatelessWidget {
  const space({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultPadding / 2,
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          fluttertext(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('I am a Passionate Flutter Developer'),
            TyperAnimatedText('My name is Muhammed ,Everyone calls me Deeo'),
            TyperAnimatedText('I am 20 years Old'),
            TyperAnimatedText(
                'I did various projects including Android, iOS, and the web'),
          ]),
          SizedBox(
            width: defaultPadding / 2,
          ),
          fluttertext(),
        ],
      ),
    );
  }
}

class fluttertext extends StatelessWidget {
  const fluttertext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: '<', children: [
      TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
      TextSpan(text: '>')
    ]));
  }
}
