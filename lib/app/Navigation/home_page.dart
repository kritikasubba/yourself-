import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:yourself/app/resources/size_constants.dart';
import 'package:yourself/app/routes/router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'yourself',
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
              const Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 30,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const StaggeredGridWidget(),
              SBC.lH,
              const _TextWidget(),
              const _LastContainer(),
              SBC.lH,
              const ScrollImageWidget()
            ],
          ),
        ));
  }
}

class ScrollImageWidget extends StatelessWidget {
  const ScrollImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Our ',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w400,
                  )),
          TextSpan(
              text: 'Recent \n',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
          TextSpan(
              text: 'Post',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        ])),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _ImageContainer(
                  imageName: 'assets/images/vogue_image.jpg',
                ),
                SBC.sW,
                _ImageContainer(
                  imageName: 'assets/images/fashion9_image.jpg',
                ),
                SBC.sW,
                _ImageContainer(
                  imageName: 'assets/images/fashion8_image.jpg',
                ),
                SBC.sW,
                _ImageContainer(
                  imageName: 'assets/images/fashion7_image.jpg',
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class _ImageContainer extends StatelessWidget {
  String imageName;
  _ImageContainer({
    required this.imageName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.asset(
        imageName,
        fit: BoxFit.cover,
      ),
    );
  }
}

class _LastContainer extends StatelessWidget {
  const _LastContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(1),
          ),
          border: Border.all(color: Colors.grey.shade200)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('04:00 PM',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.w500,
                    )),
            Text('Today, 06 June',
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.grey)),
          ]),
          const Icon(Icons.more_vert_outlined),
        ],
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'Booked ',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.w400,
                    )),
            TextSpan(
                text: 'List',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
          ])),
          Text('See All',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: const Color(0xff5B8C5A))),
        ],
      ),
    );
  }
}

class StaggeredGridWidget extends StatelessWidget {
  const StaggeredGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Center(
                    child: Text(
                      '  Hi aesthetic People! \n  Now you can take\n  unlimited photos shots by\n  yourself!',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: Colors.white),
                    ),
                  ))),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3.4,
              child: Image.asset('assets/images/fashion2_image.jpg',
                  fit: BoxFit.cover)),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Image.asset(
                'assets/images/fashion7_image.jpg',
                fit: BoxFit.cover,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff5B8C5A),
                ),
                onPressed: (() {
                  context.router.push(const BookRoute());
                }),
                child: Text('Book Now',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700, color: Colors.white)),
              ))
        ]);
  }
}
