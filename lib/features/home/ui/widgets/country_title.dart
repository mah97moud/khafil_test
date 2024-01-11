import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/app_default_container.dart';

class CountryTitle extends StatelessWidget {
  const CountryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppDefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'Country',
              style: StylesManager.textStyle12,
            ),
          ),
          Expanded(
            child: Text(
              'Capital',
              style: StylesManager.textStyle12,
            ),
          ),
        ],
      ),
    );
  }
}
