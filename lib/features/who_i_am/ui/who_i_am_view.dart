import 'package:flutter/material.dart';

class WhoIAmView extends StatelessWidget {
  const WhoIAmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Who I Am?',
      )),
    );
  }
}
