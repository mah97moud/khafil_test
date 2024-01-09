import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_confirm_password.dart';
import 'package:khafil_test/features/register/ui/widgets/register_email.dart';
import 'package:khafil_test/features/register/ui/widgets/register_first_name.dart';
import 'package:khafil_test/features/register/ui/widgets/register_last_name.dart';
import 'package:khafil_test/features/register/ui/widgets/register_password.dart';
import 'package:khafil_test/features/register/ui/widgets/register_user_type.dart';

import '../../../common/default_btn.dart';
import '../../managers/cubit/register_cubit.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({
    super.key,
    this.onStepReached,
    required this.activeStep,
  });

  final void Function(int activeStep)? onStepReached;
  final int activeStep;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const Sizes.h32(),
                const Row(
                  children: [
                    RegisterFirstName(),
                    RegisterLastName(),
                  ],
                ),
                const RegisterEmail(),
                const Sizes.h8(),
                const RegisterPassword(),
                const Sizes.h8(),
                const RegisterConfirmPassword(),
                const Sizes.h8(),
                const RegisterUserType(),
                const Sizes.h56(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultBtn(
                      'Next',
                      width: 160.0,
                      onPressed: () {
                        onStepReached?.call(activeStep);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
