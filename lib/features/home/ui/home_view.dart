import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/features/common/app_default_container.dart';
import 'package:khafil_test/features/home/ui/widgets/country_title.dart';

import '../../../core/managers/styles_manager.dart';
import '../managers/countries_cubit/countries_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Countries',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CountryTitle(),
            BlocBuilder<CountriesCubit, CountriesState>(
              builder: (context, state) {
                return switch (state) {
                  CountriesInitial() => const SizedBox.shrink(),
                  CountriesLoading() => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  CountriesSuccess() => Expanded(
                      child: ListView.builder(
                        itemCount: state.countries.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final country = state.countries[index];
                          return AppDefaultContainer(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  country.name ?? '',
                                  style: StylesManager.textStyle12.copyWith(
                                    color: ColorsManager.black,
                                  ),
                                ),
                                Text(
                                  country.capital ?? '',
                                  style: StylesManager.textStyle12.copyWith(
                                    color: ColorsManager.black,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  CountriesFailure() => Center(
                      child: Text(state.message),
                    ),
                };
              },
            ),
          ],
        ),
      ),
    );
  }
}
