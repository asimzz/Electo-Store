import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../application/auth/authentication_bloc/authentication_bloc.dart';
import '../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (state) => ExtendedNavigator.of(context).replace(
              Routes.homePage,
              arguments: HomePageArguments(userData: state.userResult.data),
            ),
            unauthenticated: (_) =>
                ExtendedNavigator.of(context).replace(Routes.logInPage),
          );
        },
        child: Scaffold(
          body: Center(
            child: SpinKitDualRing(
              color: Color(0xFF123E72),
            ),
          ),
        ));
  }
}
