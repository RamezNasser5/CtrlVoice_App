import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:ctrlvoice/features/home_feature/logic/cubits/text_to_speech/text_to_speech_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class VoiceInteractionModel {
  static bool onlyOne = true;

  static startSpeacking(BuildContext context) {
    debugPrint('Swiping down');
    if (onlyOne) {
      BlocProvider.of<SpeechToTextBloc>(context).add(SpeechToTextStartEvent());
      onlyOne = false;
    }
  }

  static startAIProcessing(BuildContext context) {
    debugPrint('Pointer up');
    BlocProvider.of<SpeechToTextBloc>(context).add(SpeechToTextEndEvent());
    onlyOne = true;
  }

  static stopTextToSpeech(BuildContext context) {
    debugPrint('Double tap');
    BlocProvider.of<TextToSpeechCubit>(context).stopSpeakText();
  }
}
