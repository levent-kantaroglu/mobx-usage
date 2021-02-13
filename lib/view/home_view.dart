import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_usage/viewmodel/note_view_model.dart';

import 'note_view.dart';

class HomeView extends StatelessWidget {
  final _noteViewModel = NoteViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      body: Observer(builder: (context) {
        return ListView.builder(
          itemCount: _noteViewModel.noteList.length,
          itemBuilder: (context, index) {
            return NoteView(_noteViewModel.noteList[index]);
          },
        );
      }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton(
              child: Text("Load"),
              onPressed: () => _noteViewModel.loadNotes(),
            ),
            RaisedButton(
              child: Text("Add Note"),
              onPressed: () => _noteViewModel.addRandomNote(),
            ),
          ],
        ),
      ),
    );
  }
}
