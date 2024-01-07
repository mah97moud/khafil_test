import 'package:flutter/material.dart';
import 'package:khafil_test/features/common/default_btn.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: DefaultBtn(
        'Login',
        onPressed: () {},
      ),
    );
  }
}
