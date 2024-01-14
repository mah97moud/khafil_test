import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/who_i_am/data/model/who_i_am_model/type.dart';

class UserTypeWidget extends StatelessWidget {
  const UserTypeWidget({
    super.key,
   required this.type,
  });

  final WhoIAmType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'User Type',
          style: StylesManager.textStyle12,
        ),
        const Sizes.h8(),
        Row(
          children: [
            InkWell(
              onTap: () {
                // _onChanged(0);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<int>(
                    value: 0,
                    groupValue: type.code,
                    onChanged: (newValue) {
                      // _onChanged(newValue!);
                    },
                  ),
                  const Text('Seller'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // _onChanged(1);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: type.code,
                    onChanged: (newValue) {
                      // _onChanged(newValue!);
                    },
                  ),
                  const Text('Buyer'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                // _onChanged(2);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<int>(
                    value: 2,
                    groupValue: type.code,
                    onChanged: (newValue) {
                      // _onChanged(newValue!);
                    },
                  ),
                  const Text('Both'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // void _onChanged(int value) {
  //   setState(() {
  //     groupValue = value;
  //   });
  // }
}
