import 'package:electo_store/application/auth/sign_in_bloc/sign_in_bloc.dart';
import 'package:electo_store/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<LogInBloc>(),
          ),
        ],
        child: LogInForm(),
      ),
    );
  }
}
