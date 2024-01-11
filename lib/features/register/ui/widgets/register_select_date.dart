import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/features/register/ui/widgets/register_form_text.dart';

import '../../managers/register_cubit/register_cubit.dart';

class RegisterSelectDate extends StatelessWidget {
  const RegisterSelectDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RegisterFormText('Birth Date'),
        InkWell(
          onTap: () async {
            var readCubit = context.read<RegisterCubit>();

            var results = await showCalendarDatePicker2Dialog(
              context: context,
              config: CalendarDatePicker2WithActionButtonsConfig(),
              dialogSize: const Size(325, 400),
              value: [DateTime.now()],
              borderRadius: BorderRadius.circular(15),
            );

            if (results != null) {
              final date = results[0];
              final formattedDate = date.toString().split(' ').first;
              debugPrint('Current Date Selected: $formattedDate');

              readCubit.onDateChanged(formattedDate);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 8.0,
            ),
            height: 62,
            decoration: const ShapeDecoration(
              shape: StadiumBorder(),
              color: ColorsManager.grey50,
            ),
            child: Row(
              children: [
                BlocBuilder<RegisterCubit, RegisterState>(
                  builder: (context, state) {
                    return Text(
                      state.date.isEmpty ? 'Select Date' : state.date,
                    );
                  },
                ),
                const Spacer(),
                SvgPicture.asset(
                  SvgsManager.calendar,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
