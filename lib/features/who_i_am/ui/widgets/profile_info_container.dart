import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/app_default_container.dart';
import 'package:khafil_test/features/common/sizes.dart';

import '../../../../core/managers/colors_manager.dart';

class ProfileInfoContainer extends StatelessWidget {
  const ProfileInfoContainer({
    super.key,
    required this.title,
    required this.name,
    this.trailing,
  });

  final String title;
  final String name;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: StylesManager.textStyle12,
        ),
        const Sizes.h8(),
        AppDefaultContainer(
          color: ColorsManager.grey50,
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: StylesManager.textStyle16,
                ),
              ),
              if (trailing != null) const Spacer(),
              if (trailing != null) trailing!,
            ],
          ),
        ),
      ],
    );
  }
}
