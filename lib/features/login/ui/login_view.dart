import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/login/ui/widgets/dont_have_account_btn.dart';
import 'package:khafil_test/features/login/ui/widgets/login_btn.dart';
import 'package:khafil_test/features/login/ui/widgets/login_form_field.dart';
import 'package:khafil_test/features/login/ui/widgets/login_form_text.dart';
import 'package:khafil_test/features/login/ui/widgets/remember_me_and_forget_section.dart';

import '../../../core/managers/assets_manager.dart';
import '../../../core/managers/styles_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Account Login',
          style: StylesManager.textStyle18,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Sizes.h32(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 225.0,
              child: SvgPicture.asset(
                SvgsManager.loginCuate1,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Sizes.h20(),
          ),
          const LoginFormText('Email Address'),
          const LoginFormField(),
          const LoginFormText('Password'),
          const LoginFormField(
            obscureText: true,
            suffixIcon: Icon(Icons.visibility_off_outlined),
            // suffixIcon: Icon(Icons.visibility_outlined),
            // suffixIcon: Icon(Icons.remove_red_eye_outlined),
          ),
          const RememberMeAndForgetSection(),
          const SliverToBoxAdapter(
            child: Sizes.h34(),
          ),
          const LoginBtn(),
          const SliverToBoxAdapter(
            child: Sizes.h24(),
          ),
          const DontHaveAccountBtn(),
          const SliverToBoxAdapter(
            child: Sizes.h56(),
          )
        ],
      ),
    );
  }
}
