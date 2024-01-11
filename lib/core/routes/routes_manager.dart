import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:khafil_test/core/helpers/secure_storage_service.dart';
import 'package:khafil_test/core/helpers/types.dart';
import 'package:khafil_test/core/routes/routes_names.dart';
import 'package:khafil_test/features/login/login_repo/login_repo.dart';
import 'package:khafil_test/features/register/managers/register_cubit/register_cubit.dart';
import 'package:khafil_test/features/register/ui/register_view.dart';
import 'package:khafil_test/features/services/managers/popular_services_cubit/popular_services_cubit.dart';
import 'package:khafil_test/features/services/managers/services_cubit/services_cubit.dart';

import '../../features/home/managers/countries_cubit/countries_cubit.dart';
import '../../features/home/repository/home_repo.dart';
import '../../features/home/ui/home_view.dart';
import '../../features/home_layout/ui/home_layout.dart';
import '../../features/login/managers/login_cubit/login_cubit.dart';
import '../../features/login/ui/login_view.dart';
import '../../features/services/repos/service_repo.dart';
import '../../features/services/ui/services_view.dart';
import '../../features/who_i_am/ui/who_i_am_view.dart';
import '../app/di.dart';
import '../app/network/app_pref.dart';

class RoutesManager {
  factory RoutesManager() => _instance;

  RoutesManager._();
  static final RoutesManager _instance = RoutesManager._();

  static final GlobalKey<NavigatorState> _rootKey = GlobalKey<NavigatorState>();

  static NavigatorState get root => _rootKey.currentState!;

  /// Get current BuildContext
  static BuildContext get context => root.context;
  static final GlobalKey<NavigatorState> _shellKey = GlobalKey<NavigatorState>(
    debugLabel: 'shell',
  );

  static NavigatorState get shell => _shellKey.currentState!;

  static Future<T?> push<T extends Object?>(
    String path, {
    Object? extra,
  }) =>
      context.push(
        path,
        extra: extra,
      );

  static Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    JSON queryParameters = const <String, dynamic>{},
  }) =>
      context.pushNamed(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
      );

  static void pushReplacement<T extends Object?>(
    String path, {
    Object? extra,
  }) =>
      context.pushReplacement(
        path,
        extra: extra,
      );

  static void pushReplacementNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    JSON queryParameters = const <String, dynamic>{},
  }) =>
      context.pushReplacementNamed(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
      );

  static void pop<T extends Object?>([T? result]) => root.pop(result);

  ///Go
  static go<T extends Object?>(
    String path, {
    Object? extra,
  }) =>
      context.go(
        path,
        extra: extra,
      );

  ///Go Named

  static goNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    JSON queryParameters = const <String, dynamic>{},
  }) =>
      context.goNamed(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
      );

  final router = GoRouter(
    navigatorKey: _rootKey,
    initialLocation: '/${RoutesNames.login}',
    routes: [
      StatefulShellRoute.indexedStack(
        pageBuilder: (context, state, navigationShell) {
          return MaterialPage(
            key: state.pageKey,
            name: 'Home Layout',
            child: HomeLayout(
              navigationShell: navigationShell,
            ),
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/${RoutesNames.whoIAm}',
                name: RoutesNames.whoIAm,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(
                    child: WhoIAmView(),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/${RoutesNames.home}',
                name: RoutesNames.home,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                    child: BlocProvider(
                      create: (context) => CountriesCubit(
                        di<HomeRepo>(),
                      )..getCountries(),
                      child: const HomeView(),
                    ),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/${RoutesNames.services}',
                name: RoutesNames.services,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                    child: MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (context) => ServicesCubit(
                            di<ServiceRepo>(),
                          )..getServices(),
                        ),
                        BlocProvider(
                          create: (context) => PopularServicesCubit(
                            di<ServiceRepo>(),
                          )..getPopularServices(),
                        ),
                      ],
                      child: const ServicesView(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
      GoRoute(
        path: '/${RoutesNames.login}',
        name: RoutesNames.login,
        pageBuilder: (context, state) {
          return NoTransitionPage(
            child: BlocProvider(
              create: (_) => LoginCubit(
                di<LoginRepo>(),
                di<AppPrefs>(),
              ),
              child: const LoginView(),
            ),
          );
        },
        routes: [
          GoRoute(
            path: RoutesNames.register,
            name: RoutesNames.register,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                child: BlocProvider(
                  create: (context) => RegisterCubit(),
                  child: const RegisterView(),
                ),
              );
            },
          ),
        ],
      ),
    ],
    redirect: (context, state) async {
      final bool loggingIn = state.uri.path == '/${RoutesNames.login}';

      loginModel = await SecureStorageService.getUserModel;

      final bool loggedIn = loginModel != null && rememberMe == true;

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
