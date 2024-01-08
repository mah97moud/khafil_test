import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';

class SelectAvatar extends StatelessWidget {
  const SelectAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 41.5,
          backgroundColor: ColorsManager.primary,
          child: CircleAvatar(
            radius: 40.5,
            backgroundColor: ColorsManager.white,
            backgroundImage: AssetImage(ImagesManager.avatar),
          ),
        ),
        CircleAvatar(
          radius: 12.5,
          backgroundColor: ColorsManager.primary,
          child: Icon(
            Icons.add,
            size: 15.0,
            color: ColorsManager.white,
          ),
        ),
      ],
    );
  }
}
