import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/_commons/network/user_session.dart';
import '../../presentation/_commons/route/app_router.gr.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final UserSession _userSession;
  SplashBloc(this._userSession) : super(const SplashState.loading()) {
    on<SplashEvent>((event, emit) {});
    on<StartLoading>((event, emit) async {
      await Future.delayed(Duration(seconds: event.splashTime));
      final String? token = await _userSession.getAuthToken();
      //bool? introIsShow = await _userSession.checkIntroIsShow();
      final PageRouteInfo<dynamic> route = token != null
          ? const HomeRoute()
          : const LoginRoute();

      emit(SplashState.loaded(token != null, route));
    });
  }
}
