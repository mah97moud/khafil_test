import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/common/default_btn.dart';
import 'package:khafil_test/features/register/managers/register_cubit/register_cubit.dart';
import 'package:khafil_test/features/register/managers/stepper_cubit/stepper_cubit.dart';

class RegisterNextBtn extends StatelessWidget {
  const RegisterNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            final stepperStatus = state.stepperStatus;
            debugPrint('Current Stepper Status: $stepperStatus');
            if (state.stepperStatus == StepperStatus.next) {
              context.read<StepperCubit>().nextStep();
            }
          },
          builder: (context, state) =>
              state.submissionStatus == SubmissionStatus.validatingForm
                  ? const SizedBox(
                      width: 160.0,
                      height: 56.0,
                      child: CircularProgressIndicator(),
                    )
                  : DefaultBtn(
                      'Next',
                      width: 160.0,
                      onPressed: () {
                        var readRegisterCubit = context.read<RegisterCubit>();
                        // context.read<StepperCubit>().nextStep();

                        readRegisterCubit.onNextPressed();
                      },
                    ),
        ),
      ],
    );
  }
}
