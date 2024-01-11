import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/app_default_container.dart';
import 'package:khafil_test/features/home/managers/countries_cubit/countries_cubit.dart';

import '../../../common/sizes.dart';

class CountriesBody extends StatelessWidget {
  const CountriesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountriesCubit, CountriesState>(
      builder: (context, state) {
        return switch (state) {
          CountriesInitial() => const SizedBox.shrink(),
          CountriesLoading() => const Column(
              children: [
                CircularProgressIndicator(),
              ],
            ),
          CountriesSuccess() => Expanded(
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: state.countries.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final country = state.countries[index];
                      return AppDefaultContainer(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                country.name ?? '',
                                style: StylesManager.textStyle12.copyWith(
                                  color: ColorsManager.black,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                country.capital ?? '',
                                style: StylesManager.textStyle12.copyWith(
                                  color: ColorsManager.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const Sizes.h20(),
                ],
              ),
            ),
          CountriesFailure() => Center(
              child: Text(state.message),
            ),
        };
      },
    );
  }
}
