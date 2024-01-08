import 'package:flutter/material.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_about.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';
import 'package:khafil_test/features/register/ui/widgets/register_gender.dart';
import 'package:khafil_test/features/register/ui/widgets/register_salary.dart';
import 'package:khafil_test/features/register/ui/widgets/register_section.dart';
import 'package:khafil_test/features/register/ui/widgets/register_select_date.dart';
import 'package:khafil_test/features/register/ui/widgets/register_skills.dart';
import 'package:khafil_test/features/register/ui/widgets/register_stepper.dart';
import 'package:khafil_test/features/register/ui/widgets/select_avatar.dart';

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
        child: CustomScrollView(
          slivers: [
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
                  setState(() {
                    activeStep = index + 1;
                  });
                },
              ),
            if (activeStep == 2)
                const SliverToBoxAdapter(
                child: Column(
                  children: [
                    SelectAvatar(),
                    RegisterAbout(),
                    RegisterSalary(),
                    RegisterSelectDate(),
                    RegisterGender(),
                    RegisterSkills(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RegisterFormText('Favourite Social Media'),
                        Sizes.h16(),
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
