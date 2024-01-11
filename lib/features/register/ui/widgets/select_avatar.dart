import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';

import '../../managers/register_cubit/register_cubit.dart';

class SelectAvatar extends StatelessWidget {
  const SelectAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 41.5,
          backgroundColor: ColorsManager.primary,
          child: BlocBuilder<RegisterCubit, RegisterState>(
            builder: (context, state) {
              final file = state.avatar;
              if (file != null) {
                return CircleAvatar(
                  radius: 40.5,
                  backgroundColor: ColorsManager.white,
                  backgroundImage: FileImage(file),
                );
              }
              return const CircleAvatar(
                radius: 40.5,
                backgroundColor: ColorsManager.white,
                backgroundImage: AssetImage(ImagesManager.avatar),
              );
            },
          ),
        ),
        InkWell(
          onTap: () {
            final readRegCubit = context.read<RegisterCubit>();
            readRegCubit.pickAvatar(context);
          },
          child: const CircleAvatar(
            radius: 12.5,
            backgroundColor: ColorsManager.primary,
            child: Icon(
              Icons.add,
              size: 15.0,
              color: ColorsManager.white,
            ),
          ),
        ),
      ],
    );
  }
}
