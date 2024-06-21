import 'package:ctrlvoice/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ListenSection extends StatelessWidget {
  const ListenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            MediaQuery.of(context).size.width * 0.05,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Listening...',
                style: Styles.voicesStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
