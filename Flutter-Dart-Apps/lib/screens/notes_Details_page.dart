import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/notes_database.dart';
import 'package:flutter_application_1/model/notes.dart';
import 'package:flutter_application_1/screens/add_edit_notes_page.dart';
import 'package:intl/intl.dart';

class NotesDetailsPage extends StatefulWidget {
  final int noteId;
  const NotesDetailsPage({Key? key, required this.noteId}) : super(key: key);
  @override
  State<NotesDetailsPage> createState() => _NotesDetailsPageState();
}

class _NotesDetailsPageState extends State<NotesDetailsPage> {
  late Note note;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    refreshNote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [editButton(), deleteButton()],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                Text(
                  note.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  DateFormat.yMMMd().format(note.createdTime),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(
                  note.description,
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
    note = await NotesDatabase.instance.readNote(widget.noteId);
    setState(() {
      isLoading = false;
    });
  }

  Widget editButton() {
    return IconButton(
      onPressed: () async {
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AddEditNotePage(note: note),
          ),
        );
        refreshNote();
      },
      icon: const Icon(Icons.edit),
    );
  }

  Widget deleteButton() {
    return IconButton(
      onPressed: () async {
        await NotesDatabase.instance.delete(widget.noteId);
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.delete),
    );
  }
}
