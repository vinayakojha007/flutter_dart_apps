import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/diaryinfo_database.dart';
import 'package:flutter_application_1/model/diaryinfo.dart';
import 'package:flutter_application_1/screens/diary_details_screen.dart';
import 'package:intl/intl.dart';

class NotesDetailsPage extends StatefulWidget {
  final int noteId;
  const NotesDetailsPage({Key? key, required this.noteId}) : super(key: key);
  @override
  State<NotesDetailsPage> createState() => _NotesDetailsPageState();
}

class _NotesDetailsPageState extends State<NotesDetailsPage> {
  late Diaryinfo diaryinfo;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    refreshNote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                Text(
                  diaryinfo.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  DateFormat.yMMMd().format(diaryinfo.createdTime),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  diaryinfo.description,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
    );
  }

  Future refreshNote() async {
    setState(() {
      isLoading = true;
    });
    diaryinfo = await DiaryInfoDatabase.instance.readNote(widget.noteId);
    setState(() {
      isLoading = false;
    });
  }
}
