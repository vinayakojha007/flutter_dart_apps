import 'package:flutter/material.dart';

class NoteFormWidget extends StatelessWidget {
  final bool? isImportant;
  final int? priorityLevel;
  final String? title;
  final String? description;

  final ValueChanged<bool> onChangredImportant;
  final ValueChanged<int> onChangredPriorityLevel;
  final ValueChanged<String> onChangredTitle;
  final ValueChanged<String> onChangredDescription;

  const NoteFormWidget({
    Key? key,
    this.isImportant = false,
    this.priorityLevel = 0,
    this.title = '',
    this.description = '',
    required this.onChangredImportant,
    required this.onChangredPriorityLevel,
    required this.onChangredTitle,
    required this.onChangredDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildTitle(),
        const SizedBox(height: 8.0),
        Row(
          children: [
            const Text(
              'Is Important ?',
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Switch(value: isImportant ?? false, onChanged: onChangredImportant),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            const Text(
              'Priority Level :',
              style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            Expanded(
              child: Slider(
                min: 0,
                max: 5,
                value: (priorityLevel ?? 0).toDouble(),
                onChanged: (priorityLevel) =>
                    onChangredPriorityLevel(priorityLevel.toInt()),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget buildTitle() => TextFormField(
        maxLines: 1,
        initialValue: title,
        style: const TextStyle(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 24.0),
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Title',
            hintStyle: TextStyle(color: Colors.white60)),
        validator: (title) =>
            title != null && title.isEmpty ? 'Title cannot be empty' : null,
        onChanged: onChangredTitle,
      );

  Widget buildDescription() => TextFormField(
        maxLines: 5,
        initialValue: description,
        style: const TextStyle(
            color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 24.0),
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Description',
            hintStyle: TextStyle(color: Colors.white60)),
        validator: (description) => description != null && description.isEmpty
            ? 'Description cannot be empty'
            : null,
        onChanged: onChangredDescription,
      );
}
