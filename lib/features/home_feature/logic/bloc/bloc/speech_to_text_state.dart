part of 'speech_to_text_bloc.dart';

abstract class SpeechToTextState {}

class SpeechToTextStartInitial extends SpeechToTextState {}

class SpeechToTextStartLoading extends SpeechToTextState {}

class SpeechToTextStartSuccess extends SpeechToTextState {
  final String message;

  SpeechToTextStartSuccess({required this.message});
}

class SpeechToTextStartFailure extends SpeechToTextState {
  final String message;

  SpeechToTextStartFailure({required this.message});
}

class SpeechToTextEndLoading extends SpeechToTextState {}

class SpeechToTextEndSuccess extends SpeechToTextState {
  final String message;

  SpeechToTextEndSuccess({required this.message});
}

class SpeechToTextEndFailure extends SpeechToTextState {
  final String message;

  SpeechToTextEndFailure({required this.message});
}

class SpeechToTextStopLoading extends SpeechToTextState {}

class SpeechToTextStopSuccess extends SpeechToTextState {}

class SpeechToTextStopFailure extends SpeechToTextState {
  final String message;

  SpeechToTextStopFailure({required this.message});
}
