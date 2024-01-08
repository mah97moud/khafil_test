import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';

class WithStepAvatar extends StatelessWidget {
  const WithStepAvatar({
    super.key,
  });

  @override 
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: ColorsManager.white,
      radius: 12.5,
      child: CircleAvatar(
        radius: 11.5,
        backgroundColor: Colors.white,
      ),
    );
  }
}
