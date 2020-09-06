import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/authentication_bloc/authentication_bloc.dart';
import '../../infastructure/auth/user/user_data_model.dart';
import '../routes/router.gr.dart';
import '../user_info/widget/user_info_drawer.dart';

class HomePage extends StatelessWidget {
  final UserData userData;

  const HomePage({
    Key key,
    @required this.userData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            unauthenticated: (_) =>
                ExtendedNavigator.of(context).replace(Routes.logInPage));
      },
      child: UserAnimatedDrawer(
        userData: userData,
      ),
    );
  }
}
