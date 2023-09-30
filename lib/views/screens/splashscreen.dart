import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/routes_utils.dart';

class splashscrren extends StatefulWidget {
  const splashscrren({Key? key}) : super(key: key);

  @override
  State<splashscrren> createState() => _splashscrrenState();
}

class _splashscrrenState extends State<splashscrren> {
  void changeScreen() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {});

    Timer.periodic(
      const Duration(seconds: 3),
      (tick) {
        Navigator.of(context).pushReplacementNamed(MyRoutes.homepage);
        tick.cancel();
      },
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Image.asset(
            "assets/bhagvad_gita.png",
          ),
          const Spacer(),
          const Spacer(),
          CircularProgressIndicator(
            backgroundColor: Colors.red.shade200,
          ),
          const Spacer(),
          const Text(
            "जय श्री कृष्ण!!",
            style: const TextStyle(fontSize: 20),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
