import 'package:flutter/material.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_field.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';
import 'package:khafil_test/features/register/ui/widgets/register_stepper.dart';

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
            const SliverToBoxAdapter(
              child: Sizes.h32(),
            ),
            if(activeStep == 1)
            const SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RegisterFormText(
                                'First Name',
                              ),
                              RegisterFormField(),
                            ],
                          ),
                        ),
                        Expanded( 
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RegisterFormText(
                                'Last Name',
                              ),
                              RegisterFormField(),
                            ],
                          ),
                        ),
                      ],
                    )
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
