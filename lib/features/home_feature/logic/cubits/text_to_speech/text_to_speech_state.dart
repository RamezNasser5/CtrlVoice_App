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
