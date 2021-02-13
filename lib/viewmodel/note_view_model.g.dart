// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NoteViewModel on _NoteViewModelBase, Store {
  final _$noteListAtom = Atom(name: '_NoteViewModelBase.noteList');

  @override
  ObservableList<Note> get noteList {
    _$noteListAtom.reportRead();
    return super.noteList;
  }

  @override
  set noteList(ObservableList<Note> value) {
    _$noteListAtom.reportWrite(value, super.noteList, () {
      super.noteList = value;
    });
  }

  final _$_NoteViewModelBaseActionController =
      ActionController(name: '_NoteViewModelBase');

  @override
  void cleanNotes() {
    final _$actionInfo = _$_NoteViewModelBaseActionController.startAction(
        name: '_NoteViewModelBase.cleanNotes');
    try {
      return super.cleanNotes();
    } finally {
      _$_NoteViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadNotes() {
    final _$actionInfo = _$_NoteViewModelBaseActionController.startAction(
        name: '_NoteViewModelBase.loadNotes');
    try {
      return super.loadNotes();
    } finally {
      _$_NoteViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addRandomNote() {
    final _$actionInfo = _$_NoteViewModelBaseActionController.startAction(
        name: '_NoteViewModelBase.addRandomNote');
    try {
      return super.addRandomNote();
    } finally {
      _$_NoteViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
noteList: ${noteList}
    ''';
  }
}
