import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';
import 'package:khafil_test/features/register/ui/widgets/skill_chip.dart';

import '../../../../core/app/di.dart';
import '../../../../core/managers/colors_manager.dart';
import '../../managers/register_cubit/register_cubit.dart';

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
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ).copyWith(
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
          child: BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              final skills = state.skills;
              return SingleChildScrollView(
                child: Wrap(
                  spacing: 10.0,
                  children: tags
                      .map(
                        (e) => SkillChip(
                          title: e.label,
                          isSelected: skills.contains(e.value),
                          delete: () {
                            context.read<RegisterCubit>().removeSkill(e.value);
                          },
                          add: () {
                            context.read<RegisterCubit>().addSkill(e.value);
                          },
                        ),
                      )
                      .toList(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
