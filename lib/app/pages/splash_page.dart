import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yourself/app/resources/size_constants.dart';
import 'package:yourself/app/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/cloud5_image.jpg'),
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
                  Positioned(top: 360, right: 40, child: _MiddleContainer()),
                ],
              ),
            ),
          ],
        ),
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
        RichText(
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
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                maximumSize: const Size(170, 50),
                minimumSize: const Size(170, 50),
                primary: const Color.fromARGB(195, 0, 169, 8)),
            onPressed: () {
              context.router.push(const NavbarRoute());
            },
            child: const Text('Take Your Photo')),
      ],
    );
  }
}
