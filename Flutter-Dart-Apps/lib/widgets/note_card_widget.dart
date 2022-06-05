import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/notes.dart';
import 'package:intl/intl.dart';

final _bdColor = [
  Colors.amber.shade200,
  Colors.lightBlue.shade200,
  Colors.lightGreen.shade200,
  Colors.orange.shade200,
  Colors.purple.shade200,
  Colors.pinkAccent.shade200,
];

class NoteCardWidget extends StatelessWidget {
  final Note note;
  final int index;
  const NoteCardWidget({Key? key, required this.note, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = _bdColor[index % _bdColor.length];
    final minHeight = getMinHeight(index);
    final time = DateFormat.yMMMd().format(note.createdTime);

    return Card(
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          constraints: BoxConstraints(minHeight: minHeight),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: TextStyle(color: Colors.grey.shade800),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                note.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
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
        return 100;
      default:
        return 100;
    }
  }
}
