import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/managers/stepper_cubit/stepper_cubit.dart';
import 'package:khafil_test/features/register/ui/widgets/register_confirm_password.dart';
import 'package:khafil_test/features/register/ui/widgets/register_email.dart';
import 'package:khafil_test/features/register/ui/widgets/register_first_name.dart';
import 'package:khafil_test/features/register/ui/widgets/register_last_name.dart';
import 'package:khafil_test/features/register/ui/widgets/register_password.dart';
import 'package:khafil_test/features/register/ui/widgets/register_user_type.dart';

import '../../../common/default_btn.dart';
import '../../managers/register_cubit/register_cubit.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({
    super.key,
  });

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
                    BlocListener<RegisterCubit, RegisterState>(
                      listener: (context, state) {
                        final stepperStatus = state.stepperStatus;
                        debugPrint('Current Stepper Status: $stepperStatus');
                        if (state.stepperStatus == StepperStatus.next) {
                          context.read<StepperCubit>().nextStep();
                        }
                      },
                      child: state.submissionStatus ==
                              SubmissionStatus.validatingForm
                          ? const SizedBox(
                              width: 160.0,
                              height: 56.0,
                              child: CircularProgressIndicator(),
                            )
                          : DefaultBtn(
                              'Next',
                              width: 160.0,
                              onPressed: () {
                                var readRegisterCubit =
                                    context.read<RegisterCubit>();

                                readRegisterCubit.onNextPressed();
                              },
                            ),
                    ),
                  ],
                ),
                const Sizes.h32(),
              ],
            ),
          );
        },
      ),
    );
  }
}
