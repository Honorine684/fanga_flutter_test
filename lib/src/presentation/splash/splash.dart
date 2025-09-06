import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection_container.dart';
import '../../application/connected/connected_bloc.dart';
import '../../application/splash/splash_bloc.dart';
import 'widgets/splash_body_widget.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  static const String routeName = '/';
  const SplashPage({super.key, this.withDeepLink, this.fromLogout});
  final bool? withDeepLink;
  final bool? fromLogout;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const splashLength = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SplashBloc>(
        create: (_) =>
            sl<SplashBloc>()
              ..add(StartLoading(splashLength, 'fr', widget.withDeepLink)),
        child: BlocConsumer<ConnectedBloc, ConnectedState>(
          listener: (context, stateConnected) {},
          builder: (context, stateConnected) {
            return BlocListener<SplashBloc, SplashState>(
              listener: (context, state) async {
                if (stateConnected is ConnectedFailureState) {
                  //alertNoConnexion(context);
                  return;
                }
                if (state is Loaded) {
                  AutoRouter.of(context).replace(state.route);
                }
              },
              child: const SplashBodyWidget(),
            );
          },
        ),
      ),
    );
  }
}
