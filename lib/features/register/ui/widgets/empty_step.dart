import 'package:easy_stepper/easy_stepper.dart';
import 'package:khafil_test/features/register/ui/widgets/with_step_avatar.dart';

class EmptyStep extends EasyStep {
  const EmptyStep()
      : super(
          customStep: const WithStepAvatar(),
          title: '',
          topTitle: true,
          enabled: false,
        );
}
