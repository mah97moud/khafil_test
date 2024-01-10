import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/login/ui/widgets/dont_have_account_btn.dart';
import 'package:khafil_test/features/login/ui/widgets/login_btn.dart';
import 'package:khafil_test/features/login/ui/widgets/login_email.dart';
import 'package:khafil_test/features/login/ui/widgets/login_password.dart';
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
          const LoginEmail(),
          const LoginPassword(),
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
