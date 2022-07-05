import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:yourself/app/model/push_notification.dart';
import 'package:yourself/app/notification/notification_badge.dart';
import 'package:yourself/app/resources/size_constants.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late final FirebaseMessaging _messaging;
  late int _totalNotificationCounter;
  PushNotification? _notificationInfo;

  //register notification
  void registerNotification() async {
    await Firebase.initializeApp();

    //instance for firebase messaging
    _messaging = FirebaseMessaging.instance; //instance of messaging

    NotificationSettings settings = await _messaging.requestPermission(
      //setting grant ko lagi
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      //setting authorized vako cha ki chaina
      print('Granted successfully');

      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        //remote message is message from firebase
        PushNotification notification = PushNotification(
            //firebase bata aako message model mah save gareko
            body: message.notification!.body ?? "",
            dataBody: message.data['body'],
            dataTitle: message.data['title'],
            title: message.notification!.title ?? "");
        setState(() {
          _totalNotificationCounter++; //notification receive vayec notification counter increase
          _notificationInfo =
              notification; //remote server bata aako message(value) haru notificationinfo mah save gareko
        });

        if (notification != null) {
          //remote server bata recieve gareko message yeti null chaina vaneh notifaction badge dekhaune
          showSimpleNotification(Text(_notificationInfo!.title!),
              leading: NotificationBadge(
                  totalNotification: _totalNotificationCounter),
              subtitle: Text(_notificationInfo!.body!),
              background: Colors.teal,
              duration: const Duration(seconds: 10));
        }
      });
    } else {
      print('Permission declined by user');
    }
  }

  @override
  void initState() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {  //app ko baira notification show
       PushNotification notification = PushNotification(
            //firebase bata aako message model mah save gareko
            body: message.notification!.body ?? "",
            dataBody: message.data['body'],
            dataTitle: message.data['title'],
            title: message.notification!.title ?? "");
        setState(() {
          _totalNotificationCounter++; //notification receive vayec notification counter increase
          _notificationInfo =
              notification; //remote server bata aako message(value) haru notificationinfo mah save gareko
        });

    });
    registerNotification();
    _totalNotificationCounter = 0;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Push Notification'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   'Push Notification',
          //   style: Theme.of(context).textTheme.headline5,
          // ),
          SBC.lH,
         
          _notificationInfo != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '${_notificationInfo?.dataTitle ?? _notificationInfo!.title}',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SBC.lH,
                    Text(
                      '${_notificationInfo?.dataBody ?? _notificationInfo!.body}',
                      style: Theme.of(context).textTheme.bodyText2,
                    )
                  ],
                )
              : Container(),
               NotificationBadge(totalNotification: _totalNotificationCounter),
        ],
      )),
    );
  }
}
