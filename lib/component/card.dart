import 'package:fcalendar/const/colors.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final int startTime;
  final int endTime;
  final String content;

  const MyCard(
      {super.key,
      required this.startTime,
      required this.endTime,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: COLOR_PRIMARY,
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IntrinsicHeight(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              _Time(
                startTime: startTime,
                endTime: endTime,
              ),
              SizedBox(
                width: 16.0,
              ),
              _Content(content: content),
              SizedBox(
                width: 16.0,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class _Time extends StatelessWidget {
  final int startTime;
  final int endTime;
  const _Time({super.key, required this.startTime, required this.endTime});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: COLOR_PRIMARY,
      fontSize: 16.0,
    );
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '${startTime.toString().padLeft(2, '0')}:00',
        style: textStyle,
      ),
      Text(
        '${endTime.toString().padLeft(2, '0')}:00',
        style: textStyle.copyWith(fontSize: 10.0),
      ),
    ]);
  }
}

class _Content extends StatelessWidget {
  final String content;
  const _Content({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(content),
    );
  }
}
