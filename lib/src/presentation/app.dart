import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../injection_container.dart';
import '../../l10n/app_localizations.dart';
import '../application/connected/connected_bloc.dart';
import '_commons/route/app_router.dart';
import '_commons/route/app_router.gr.dart';
import '_commons/theming/app_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => sl<ConnectedBloc>())],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationProvider: _appRouter.routeInfoProvider(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('fr')],
        locale: const Locale('fr'),
        title: 'Woura',
        builder: (context, router) => MultiBlocListener(
          listeners: [
            BlocListener<ConnectedBloc, ConnectedState>(
              listener: (context, state) {
                if (state is ConnectedFailureState) {
                  _appRouter.replace(SplashRoute(withDeepLink: false));
                }
              },
            ),
          ],
          child: ResponsiveBreakpoints.builder(
            breakpoints: const [
              Breakpoint(start: 0, end: 450, name: MOBILE),
              Breakpoint(start: 451, end: 800, name: TABLET),
              Breakpoint(start: 801, end: 1920, name: DESKTOP),
              Breakpoint(start: 1921, end: double.infinity, name: 'XL'),
            ],
            child: ClampingScrollWrapper.builder(context, router!),
          ),
        ),
        theme: buildAppThemeData(context),
      ),
    );
  }
}
