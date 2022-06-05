import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/diaryinfo_database.dart';
import 'package:flutter_application_1/model/diaryinfo.dart';
import 'package:flutter_application_1/widgets/diary_form_widget.dart';

class AddDairyDetailsPage extends StatefulWidget {
  final Diaryinfo? diaryinfo;
  const AddDairyDetailsPage({Key? key, this.diaryinfo}) : super(key: key);

  @override
  State<AddDairyDetailsPage> createState() => _AddDairyDetailsPageState();
}

class _AddDairyDetailsPageState extends State<AddDairyDetailsPage> {
  final _formKey = GlobalKey<FormState>();
  late String title;
  late String description;
  @override
  void initState() {
    super.initState();
    title = widget.diaryinfo?.title ?? '';
    description = widget.diaryinfo?.description ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [saveButton()],
      ),
      body: Form(
        key: _formKey,
        child: DiaryFormWidget(
          title: title,
          description: description,
        ),
      ),
    );
  }

  Widget saveButton() {
    final isFormValid = title.isNotEmpty && description.isNotEmpty;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () => add(),
        child: Icon(
          Icons.save,
          color: isFormValid ? Colors.blue : Colors.grey.shade900,
        ),
      ),
    );
  }

  void add() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      final isUpdating = widget.diaryinfo != null;
    }
    Navigator.of(context).pop();
  }

  Future addNote() async {
    final note = Diaryinfo(
        title: title, description: description, createdTime: DateTime.now());
    await DiaryInfoDatabase.instance.create(note);
  }
}
