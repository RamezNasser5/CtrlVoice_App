import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:ctrlvoice/features/home_feature/logic/cubits/text_to_speech/text_to_speech_cubit.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/home_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool onlyOne = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) {
          debugPrint('Swiping down');
          if (onlyOne) {
            BlocProvider.of<SpeechToTextBloc>(context)
                .add(SpeechToTextStartEvent());
            onlyOne = false;
          }
        },
        onPanEnd: (details) {
          debugPrint('Pointer up');
          BlocProvider.of<SpeechToTextBloc>(context)
              .add(SpeechToTextEndEvent());
          onlyOne = true;
        },
        onDoubleTap: () {
          debugPrint('Double tap');
          BlocProvider.of<TextToSpeechCubit>(context).stopSpeakText();
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff4093CE),
                Color(0xff9BCEF3),
              ],
            ),
          ),
          child: const HomeComponents(),
        ),
      ),
    );
  }
}
