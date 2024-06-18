part of 'speech_to_text_bloc.dart';

sealed class SpeechToTextState {}

final class SpeechToTextInitial extends SpeechToTextState {}

final class SpeechToTextLoading extends SpeechToTextState {}

final class SpeechToTextSuccess extends SpeechToTextState {
  final String message;

  SpeechToTextSuccess({required this.message});
}

final class SpeechToTextFailure extends SpeechToTextState {
  final String message;

  SpeechToTextFailure({required this.message});
}
