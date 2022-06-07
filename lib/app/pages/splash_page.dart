import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yourself/app/resources/colors.dart';
import 'package:yourself/app/resources/size_constants.dart';
import 'package:yourself/app/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.black,
        image: DecorationImage(
            image: AssetImage('assets/images/Fashion10_image.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Stack(
                children: const [
                  Positioned(
                    bottom: -5,
                    left: 180,
                    child: _TextButtonWidget(),
                  ),
                  Positioned(top: 250, left: 10, child: _MiddleContainer()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextButtonWidget extends StatelessWidget {
  const _TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) => const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [primaryColor, Colors.red]).createShader(bounds),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          maximumSize: const Size(170, 50),
          minimumSize: const Size(170, 50),
          //primary: const Color(0xff5B8C5A)
        ),
        onPressed: () {
          context.router.push(const NavbarRoute());
        },
        child: Text('Take Your Photo',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Colors.black)),
      ),
    );
  }
}

class _MiddleContainer extends StatelessWidget {
  const _MiddleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) => const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [primaryColor, Colors.red]).createShader(bounds),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '   Take a Photo\n',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.white)),
                TextSpan(
                    text: 'by ',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white)),
                TextSpan(
                    text: 'yourself\n',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontStyle: FontStyle.italic)),
                TextSpan(
                    text: '              #1',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                const TextSpan(text: 'Self Studio in '),
                TextSpan(
                    text: 'Seoul',
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
