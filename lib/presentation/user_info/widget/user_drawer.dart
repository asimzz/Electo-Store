import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/auth/authentication_bloc/authentication_bloc.dart';
import '../../../infastructure/auth/user/user_data_model.dart';

class UserDrawer extends StatelessWidget {
  final UserData user;
  const UserDrawer({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                user.name,
                style: GoogleFonts.notoSans(),
              ),
              subtitle: Text(
                user.email,
                style: GoogleFonts.notoSans(),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Icon(
                    Icons.list,
                    color: Color(0xFF123E72),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Orders',
                    style: GoogleFonts.hind(),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Icon(
                    Icons.category,
                    color: Color(0xFF123E72),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Categories',
                    style: GoogleFonts.hind(),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Color(0xFF123E72),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Favorites',
                    style: GoogleFonts.hind(),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Icon(
                    Icons.bookmark_border,
                    color: Color(0xFF123E72),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Bookmarks',
                    style: GoogleFonts.hind(),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Color(0xFF123E72),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Settings',
                    style: GoogleFonts.hind(),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                children: [
                  Icon(
                    Icons.info,
                    color: Color(0xFF123E72),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'About Us',
                    style: GoogleFonts.hind(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  context.bloc<AuthBloc>().add(
                        const AuthEvent.signedOut(),
                      );
                },
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.signOutAlt,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      'LogOut',
                      style: GoogleFonts.hind(
                          textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
