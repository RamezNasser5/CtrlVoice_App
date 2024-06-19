import 'package:ctrlvoice/core/routes/app_router.dart';
import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:ctrlvoice/features/home_feature/logic/cubits/assistant_ai/assistant_ai_cubit.dart';
import 'package:ctrlvoice/features/home_feature/logic/cubits/text_to_speech/text_to_speech_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: "assets/files/.env");
  runApp(const CtrlVoice());
}

class CtrlVoice extends StatelessWidget {
  const CtrlVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SpeechToTextBloc()),
        BlocProvider(create: (context) => AssistantAiCubit()),
        BlocProvider(create: (context) => TextToSpeechCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.routers,
      ),
    );
  }
}
