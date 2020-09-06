import 'package:electo_store/application/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:electo_store/presentation/sign_up/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<SignUpBloc>(),
          )
        ],
        child: SignUpForm(),
      ),
    );
  }
}
