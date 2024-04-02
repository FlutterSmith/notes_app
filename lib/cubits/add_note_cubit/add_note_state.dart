part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

final class AddNoteInitial extends AddNoteState {
  AddNoteInitial();
}

final class AddNoteLoading extends AddNoteState {
  AddNoteLoading();
}

final class AddNoteSuccess extends AddNoteState {
  AddNoteSuccess();
}

final class AddNoteFailure extends AddNoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
