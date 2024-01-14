import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/features/home/managers/countries_cubit/countries_cubit.dart';
import 'package:number_pagination/number_pagination.dart';

import '../../managers/countries_pagination_cubit/countries_pagination_cubit.dart';

class CountriesIndex extends StatelessWidget {
  const CountriesIndex({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountriesPaginationCubit(),
      child: BlocBuilder<CountriesCubit, CountriesState>(
          builder: (context, state) {
        return BlocBuilder<CountriesPaginationCubit, int>(
          builder: (context, pageInt) {
            return NumberPagination(
              onPageChanged: (int pageNumber) {
                final readCountriesCubit = context.read<CountriesCubit>();
                final readCountriesPaginationCubit =
                    context.read<CountriesPaginationCubit>();
                readCountriesPaginationCubit.setPage(pageNumber);
                readCountriesCubit.getCountries(
                  page: pageNumber,
                );
              },
              threshold: 3,
              pageTotal: 25,
              pageInit: pageInt,
              colorPrimary: ColorsManager.primary,
              iconToFirst: const Icon(
                Icons.keyboard_double_arrow_left,
                color: ColorsManager.grey300,
              ),
              iconToLast: const Icon(
                Icons.keyboard_double_arrow_right,
                color: ColorsManager.grey300,
              ),
              iconPrevious: const Icon(
                Icons.keyboard_arrow_left,
                color: ColorsManager.grey300,
              ),
              iconNext: const Icon(
                Icons.keyboard_arrow_right,
                color: ColorsManager.grey300,
              ),
              colorSub: ColorsManager.white,
              controlButton: Container(
                padding: const EdgeInsets.all(11),
               
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  color: ColorsManager.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                  border: Border.all(color: ColorsManager.grey200),
                ),
                alignment: Alignment.center,
              ),
            );
          },
        );
      }),
    );
  }
}
