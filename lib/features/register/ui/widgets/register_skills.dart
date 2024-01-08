import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../../../core/managers/colors_manager.dart';

class RegisterSkills extends StatelessWidget {
  const RegisterSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RegisterFormText('Skills'),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          height: 102.0,
          width: double.infinity,
          decoration: ShapeDecoration(
            color: ColorsManager.grey50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Wrap(children: [
            Chip(
              label: Text(
                'Video Production',
                style: StylesManager.textStyle12
                    .copyWith(color: ColorsManager.primary),
              ),
              backgroundColor: ColorsManager.primary100,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              deleteIconColor: ColorsManager.primary,
              onDeleted: (){},
              side: BorderSide.none,
              deleteIcon: const Icon(
                Icons.close,
                size: 12.0, 
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
