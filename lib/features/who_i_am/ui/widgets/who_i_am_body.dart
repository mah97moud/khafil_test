import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/who_i_am/data/model/who_i_am_model/type.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_avatar.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_fav_social_media.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_info_container.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/profile_skills.dart';
import 'package:khafil_test/features/who_i_am/ui/widgets/user_type_widget.dart';

import '../../managers/who_i_am_cubit/who_i_am_cubit.dart';

class WhoIAmBody extends StatelessWidget {
  const WhoIAmBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WhoIAmCubit, WhoIAmState>(
      builder: (context, state) {
        return switch (state) {
          WhoIAmInitial() => const SizedBox.shrink(),
          WhoIAmLoading() => const Center(child: CircularProgressIndicator()),
          WhoIAmLoaded(whoIAm: final user) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileAvatar(),
                  ],
                ),
                const Sizes.h32(),
                Row(
                  children: [
                    Expanded(
                      child: ProfileInfoContainer(
                        title: 'First Name',
                        name: user.firstName ?? '',
                      ),
                    ),
                    const Sizes.w8(),
                    Expanded(
                      child: ProfileInfoContainer(
                        title: 'Last Name',
                        name: user.lastName ?? '',
                      ),
                    ),
                  ],
                ),
                const Sizes.h8(),
                ProfileInfoContainer(
                  title: 'Email',
                  name: user.email ?? '',
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
                UserTypeWidget(
                  type: user.type ?? WhoIAmType(),
                ),
                const Sizes.h8(),
                ProfileInfoContainer(
                  title: 'About',
                  name: user.about ?? '',
                ),
                const Sizes.h8(),
                ProfileInfoContainer(
                  title: 'Salary',
                  name: 'SAR ${user.salary ?? ''}',
                ),
                const Sizes.h8(),
                ProfileInfoContainer(
                  title: 'Birth Date',
                  name: user.birthDate ?? '',
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 17.0),
                    child: SvgPicture.asset(SvgsManager.calendar),
                  ),
                ),
                const Sizes.h8(),
                ProfileSkills(
                  tags: user.tags ?? [],
                ),
                const Sizes.h8(),
                ProfileFavSocialMedia(
                  favoriteSocialMedia: user.favoriteSocialMedia ?? [],
                ),
                const Sizes.h56(),
              ],
            ),
          WhoIAmFailure() => Center(
              child: Text(state.message),
            ),
        };
      },
    );
  }
}
