import 'package:ctrlvoice/core/routes/app_router.dart';
import 'package:ctrlvoice/features/splach_feature/ui/widgets/splach_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    navigatToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplachViewBody(),
    );
  }

  void navigatToHome(context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).go(AppRouter.khomeView),
    );
  }
}
