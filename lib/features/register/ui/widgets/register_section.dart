import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/register/ui/widgets/register_confirm_password.dart';
import 'package:khafil_test/features/register/ui/widgets/register_email.dart';
import 'package:khafil_test/features/register/ui/widgets/register_first_name.dart';
import 'package:khafil_test/features/register/ui/widgets/register_last_name.dart';
import 'package:khafil_test/features/register/ui/widgets/register_next_btn.dart';
import 'package:khafil_test/features/register/ui/widgets/register_password.dart';
import 'package:khafil_test/features/register/ui/widgets/register_user_type.dart';

import '../../managers/register_cubit/register_cubit.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return const SingleChildScrollView(
            child: Column(
              children: [
                Sizes.h32(),
                Row(
                  children: [
                    RegisterFirstName(),
                    RegisterLastName(),
                  ],
                ),
                RegisterEmail(),
                Sizes.h8(),
                RegisterPassword(),
                Sizes.h8(),
                RegisterConfirmPassword(),
                Sizes.h8(),
                RegisterUserType(),
                Sizes.h56(),
                RegisterNextBtn(),
                Sizes.h32(),
              ],
            ),
          );
        },
      ),
    );
  }
}
