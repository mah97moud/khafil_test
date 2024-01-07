import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/core/routes/routes_manager.dart';
import 'package:khafil_test/core/routes/routes_names.dart';

class DontHaveAccountBtn extends StatelessWidget {
  const DontHaveAccountBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: InkWell(
        onTap: (){
          RoutesManager.goNamed(
            RoutesNames.register,
          );
        },
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Don’t have an account ? ',
                style: StylesManager.textStyle14.copyWith(
                  color: ColorsManager.grey500,
                ),
              ),
              TextSpan(
                text: 'Register',
                style: StylesManager.textStyle14.copyWith(
                  color: ColorsManager.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
