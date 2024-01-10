import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/common/default_btn.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_about.dart';
import 'package:khafil_test/features/register/ui/widgets/register_error_container.dart';
import 'package:khafil_test/features/register/ui/widgets/register_fav_social_media.dart';
import 'package:khafil_test/features/register/ui/widgets/register_gender.dart';
import 'package:khafil_test/features/register/ui/widgets/register_salary.dart';
import 'package:khafil_test/features/register/ui/widgets/register_section.dart';
import 'package:khafil_test/features/register/ui/widgets/register_select_date.dart';
import 'package:khafil_test/features/register/ui/widgets/register_skills.dart';
import 'package:khafil_test/features/register/ui/widgets/register_stepper.dart';
import 'package:khafil_test/features/register/ui/widgets/select_avatar.dart';

import '../managers/cubit/register_cubit.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  int activeStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state.submissionStatus == SubmissionStatus.success) {
              // TODO: Navigate to Login
            } else if (state.submissionStatus == SubmissionStatus.error) {
              // TODO: Show Error
            } else if (state.submissionStatus == SubmissionStatus.submitting) {
              // TODO: Show Loading
            }
          },
          builder: (context, state) {
            final readRegisterCubit = context.read<RegisterCubit>();
            var error = state.error;
            debugPrint('Current State: $state');
            return CustomScrollView(
              slivers: [
                if (error != null && error.isNotEmpty) const RegisterErrorContainer(),
                const SliverToBoxAdapter(
                  child: Sizes.h32(),
                ),
                RegisterStepper(
                  activeStep: activeStep,
                  onStepReached: (index) {
                    debugPrint('Active Step: $index');
                    setState(() => activeStep = index);
                  },
                ),
                if (activeStep == 1)
                  RegisterSection(
                    activeStep: activeStep,
                    onStepReached: (index) {
                      if (readRegisterCubit.isFormValid) {
                        setState(() {
                          activeStep = index + 1;
                        });
                      }
                    },
                  ),
                if (activeStep == 2)
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const SelectAvatar(),
                        const RegisterAbout(),
                        const RegisterSalary(),
                        const RegisterSelectDate(),
                        const RegisterGender(),
                        const RegisterSkills(),
                        const RegisterFavSocialMedia(),
                        const Sizes.h32(),
                        DefaultBtn(
                          'Submit',
                          width: double.infinity,
                          onPressed: () {},
                        ),
                        const Sizes.h84(),
                      ],
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
