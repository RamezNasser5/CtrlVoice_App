import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:ctrlvoice/features/home_feature/ui/widgets/home_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _activePointers = 0;
  bool isListening = true;

  void _handlePointerDown(PointerDownEvent event) {
    setState(() {
      _activePointers++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Listener(
      onPointerDown: _handlePointerDown,
      child: GestureDetector(
        onPanUpdate: (_) {
          debugPrint(_activePointers.toString());
          if (_activePointers == 3) {
            if (isListening) {
              isListening = false;
              debugPrint('only one..........');
              BlocProvider.of<SpeechToTextBloc>(context)
                  .add(SpeechToTextStartEvent());
            }
          }
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
    ));
  }
}



// import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
// import 'package:ctrlvoice/features/home_feature/logic/cubits/assistant_ai/assistant_ai_cubit.dart';
// import 'package:ctrlvoice/features/home_feature/logic/cubits/text_to_speech/text_to_speech_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MaterialButton(
//               onPressed: () {
//                 BlocProvider.of<SpeechToTextBloc>(context)
//                     .add(SpeechToTextStartEvent());
//               },
//               child: const Text('Listen'),
//             ),
//             MaterialButton(
//               onPressed: () {
//                 BlocProvider.of<SpeechToTextBloc>(context)
//                     .add(SpeechToTextEndEvent());
//               },
//               child: const Text('Stop'),
//             ),
//             BlocBuilder<SpeechToTextBloc, SpeechToTextState>(
//               builder: (context, state) {
//                 if (state is SpeechToTextStartLoading ||
//                     state is SpeechToTextEndLoading) {
//                   return const CircularProgressIndicator();
//                 } else if (state is SpeechToTextStartSuccess) {
//                   return Text(state.message);
//                 } else if (state is SpeechToTextStartFailure) {
//                   return Text('Error: ${state.message}');
//                 } else if (state is SpeechToTextEndSuccess) {
//                   BlocProvider.of<AssistantAiCubit>(context)
//                       .processPrompt(state.message);
//                   return Text('Final Result: ${state.message}');
//                 } else if (state is SpeechToTextEndFailure) {
//                   return Text('Error: ${state.message}');
//                 } else {
//                   return const Text('Press the button to start listening');
//                 }
//               },
//             ),
//             BlocBuilder<AssistantAiCubit, AssistantAiState>(
//               builder: (context, state) {
//                 if (state is AssistantAiLoading) {
//                   return const CircularProgressIndicator();
//                 } else if (state is AssistantAiSuccess) {
//                   BlocProvider.of<TextToSpeechCubit>(context)
//                       .speakText(state.message);
//                   return Text(state.message);
//                 } else if (state is AssistantAiFailure) {
//                   return Text(state.message);
//                 } else {
//                   return const Text('wait for prompt');
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
