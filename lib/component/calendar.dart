import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:fcalendar/const/colors.dart';

class MyCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;
  const MyCalendar({super.key, required this.onDaySelected, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      onDaySelected: onDaySelected,
      selectedDayPredicate: (date) {
        return date.year == selectedDate.year &&
            date.month == selectedDate.month &&
            date.day == selectedDate.day;
      },
      focusedDay: DateTime.now(),
      firstDay: DateTime(1800, 1, 1),
      lastDay: DateTime(3000, 1, 1),
      headerStyle: HeaderStyle(
        titleCentered: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        defaultDecoration: MyBoxDeco(COLOR_LIGHTGREY),
        selectedDecoration: MyBoxDeco(COLOR_PRIMARY),
        weekendDecoration: MyBoxDeco(COLOR_LIGHTGREY),
        defaultTextStyle: MyTextDeco(COLOR_DARKGREY),
        selectedTextStyle: MyTextDeco(COLOR_LIGHTGREY),
        weekendTextStyle: MyTextDeco(COLOR_DARKGREY),
      ),
    );
  }

  TextStyle MyTextDeco(var mycolor) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      color: mycolor,
    );
  }

  BoxDecoration MyBoxDeco(var mycolor) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(6.0),
      color: mycolor,
    );
  }
}
