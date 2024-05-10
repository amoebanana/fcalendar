import 'package:flutter/material.dart';
import 'package:fcalendar/component/calendar.dart';
import 'package:fcalendar/component/card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyCalendar(
              selectedDate: selectedDate,
              onDaySelected: onDaySelected,
            ),
            const MyCard(
              content: 'Meeting with client11345',
              startTime: 12,
              endTime: 15,
            ),
          ]
        )
      ),
    );
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDate = selectedDay;
    });
  }
}