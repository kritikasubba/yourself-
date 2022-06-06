import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (() {
                context.router.pop();
              }),
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Booking ',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.w400)),
              TextSpan(
                  text: 'Studio',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
            ])),
            const Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
