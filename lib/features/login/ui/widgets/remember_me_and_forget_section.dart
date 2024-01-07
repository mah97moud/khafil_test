import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';

class RememberMeAndForgetSection extends StatelessWidget {
  const RememberMeAndForgetSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                // setState(() {
                //   value = !value;
                // });
              },
              child: Row(
                children: [
                  Checkbox(
                    value: false,
                    checkColor: Colors.white,
                    onChanged: (onChanged) {
                      // setState(() {
                      //   value = onChanged!;
                      // });
                    },
                  ),
                  const Text(
                    'Remember me',
                    style: StylesManager.textStyle12,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: StylesManager.textStyle12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
