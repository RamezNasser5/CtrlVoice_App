import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'speech_to_text_event.dart';
part 'speech_to_text_state.dart';

class SpeechToTextBloc extends Bloc<SpeechToTextEvent, SpeechToTextState> {
  SpeechToText speechToText = SpeechToText();
  String message = '';

  SpeechToTextBloc() : super(SpeechToTextInitial()) {
    on<SpeechToTextEvent>((event, emit) async {
      emit(SpeechToTextLoading());
      try {
        if (event is SpeechToTextStartEvent) {
          await speechToText.listen();
          message = speechToText.lastRecognizedWords;
        } else if (event is SpeechToTextEndEvent) {
          await speechToText.stop();
          message = speechToText.lastRecognizedWords;
        }
        emit(SpeechToTextSuccess(message: message));
      } catch (e) {
        emit(SpeechToTextFailure(message: e.toString()));
      }
    });
  }
}
