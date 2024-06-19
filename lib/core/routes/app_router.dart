import 'package:ctrlvoice/features/home_feature/logic/bloc/bloc/speech_to_text_bloc.dart';
import 'package:ctrlvoice/features/home_feature/ui/views/home_view.dart';
import 'package:ctrlvoice/features/splach_feature/ui/views/splach_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String khomeView = '/HomeView';

  static final GoRouter routers = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => BlocProvider(
          create: (context) => SpeechToTextBloc(),
          child: const HomeView(),
        ),
      ),
    ],
  );
}
