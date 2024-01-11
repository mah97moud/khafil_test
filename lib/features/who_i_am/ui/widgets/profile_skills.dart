import 'package:flutter/material.dart';
import 'package:khafil_test/features/register/ui/widgets/skill_chip.dart';

import '../../../../core/app/di.dart';
import '../../../../core/managers/colors_manager.dart';
import '../../../../core/managers/styles_manager.dart';

class ProfileSkills extends StatelessWidget {
  const ProfileSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const Text(
          'Skills',
          style: StylesManager.textStyle12,
        ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 8.0,
          ),
          padding: const EdgeInsets.all(8.0),
          height: 125.0,
          width: double.infinity,
          decoration: ShapeDecoration(
            color: ColorsManager.grey50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 10.0,
              children: tags.map((e) => SkillChip(title: e.label)).take(5).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
