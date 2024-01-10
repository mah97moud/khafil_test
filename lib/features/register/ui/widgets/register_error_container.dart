import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/managers/register_cubit/register_cubit.dart';

class RegisterErrorContainer extends StatelessWidget {
  const RegisterErrorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 15.0,
        ),
        decoration: ShapeDecoration(
          color: const Color(0xFFFFF0ED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Row(children: [
          SvgPicture.asset(SvgsManager.info),
          const Sizes.w8(),
          BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              return Text(
                state.error ?? '',
                style: StylesManager.textStyle12.copyWith(
                  color: ColorsManager.error,
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
