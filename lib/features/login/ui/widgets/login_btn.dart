import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/routes/routes_manager.dart';
import 'package:khafil_test/core/routes/routes_names.dart';
import 'package:khafil_test/features/common/default_btn.dart';

import '../../managers/login_cubit/login_cubit.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.status == LoginStatus.success) {
            RoutesManager.goNamed(RoutesNames.home);
          } else if (state.status == LoginStatus.error) {
            ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(
                SnackBar(
                  content: Text(state.message ?? ''),
                ),
              );
          } else if (state.status == LoginStatus.inProgress) {
            ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Logging in...'),
                ),
              );
          }
        },
        builder: (context, state) {
          final readLoginCubit = context.read<LoginCubit>();
          return DefaultBtn(
            'Login',
            onPressed: readLoginCubit.submit,
          );
        },
      ),
    );
  }
}
