import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/authentication_bloc/authentication_bloc.dart';
import '../../injection.dart';
import '../routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              return getIt<AuthBloc>()
                ..add(const AuthEvent.authCheckRequseted());
            },
          )
        ],
        child: MaterialApp(
          title: 'ElectO Store App',
          builder: ExtendedNavigator<Router>(
            router: Router(),
          ),
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            primaryColor: Color(0xFF123E72),
            accentColor: Color(0xFF94ABC6),
          ),
        ));
  }
}
