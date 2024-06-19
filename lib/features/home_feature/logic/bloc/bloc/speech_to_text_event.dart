part of 'speech_to_text_bloc.dart';

abstract class SpeechToTextEvent {}

class SpeechToTextStartEvent extends SpeechToTextEvent {}

class SpeechToTextEndEvent extends SpeechToTextEvent {}

class SpeechToTextResultEvent extends SpeechToTextEvent {
  final String message;

  SpeechToTextResultEvent({required this.message});
}
