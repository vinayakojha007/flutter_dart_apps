import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/notes_database.dart';
import 'package:flutter_application_1/model/notes.dart';
import 'package:flutter_application_1/screens/add_edit_notes_page.dart';
import 'package:flutter_application_1/screens/notes_Details_page.dart';
import 'package:flutter_application_1/widgets/note_card_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesPage extends StatefulWidget {
  final int noteId;
  const NotesPage({Key? key, required this.noteId}) : super(key: key);
  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late List<Note> notes;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    refreshNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : notes.isEmpty
                ? const Text(
                    'No Notes Added Yet',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  )
                : buildNotes(),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(Icons.add),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddEditNotePage()),
            );
            refreshNotes();
          }),
    );
  }

  Widget buildNotes() => MasonryGridView.count(
        itemCount: notes.length,
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final note = notes[index];
          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NotesDetailsPage(noteId: note.id!),
                ),
              );
              refreshNotes();
            },
            child: NoteCardWidget(note: note, index: index),
          );
        },
      );
  Future refreshNotes() async {
    setState(() {
      isLoading = true;
    });
    notes =
        (await NotesDatabase.instance.readNote(widget.noteId)) as List<Note>;
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    NotesDatabase.instance.close();
    super.dispose();
  }
}
