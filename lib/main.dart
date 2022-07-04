import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:yourself/app/pages/splash_page.dart';
import 'package:yourself/localization/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
 import 'package:firebase_core/firebase_core.dart';

 Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'localization';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
       
          debugShowCheckedModeBanner: false,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate, // access all diff translation by gen file
            GlobalMaterialLocalizations
                .delegate, //translation of material widget inside
            GlobalCupertinoLocalizations
                .delegate, //to listen local localization delegation
            GlobalWidgetsLocalizations.delegate
          ],
          home: const SplashPage()),
    );
  }
}
