import 'package:ctrlvoice/core/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CtrlVoice());
}

class CtrlVoice extends StatelessWidget {
  const CtrlVoice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
    );
  }
}
