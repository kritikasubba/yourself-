import 'package:flutter/material.dart';


class NotificationBadge extends StatelessWidget {
  final int totalNotification;
  const NotificationBadge({
    required this.totalNotification,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
decoration: const BoxDecoration(
  color: Colors.orange,
  shape: BoxShape.circle
),
child: Center(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('$totalNotification' , style: Theme.of(context).textTheme.bodyText2,),
  ),
),
    );
    
  }
}