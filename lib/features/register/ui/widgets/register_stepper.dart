import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/register/ui/widgets/empty_step.dart';

class RegisterStepper extends StatelessWidget {
  const RegisterStepper({
    super.key,
    required this.activeStep,
    this.onStepReached,
  });

  final int activeStep;

  final void Function(int)? onStepReached;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: EasyStepper(
        activeStep: activeStep,
        activeStepTextColor: ColorsManager.primary,
        activeStepBackgroundColor: ColorsManager.primary,
        unreachedStepTextColor: null,
        finishedStepTextColor: ColorsManager.primary,
        disableScroll: true,
        internalPadding: 0.0,
        lineStyle: LineStyle(
            unreachedLineColor: ColorsManager.grey200,
            defaultLineColor: ColorsManager.grey200,
            finishedLineColor:
                activeStep >= 1 ? ColorsManager.primary : ColorsManager.grey200,
            activeLineColor: activeStep == 2 ? ColorsManager.grey200 : null,
            lineLength: 127.0,
            lineWidth: 127.0,
            lineThickness: 2,
            lineType: LineType.normal),
        showLoadingAnimation: false,
        stepRadius: 12.5,
        showStepBorder: false,
        padding: EdgeInsets.zero,
        steps: [
          const EmptyStep(),
          _registerStep(),
          _completeStep(),
          const EmptyStep(),
        ],
        onStepReached: onStepReached,
      ),
    );
  }

  EasyStep _completeStep() {
    return EasyStep(
      customStep: CircleAvatar(
        backgroundColor:
            activeStep == 1 ? ColorsManager.grey200 : ColorsManager.primary,
        radius: 12.5,
        child: CircleAvatar(
          radius: 11.5,
          backgroundColor:
              activeStep == 1 ? ColorsManager.grey200 : Colors.white,
          child: activeStep == 1
              ? Container()
              : Text(
                  '2',
                  style: StylesManager.textStyle12.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.primary,
                  ),
                ),
        ),
      ),
      title: 'Complete Data',
      topTitle: true,
    );
  }

  EasyStep _registerStep() {
    return EasyStep(
      customStep: CircleAvatar(
        backgroundColor: ColorsManager.primary,
        radius: 12.5,
        child: CircleAvatar(
          radius: 11.5,
          backgroundColor:
              activeStep > 1 ? ColorsManager.primary : Colors.white,
          child: activeStep > 1
              ? const Icon(
                  Icons.check,
                  size: 15.0,
                  color: ColorsManager.white,
                )
              : Text(
                  '1',
                  style: StylesManager.textStyle12.copyWith(
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.primary,
                  ),
                ),
        ),
      ),
      title: 'Register',
      topTitle: true,
    );
  }
}
