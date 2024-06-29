import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'speech_to_text_event.dart';
part 'speech_to_text_state.dart';

class SpeechToTextBloc extends Bloc<SpeechToTextEvent, SpeechToTextState> {
  SpeechToText speechToText = SpeechToText();
  String message = '';

  SpeechToTextBloc() : super(SpeechToTextStartInitial()) {
    on<SpeechToTextEvent>((event, emit) async {
      if (event is SpeechToTextStartEvent) {
        emit(SpeechToTextStartLoading());
        try {
          bool available = await speechToText.initialize();
          if (available) {
            await speechToText.listen(onResult: (result) {
              message = result.recognizedWords;
              add(SpeechToTextResultEvent(message: message));
            });
          } else {
            emit(SpeechToTextStartFailure(
                message: 'Speech recognition not available'));
          }
        } catch (e) {
          emit(SpeechToTextStartFailure(message: 'Error: ${e.toString()}'));
        }
      } else if (event is SpeechToTextEndEvent) {
        emit(SpeechToTextEndLoading());
        try {
          await speechToText.stop();
          emit(SpeechToTextEndSuccess(message: message));
        } catch (e) {
          emit(SpeechToTextEndFailure(message: e.toString()));
        }
      } else if (event is SpeechToTextResultEvent) {
        emit(SpeechToTextStartSuccess(message: event.message));
      }
    });
  }
}
