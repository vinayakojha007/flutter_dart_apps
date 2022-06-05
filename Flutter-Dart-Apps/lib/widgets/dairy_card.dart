import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/diaryinfo.dart';
import 'package:intl/intl.dart';

final _bgColors = [
  Colors.amber.shade200,
  Colors.lightBlue.shade200,
  Colors.lightGreen.shade200,
  Colors.orange.shade200,
  Colors.purple.shade200,
  Colors.pinkAccent.shade200
];

class DiaryCardWidget extends StatelessWidget {
  final Diaryinfo diaryinfo;
  final int index;
  const DiaryCardWidget(
      {Key? key, required this.diaryinfo, required this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bgColor = _bgColors[index % _bgColors.length];
    //final minHeight = getMinHeight(index);
    final time = DateFormat.yMMMd().format(diaryinfo.createdTime);
    return Card(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: BoxConstraints(maxHeight: 30, maxWidth: 60),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: TextStyle(color: Colors.grey.shade800),
              ),
              const SizedBox(height: 4.0),
              Text(
                diaryinfo.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 75;
      default:
        return 100;
    }
  }
}
