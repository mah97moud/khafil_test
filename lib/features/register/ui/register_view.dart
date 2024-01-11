import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/extensions/context_ex.dart';
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

import '../../../core/routes/routes_manager.dart';
import '../../../core/routes/routes_names.dart';
import '../managers/register_cubit/register_cubit.dart';
import '../managers/stepper_cubit/stepper_cubit.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StepperCubit(),
      child: Scaffold(
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
              } else if (state.submissionStatus ==
                  SubmissionStatus.inProgress) {
                // TODO: Show Loading
              }
            },
            builder: (context, state) {
              var error = state.error;
              debugPrint('Current State: $state');
              return BlocBuilder<StepperCubit, int>(
                builder: (context, activeStep) {
                  return CustomScrollView(
                    slivers: [
                      if (error != null && error.isNotEmpty)
                        const RegisterErrorContainer(),
                      const SliverToBoxAdapter(
                        child: Sizes.h32(),
                      ),
                      const RegisterStepper(),
                      if (activeStep == 1) const RegisterSection(),
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
                              BlocConsumer<RegisterCubit, RegisterState>(
                                listener: (context, state) {
                                  if (state.submissionStatus ==
                                      SubmissionStatus.success) {
                                    debugPrint('Login Success');
                                    RoutesManager.pushReplacementNamed(
                                        RoutesNames.login);
                                    context.hideSnackBar();
                                  } else if (state.submissionStatus ==
                                      SubmissionStatus.error) {
                                    context.showSnackBar(state.error ?? '');
                                  } else if (state.submissionStatus ==
                                      SubmissionStatus.inProgress) {
                                    context.showLoadingSnackBar(
                                        'Login in progress...');
                                  }
                                },
                                builder: (context, state) {
                                  return DefaultBtn(
                                    'Submit',
                                    width: double.infinity,
                                    onPressed: () {
                                      context
                                          .read<RegisterCubit>()
                                          .submit();
                                    },
                                  );
                                },
                              ),
                              const Sizes.h84(),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
