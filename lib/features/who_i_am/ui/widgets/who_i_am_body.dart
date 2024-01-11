import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_avatar.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_fav_social_media.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_info_container.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_skills.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/user_type_widget.dart';

class WhoIAmBody extends StatelessWidget {
  const WhoIAmBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileAvatar(),
          ],
        ),
        const Sizes.h32(),
        const Row(
          children: [
            Expanded(
              child: ProfileInfoContainer(
                title: 'First Name',
                name: 'John',
              ),
            ),
            Sizes.w8(),
            Expanded(
              child: ProfileInfoContainer(
                title: 'Last Name',
                name: 'Doe',
              ),
            ),
          ],
        ),
        const Sizes.h8(),
        const ProfileInfoContainer(
          title: 'Email',
          name: 'pH7Q0@example.com',
        ),
        const Sizes.h8(),
        const ProfileInfoContainer(
          title: 'Password',
          name: '********',
          trailing: Padding(
            padding: EdgeInsets.only(right: 17.0),
            child: Icon(Icons.visibility_off_outlined),
          ),
        ),
        const Sizes.h8(),
        const UserTypeWidget(),
        const Sizes.h8(),
        const ProfileInfoContainer(
          title: 'About',
          name: 'Lorem ipsum dolor sit amet consectetur.'
              ' Odio urna sed velit et sed quis. '
              'Enim ut sed. sed quis. Enim ut sed.',
        ),
        const Sizes.h8(),
        const ProfileInfoContainer(
          title: 'Salary',
          name: 'SAR 4500',
        ),
        const Sizes.h8(),
        ProfileInfoContainer(
          title: 'Password',
          name: DateTime.now().toIso8601String().split('T').first,
          trailing: Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: SvgPicture.asset(SvgsManager.calendar),
          ),
        ),
        const Sizes.h8(),
        const ProfileSkills(),
        const Sizes.h8(),
        const ProfileFavSocialMedia(),
        const Sizes.h56(),

      ],
    );
  }
}
