import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    var curIndex = navigationShell.currentIndex;
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgsManager.userCircle,
              colorFilter: curIndex == 0
                  ? const ColorFilter.mode(
                      ColorsManager.primary, BlendMode.srcIn)
                  : null,
            ),
            label: 'Who Am I',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgsManager.globeHemisphereWest,
              colorFilter: curIndex == 1
                  ? const ColorFilter.mode(
                      ColorsManager.primary, BlendMode.srcIn)
                  : null,
            ),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgsManager.shoppingCartSimple,
              colorFilter: curIndex == 2
                  ? const ColorFilter.mode(
                      ColorsManager.primary, BlendMode.srcIn)
                  : null,
            ),
            label: 'Services',
          ),
        ],
      ),
    );
  }

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
