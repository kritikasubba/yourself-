import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:yourself/app/pages/book_page.dart';
import 'package:yourself/app/resources/size_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yourself/localization/l10n.dart';
import 'package:yourself/localization/locale_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.appName,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
             Lottie.asset('assets/images/camera.json', height: 50),
              // const LanguagePicker(),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const StaggeredGridWidget(),
              const _TextWidget(),
              const _LastContainer(),
              SBC.lH,
              const ScrollImageWidget()
            ],
          ),
        ));
  }
}

// class LanguagePicker extends StatelessWidget {
//   const LanguagePicker({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<LocaleProvider>(context);
//     final locale = provider.locale ?? Locale('en');
//     return DropdownButtonHideUnderline(
//       child: DropdownButton(
//         value: locale,
//         icon: Container(
//           width: 0,
//         ),
//         items: L10n.all.map(
//           (locale) {
//             final flag = L10n.getFlag(locale.languageCode);

//             return DropdownMenuItem(
//               child: Center(
//                 child: Text(
//                   flag,
//                   style: TextStyle(fontSize: 12),
//                 ),
//               ),
//               value: locale,
//               onTap: () {
//                 final provider =
//                     Provider.of<LocaleProvider>(context, listen: false);

//                 provider.setLocale(locale);
//               },
//             );
//           },
//         ).toList(),
//         onChanged: (_) {},
//       ),
//     );
//   }
// }

class ScrollImageWidget extends StatelessWidget {
  const ScrollImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: RichText(
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
      ),
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
    ]);
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
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
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
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
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
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w700, color: const Color(0xff5B8C5A))),
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
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(text: 'Hi '),
                      TextSpan(
                        text: 'aesthetic people!\n',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      TextSpan(
                          text:
                              'Now you can take\nunlimited photos shots by\nyourself!'),
                    ])),
                    // child: Text(
                    //   '  Hi aesthetic People! \n  Now you can take\n  unlimited photos shots by\n  yourself!',
                    //   textAlign: TextAlign.justify,
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .bodyText2
                    //       ?.copyWith(color: Colors.white),
                    // ),
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
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => BookPage()));
                }),
                child: Text(AppLocalizations.of(context)!.bookNow,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700, color: Colors.white)),
              ))
        ]);
  }
}
