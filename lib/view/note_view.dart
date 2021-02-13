import 'package:flutter/material.dart';
import 'package:mobx_usage/model/note_model.dart';

class NoteView extends StatelessWidget {
  final Note note;
  NoteView(this.note);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.5),
      child: ListTile(
        tileColor: Colors.grey.shade100,
        title: Text(this.note.title),
      ),
    );
  }
}
