import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.grey],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.colorDodge,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/intropic.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
