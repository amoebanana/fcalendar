import 'package:fcalendar/const/colors.dart';
import 'package:flutter/material.dart';

class TodayBanner extends StatelessWidget {
  final DateTime selectedDate;
  final int count;
  const TodayBanner({super.key, required this.selectedDate, required this.count});

  @override
  Widget build(BuildContext context) {
    final txtstyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    return Container(
      color: COLOR_PRIMARY,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${selectedDate.year}.${selectedDate.month}.${selectedDate.day}',
              style: txtstyle,
            ),
            Text(
              '$count',
              style: txtstyle,
            )
          ],
        )
      ),
    );
  }
}