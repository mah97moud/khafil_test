import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khafil_test/core/routes/routes_names.dart';
import 'package:khafil_test/features/register/ui/register_view.dart';

import '../../features/home/ui/home_view.dart';
import '../../features/home_layout/ui/home_layout.dart';
import '../../features/login/ui/login_view.dart';

class RoutesManager {
  factory RoutesManager() => _instance;

  RoutesManager._();
  static final RoutesManager _instance = RoutesManager._();

  static final GlobalKey<NavigatorState> _rootKey = GlobalKey<NavigatorState>();

  static NavigatorState get root => _rootKey.currentState!;
  static final GlobalKey<NavigatorState> _shellKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell',
  );

  static NavigatorState get shell => _shellKey.currentState!;

  static Future<T?> push<T extends Object?>(
    Route<T> route,
  ) =>
      root.push(route);

  static void pop<T extends Object?>([T? result]) => root.pop(result);

  final router = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: '/${RoutesNames.login}',
    routes: [
      ShellRoute(
        navigatorKey: _shellKey,
        pageBuilder: (context, state, child) {
          return MaterialPage(
            key: state.pageKey,
            name: 'Home Layout',
            child: HomeLayout(
              child: child,
            ),
          );
        },
        routes: [
          GoRoute(
            path: '/${RoutesNames.home}',
            name: RoutesNames.home,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: HomeView(),
              );
            },
          ),
        ],
      ),
 
       GoRoute(
        path: '/${RoutesNames.login}',
        name: RoutesNames.login,
        pageBuilder: (context, state) {
          return const NoTransitionPage(
            child: LoginView(),
          );
        },
        routes: [
          GoRoute(
            path: RoutesNames.register,
            name: RoutesNames.register,
            pageBuilder: (context, state) {
              return const NoTransitionPage(
                child: RegisterView(),
              );
            },
          ),
        ],
      ),
 
 
   ],
    redirect: (context, state) {
      final bool loggingIn = state.uri.path == '/${RoutesNames.login}';

      //Todo: check if user is logged in or not
      // userModel = await SecureStorageService.getUserModel;

      // final bool loggedIn = userModel != null;
      const bool loggedIn = false;

      if (!loggedIn) {
        final bool isRegister =
            state.matchedLocation.contains(RoutesNames.register);
        if (isRegister) {
          return '/login/${RoutesNames.register}';
        }

        return '/${RoutesNames.login}';
      }

      // if the user is logged in but still on the login page, send them to
      // the home page
      if (loggingIn) {
        return '/${RoutesNames.home}';
      }

      return null;
    },
  );
}
