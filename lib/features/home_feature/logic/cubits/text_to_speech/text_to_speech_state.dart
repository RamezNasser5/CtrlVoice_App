part of 'text_to_speech_cubit.dart';

@immutable
sealed class TextToSpeechState {}

final class TextToSpeechInitial extends TextToSpeechState {}

final class TextToSpeechLoading extends TextToSpeechState {}

final class TextToSpeechSuccess extends TextToSpeechState {}

final class TextToSpeechFailure extends TextToSpeechState {
  final String message;

  TextToSpeechFailure({required this.message});
}

final class TextToStopSpeechInitial extends TextToSpeechState {}

final class TextToStopSpeechLoading extends TextToSpeechState {}

final class TextToStopSpeechSuccess extends TextToSpeechState {}

final class TextToStopSpeechFailure extends TextToSpeechState {
  final String message;

  TextToStopSpeechFailure({required this.message});
}
