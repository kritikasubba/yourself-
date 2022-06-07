import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:yourself/app/resources/colors.dart';
import 'package:yourself/app/resources/size_constants.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const _AppbarWidget(),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TextWidget2(
              text: 'Select a Date & Time',
            ),
            SBC.lH,
            const _TableCalendarContainer(),
            SBC.lH,
            _TextWidget(text: 'Saturday, March 2022'),
            SBC.lH,
            const _TimeContainer1(),
            SBC.xLH,
            const TimeContainer2(),
            SBC.lH,
            const Divider(),
            _TextWidget2(text: 'Booking Summary'),
            SBC.lH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Saturday,\n25 March 2022',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$2500',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SBC.lH,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  maximumSize: const Size(350, 50),
                  minimumSize: const Size(350, 50),
                  primary: primaryColor,
                ),
                onPressed: () {},
                child: Text('Select Payment'))
          ],
        ),
      )),
    );
  }
}

class _TextWidget2 extends StatelessWidget {
  String text;
  _TextWidget2({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TimeContainer2 extends StatelessWidget {
  const TimeContainer2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 105,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          decoration: const BoxDecoration(
            color: const Color(0xffF2FAF3),
            borderRadius: BorderRadius.all(Radius.circular(1)),
          ),
          child: Center(child: _TextWidget(text: '12:00 pm')),
        ),
        SBC.lW,
        Container(
          height: 60,
          width: 105,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          decoration: const BoxDecoration(
            color: const Color(0xffF2FAF3),
            borderRadius: BorderRadius.all(Radius.circular(1)),
          ),
          child: Center(child: _TextWidget(text: '12:30 am')),
        ),
        SBC.lW,
        Container(
          height: 60,
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          decoration: const BoxDecoration(
            color: Color(0xffF2FAF3),
            // border: Border.all(color: primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(1)),
          ),
          child: Center(child: _TextWidget(text: '01:00 pm')),
        ),
      ],
    );
  }
}

class _TimeContainer1 extends StatelessWidget {
  const _TimeContainer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 105,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          decoration: const BoxDecoration(
            color: const Color(0xffF2FAF3),
            borderRadius: BorderRadius.all(Radius.circular(1)),
          ),
          child: Center(child: _TextWidget(text: '9:40 am')),
        ),
        SBC.lW,
        Container(
          height: 60,
          width: 105,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          decoration: const BoxDecoration(
            color: const Color(0xffF2FAF3),
            borderRadius: BorderRadius.all(Radius.circular(1)),
          ),
          child: Center(child: _TextWidget(text: '10:40 am')),
        ),
        SBC.lW,
        Container(
          height: 60,
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          decoration: BoxDecoration(
            color: const Color(0xffF2FAF3),
            border: Border.all(color: primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(1)),
          ),
          child: Center(child: _TextWidget(text: '11:15 am')),
        ),
      ],
    );
  }
}

class _TextWidget extends StatelessWidget {
  String text;
  _TextWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(fontWeight: FontWeight.bold));
  }
}

class _AppbarWidget extends StatelessWidget {
  const _AppbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
        ])),
        const Icon(
          Icons.more_vert_outlined,
          color: Colors.black,
        )
      ],
    );
  }
}

class _TableCalendarContainer extends StatefulWidget {
  const _TableCalendarContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<_TableCalendarContainer> createState() =>
      _TableCalendarContainerState();
}

class _TableCalendarContainerState extends State<_TableCalendarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff5B8C5A), width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TableCalendar(
          calendarStyle: const CalendarStyle(
              todayDecoration: BoxDecoration(
                  shape: BoxShape.rectangle, color: Color(0xff5B8C5A))),
          daysOfWeekStyle: const DaysOfWeekStyle(
              weekendStyle: TextStyle(fontWeight: FontWeight.bold)),
          headerStyle: HeaderStyle(
            // headerPadding: const EdgeInsets.only(left: 1),
            leftChevronPadding: const EdgeInsets.only(left: 1),
            rightChevronPadding: const EdgeInsets.only(right: 1),
            leftChevronIcon: Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                )),
            rightChevronIcon: Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                )),
            titleCentered: true,
          ),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
        ),
      ),
    );
  }
}
