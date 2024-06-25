import 'package:awesome_icons/awesome_icons.dart';
import 'package:ctrlvoice/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width * 0.8,
      ),
      child: GestureDetector(
        onTap: () => GoRouter.of(context).go(AppRouter.initialRoute),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const FittedBox(
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Color(0xff4093CE),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
