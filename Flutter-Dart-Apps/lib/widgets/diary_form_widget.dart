import 'package:flutter/material.dart';

class DiaryFormWidget extends StatelessWidget {
  final String? title;
  final String? description;

  const DiaryFormWidget({
    Key? key,
    this.title = '',
    this.description = '',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildTitle(),
        const SizedBox(height: 8.0),
        buildDescription(),
        const SizedBox(height: 8.0),
        Row(
          children: [],
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
      );
}
