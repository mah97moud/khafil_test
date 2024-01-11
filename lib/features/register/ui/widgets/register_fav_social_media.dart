import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_custom_checkbox.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../managers/register_cubit/register_cubit.dart';

class RegisterFavSocialMedia extends StatelessWidget {
  const RegisterFavSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        final socialMedia = state.socials;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RegisterFormText('Favorite Social Media'),
            const Sizes.h16(),
            RegisterCustomCheckbox(
              assetSvg: SvgsManager.facebook,
              value: socialMedia.contains('facebook'),
              title: 'Facebook',
              onChanged: (selected) {
                if (selected == true) {
                  context.read<RegisterCubit>().addSocial('facebook');
                } else {
                  context.read<RegisterCubit>().removeSocial('facebook');
                }
              },
            ),
            RegisterCustomCheckbox(
              assetSvg: SvgsManager.twitter,
              value: socialMedia.contains('x'),
              title: 'X',
               onChanged: (selected ){
                if (selected == true) {
                  context.read<RegisterCubit>().addSocial('x');
                } else {
                  context.read<RegisterCubit>().removeSocial('x');
                }
               },
            ),
            RegisterCustomCheckbox(
              assetSvg: SvgsManager.linkedin,
              value: socialMedia.contains('linkedin'),
              icon: Container(
                height: 20.0,
                width: 20.0,
                alignment: Alignment.center,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: ColorsManager.linkedinBg,
                ),
                child: SvgPicture.asset(
                  SvgsManager.linkedin,
                  fit: BoxFit.cover,
                ),
              ),
              title: 'LinkedIn',
              onChanged: (selected) {
                if (selected == true) {
                  context.read<RegisterCubit>().addSocial('linkedin');
                } else {
                  context.read<RegisterCubit>().removeSocial('linkedin');
                }
              },
            ),
          ],
        );
      },
    );
  }
}
