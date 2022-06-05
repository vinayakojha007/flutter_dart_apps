import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/diaryinfo_database.dart';

import 'package:flutter_application_1/model/diaryinfo.dart';
import 'package:flutter_application_1/screens/diary_details_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:marquee_vertical/marquee_vertical.dart';
import 'package:flutter_application_1/widgets/dairy_card.dart';

class DiarysPage extends StatefulWidget {
  const DiarysPage({Key? key}) : super(key: key);
  @override
  State<DiarysPage> createState() => _DiarysPageState();
}

class _DiarysPageState extends State<DiarysPage> {
  late List<Diaryinfo> diaryinfos;
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
          'Diary',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : diaryinfos.isEmpty
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
              MaterialPageRoute(builder: (context) => AddDairyDetailsPage()),
            );
            refreshNotes();
          }),
    );
  }

  Widget buildNotes() => MasonryGridView.count(
        itemCount: diaryinfos.length,
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final diaryinfo = diaryinfos[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DiarysPage(),
                ),
              );
              refreshNotes();
            },
            //child: DiaryCardWidget(diaryinfo: diaryinfo, index: index)
          );
        },
      );
  Future refreshNotes() async {
    setState(() {
      isLoading = true;
    });
    diaryinfos = await DiaryInfoDatabase.instance.readAllNotes();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    DiaryInfoDatabase.instance.close();
    super.dispose();
  }
}
