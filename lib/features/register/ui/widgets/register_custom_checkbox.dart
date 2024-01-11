import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/sizes.dart';

class RegisterCustomCheckbox extends StatelessWidget {
  const RegisterCustomCheckbox({
    super.key,
    required this.assetSvg,
    required this.title,
    required this.value,
    this.onChanged,
    this.icon,
  });

  final String assetSvg;
  final String title;
  final bool value;
  final void Function(bool?)? onChanged;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      title: Transform.translate(
        offset: const Offset(-12, 0.0),
        child: Row(
          children: [
            if (icon == null) SvgPicture.asset(assetSvg),
            if (icon != null) icon!,
            const Sizes.w8(),
            Text(
              title,
              style: StylesManager.textStyle14.copyWith(
                color: ColorsManager.black,
              ),
            ),
          ],
        ),
      ),
      dense: true,
      onChanged: onChanged,
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: const EdgeInsets.only(
        left: 12,
        right: 24,
      ),
    );
  }
}
