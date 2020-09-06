import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:electo_store/application/auth/authentication_bloc/authentication_bloc.dart';
import 'package:electo_store/application/auth/sign_in_bloc/sign_in_bloc.dart';
import 'package:electo_store/presentation/routes/router.gr.dart';
import 'package:electo_store/presentation/sign_in/widgets/login_logo.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInBloc, LogInState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              Flushbar(
                  margin: const EdgeInsets.all(8),
                  borderRadius: 8,
                  icon: Icon(
                    Icons.error,
                    color: Colors.redAccent,
                  ),
                  duration: Duration(seconds: 3),
                  message: failure.map(
                    badConnectionError: (_) => 'please check your connection',
                    notAuthorizedError: (_) => 'please login again',
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server Error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Inavlid emial and password combination',
                    unexpectedError: (_) =>
                        'Unexpected Error please contact support',
                  )).show(context);
            },
            (user) {
              ExtendedNavigator.of(context).replace(
                Routes.homePage,
                arguments: HomePageArguments(userData: user.data),
              );
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequseted());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
            autovalidate: state.showErrorMessages,
            child: Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.all(8),
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 50, bottom: 30),
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.fredokaOne(
                            textStyle: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF123E72),
                        )),
                      ),
                    ),
                    LoginLogo(),
                    const SizedBox(height: 25),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: Icon(
                            Icons.email,
                            color: Color(0xFF94ABC6),
                          )),
                      style: GoogleFonts.hind(
                        textStyle: TextStyle(fontSize: 12),
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<LogInBloc>()
                          .add(LogInEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<LogInBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              orElse: () => null,
                              invalidEmail: (_) => 'Invalid Email',
                              empty: (_) => 'Email can\'t be empty',
                            ),
                            (_) => null,
                          ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          suffixIcon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFF94ABC6),
                          )),
                      style: GoogleFonts.hind(
                        textStyle: TextStyle(fontSize: 12),
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) => context
                          .bloc<LogInBloc>()
                          .add(LogInEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.bloc<LogInBloc>().state.password.value.fold(
                                (l) => l.maybeMap(
                                  orElse: () => null,
                                  invalidPassword: (_) => 'Invalid Password',
                                  empty: (_) => 'Email can\'t be empty',
                                ),
                                (_) => null,
                              ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('SIGN IN',
                            style: GoogleFonts.fredokaOne(
                              textStyle: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF123E72),
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          shape: StadiumBorder(),
                          onPressed: () {
                            context.bloc<LogInBloc>().add(
                                  const LogInEvent
                                      .logInWithEmailAndPasswordPressed(),
                                );
                          },
                          color: Color(0xFF123E72),
                          child: Icon(
                            FontAwesomeIcons.arrowRight,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () => {
                          //TODO: Implement Forget Password
                        },
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            color: Color(0xFF123E72),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'OR',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('fuck me');
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'New to ElecT',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.black)),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'O',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF94ABC6))),
                            TextSpan(
                              text: '? ',
                            ),
                            TextSpan(
                                text: 'Sign Up Now',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    ExtendedNavigator.of(context)
                                        .push(Routes.signUpPage);
                                  },
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF123E72))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                if (state.isSubmitting) ...[
                  Container(
                    color: Colors.white.withOpacity(0.3),
                    child: Center(
                      child: SpinKitCircle(
                        color: Color(0xff3A3A3A),
                        size: 100,
                      ),
                    ),
                  ),
                ]
              ],
            ));
      },
    );
  }
}
