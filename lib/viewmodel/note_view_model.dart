import 'package:mobx/mobx.dart';
import 'package:mobx_usage/model/note_model.dart';
part 'note_view_model.g.dart';

class NoteViewModel = _NoteViewModelBase with _$NoteViewModel;

abstract class _NoteViewModelBase with Store {
  @observable
  var noteList = ObservableList<Note>();

  @action
  void cleanNotes() => this.noteList.clear();

  @action
  void loadNotes() {
    cleanNotes();
    this.noteList
      ..add(
        Note(
          title: "İlk Not",
          dateTime: DateTime.now(),
          isPinned: false,
          isArchived: false,
        ),
      )
      ..add(
        Note(
          title: "İkinci Not",
          dateTime: DateTime.now(),
          isPinned: false,
          isArchived: false,
        ),
      );
  }

  @action
  void addRandomNote() {
    this.noteList.add(
          Note(
            title: "İlave Not",
            dateTime: DateTime.now(),
            isPinned: false,
            isArchived: false,
          ),
        );
  }
}
