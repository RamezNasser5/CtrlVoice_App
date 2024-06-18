import 'package:flutter/material.dart';

class SplachFinalComponent extends StatelessWidget {
  const SplachFinalComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.height * 0.1,
      ),
      child: Row(
        children: [
          Flexible(
            flex: 9,
            child: Container(
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff2F7694),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.01,
          ),
          Flexible(
            flex: 3,
            child: Container(
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFFFFFF),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.01,
          ),
          Flexible(
            flex: 2,
            child: Container(
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF5F5F5),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.01,
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF1EBEB),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
