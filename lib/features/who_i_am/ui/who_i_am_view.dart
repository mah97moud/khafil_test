import 'package:flutter/material.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/who_i_am_body.dart';

class WhoIAmView extends StatelessWidget {
  const WhoIAmView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Who I Am?',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: WhoIAmBody(),
        ),
      ),
    );
  }
}
