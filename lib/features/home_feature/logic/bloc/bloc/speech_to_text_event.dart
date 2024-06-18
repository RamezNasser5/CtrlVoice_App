part of 'speech_to_text_bloc.dart';

sealed class SpeechToTextEvent {}

final class SpeechToTextInitialEvent extends SpeechToTextEvent {}

final class SpeechToTextStartEvent extends SpeechToTextEvent {}

final class SpeechToTextEndEvent extends SpeechToTextEvent {}
