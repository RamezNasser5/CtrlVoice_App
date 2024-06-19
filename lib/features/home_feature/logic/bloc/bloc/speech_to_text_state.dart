part of 'speech_to_text_bloc.dart';

sealed class SpeechToTextState {}

final class SpeechToTextStartInitial extends SpeechToTextState {}

final class SpeechToTextStartLoading extends SpeechToTextState {}

final class SpeechToTextStartSuccess extends SpeechToTextState {
  final String message;

  SpeechToTextStartSuccess({required this.message});
}

final class SpeechToTextStartFailure extends SpeechToTextState {
  final String message;

  SpeechToTextStartFailure({required this.message});
}

final class SpeechToTextEndInitial extends SpeechToTextState {}

final class SpeechToTextEndLoading extends SpeechToTextState {}

final class SpeechToTextEndSuccess extends SpeechToTextState {
  final String message;

  SpeechToTextEndSuccess({required this.message});
}

final class SpeechToTextEndFailure extends SpeechToTextState {
  final String message;

  SpeechToTextEndFailure({required this.message});
}
