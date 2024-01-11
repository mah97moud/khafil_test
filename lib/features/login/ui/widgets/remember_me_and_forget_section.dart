import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';

import '../../managers/login_cubit/login_cubit.dart';

class RememberMeAndForgetSection extends StatelessWidget {
  const RememberMeAndForgetSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                final rememberMe = state.rememberMe;
                var readLoginCubit = context.read<LoginCubit>();

                return InkWell(
                  onTap: () {
                    readLoginCubit.toggleRememberMe(!rememberMe);
                  },
                  child: Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        checkColor: Colors.white,
                        onChanged: (onChanged) {
                          readLoginCubit.toggleRememberMe(onChanged!);
                        },
                      ),
                      const Text(
                        'Remember me',
                        style: StylesManager.textStyle12,
                      ),
                    ],
                  ),
                );
              },
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: StylesManager.textStyle12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
