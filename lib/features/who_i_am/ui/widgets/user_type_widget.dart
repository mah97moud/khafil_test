import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/sizes.dart';

class UserTypeWidget extends StatefulWidget {
  const UserTypeWidget({
    super.key,
  });

  @override
  State<UserTypeWidget> createState() => _UserTypeWidgetState();
}

class _UserTypeWidgetState extends State<UserTypeWidget> {
  int groupValue = 0;

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
                _onChanged(0);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<int>(
                    value: 0,
                    groupValue: groupValue,
                    onChanged: (newValue) {
                      _onChanged(newValue!);
                    },
                  ),
                  const Text('Seller'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                _onChanged(1);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<int>(
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (newValue) {
                      _onChanged(newValue!);
                    },
                  ),
                  const Text('Buyer'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                _onChanged(2);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<int>(
                    value: 2,
                    groupValue: groupValue,
                    onChanged: (newValue) {
                      _onChanged(newValue!);
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

  void _onChanged(int value) {
    setState(() {
      groupValue = value;
    });
  }
}
