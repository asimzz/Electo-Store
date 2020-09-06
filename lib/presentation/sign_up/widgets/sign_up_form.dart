import 'package:auto_route/auto_route.dart';
import 'package:electo_store/application/auth/authentication_bloc/authentication_bloc.dart';
import 'package:electo_store/application/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:electo_store/presentation/routes/router.gr.dart';
import 'package:electo_store/presentation/sign_up/widgets/sign_up_logo.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isMatch = useState('');
    final choosenDate = useState(DateTime.now());
    return BlocConsumer<SignUpBloc, SignUpState>(
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
              ExtendedNavigator.of(context).replace(Routes.homePage,
                  arguments: HomePageArguments(
                    userData: user.data,
                  ));
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
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 35),
                        child: InkWell(
                          onTap: () {
                            ExtendedNavigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF123E72),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 25, bottom: 20),
                      child: Text(
                        'REGISTER TO ELECTO STORE:',
                        style: GoogleFonts.fredokaOne(
                            textStyle: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF123E72),
                        )),
                      ),
                    ),
                    SignUpLogo(),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          FontAwesomeIcons.userCircle,
                          color: Color(0xFF94ABC6),
                        ),
                        labelText: 'Enter your username',
                      ),
                      style: GoogleFonts.hind(
                        textStyle: TextStyle(fontSize: 12),
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpEvent.usernameChanged(value)),
                      validator: (_) =>
                          context.bloc<SignUpBloc>().state.username.value.fold(
                                (l) => l.maybeMap(
                                    orElse: () => null,
                                    invalidUsername: (_) => 'Invalid Username'),
                                (_) => null,
                              ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.email,
                          color: Color(0xFF94ABC6),
                        ),
                        labelText: 'Enter your email',
                      ),
                      style: GoogleFonts.hind(
                        textStyle: TextStyle(fontSize: 12),
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (l) => l.maybeMap(
                                orElse: () => null,
                                invalidEmail: (_) => 'Invalid Email'),
                            (_) => null,
                          ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFF94ABC6),
                        ),
                        labelText: 'Enter your password',
                      ),
                      style: GoogleFonts.hind(
                        textStyle: TextStyle(fontSize: 12),
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) {
                        context
                            .bloc<SignUpBloc>()
                            .add(SignUpEvent.passwordChanged(value));
                        isMatch.value = value;
                      },
                      validator: (_) =>
                          context.bloc<SignUpBloc>().state.password.value.fold(
                                (l) => l.maybeMap(
                                    orElse: () => null,
                                    invalidPassword: (_) => 'Invalid Password'),
                                (_) => null,
                              ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.lock,
                            color: Color(0xFF94ABC6),
                          ),
                          labelText: 'Confirm your password',
                        ),
                        style: GoogleFonts.hind(
                          textStyle: TextStyle(fontSize: 12),
                        ),
                        autocorrect: false,
                        obscureText: true,
                        onChanged: (value) => {},
                        validator: (value) {
                          if (value != isMatch.value)
                            return 'Passwords don\'t match';
                          else {
                            return context
                                .bloc<SignUpBloc>()
                                .state
                                .password
                                .value
                                .fold(
                                  (l) => l.maybeMap(
                                      orElse: () => null,
                                      invalidPassword: (_) =>
                                          'Invalid Password'),
                                  (_) => null,
                                );
                          }
                        }),
                    const SizedBox(height: 8),
                    ListTile(
                      title: Text(
                        'Enter your birth date: ',
                        style: GoogleFonts.hind(
                          textStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RaisedButton(
                            shape: StadiumBorder(),
                            child: Icon(
                              Icons.date_range_outlined,
                              color: Colors.white,
                            ),
                            color: Color(0xFF94ABC6),
                            onPressed: () async {
                              choosenDate.value = await showDatePicker(
                                context: context,
                                initialDate: choosenDate.value,
                                firstDate: DateTime(1970, 1),
                                lastDate: DateTime(2100),
                              );
                              context.bloc<SignUpBloc>().add(
                                    SignUpEvent.birthDateChanged(
                                      '${choosenDate.value.year}-${choosenDate.value.month}-${choosenDate.value.day}',
                                    ),
                                  );
                            },
                          ),
                          Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF94ABC6))),
                            child: Text(
                              state.birthDate.getOrCrash(),
                              style: GoogleFonts.hind(
                                textStyle: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: RaisedButton(
                        shape: StadiumBorder(),
                        onPressed: () {
                          context.bloc<SignUpBloc>().add(
                                const SignUpEvent
                                    .registerWithEmailAndPasswordPressed(),
                              );
                        },
                        color: Color(0xFF123E72),
                        child: Text('SUBMIT INFO!',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        print('fuck me');
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Already have an Account? ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.black)),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign In Now',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('fuck me twice!!');
                                    ExtendedNavigator.of(context).pop();
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
                        color: Color(0xFF123E72),
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
