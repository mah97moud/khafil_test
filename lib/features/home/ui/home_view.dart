import 'package:flutter/material.dart';
import 'package:khafil_test/features/home/ui/widgets/countries_body.dart';
import 'package:khafil_test/features/home/ui/widgets/country_title.dart';

import 'widgets/countries_index.dart';

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
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            CountryTitle(),
            CountriesBody(),
            CountriesIndex(),
          ],
        ),
      ),
    );
  }
}
