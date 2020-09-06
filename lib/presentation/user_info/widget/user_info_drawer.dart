import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infastructure/auth/user/user_data_model.dart';
import '../../product_search/product_search_view.dart';
import '../../products/all_products_page.dart';
import '../../routes/router.gr.dart';
import 'user_drawer.dart';

class UserAnimatedDrawer extends StatefulWidget {
  final UserData userData;

  const UserAnimatedDrawer({
    Key key,
    @required this.userData,
  }) : super(key: key);
  @override
  _UserAnimatedDrawerState createState() => _UserAnimatedDrawerState();
}

class _UserAnimatedDrawerState extends State<UserAnimatedDrawer>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScalecaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScalecaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final UserData user = widget.userData;
    Size size = MediaQuery.of(context).size;
    screenWidth = size.width;
    screenHeight = size.height;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Stack(
        children: [
          SlideTransition(
            position: _slideAnimation,
            child: ScaleTransition(
              scale: _menuScalecaleAnimation,
              child: UserDrawer(
                user: user,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: duration,
            top: isCollapsed ? 0 : 0.1 * screenHeight,
            bottom: isCollapsed ? 0 : 0.1 * screenHeight,
            left: isCollapsed ? 0 : 0.6 * screenWidth,
            right: isCollapsed ? 0 : -0.6 * screenWidth,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Material(
                animationDuration: duration,
                borderRadius: BorderRadius.circular(30),
                elevation: 8,
                color: Colors.white,
                child: InkWell(
                  onTap: isCollapsed ? null : collapsedTheMenu,
                  child: Container(
                    height: 600,
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 48),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                child: Icon(
                                  Icons.menu,
                                  color: Color(0xFF123E72),
                                ),
                                onTap: collapsedTheMenu,
                              ),
                              Text(
                                'ELECTO STORE',
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFF123E72),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.settings,
                                color: Color(0xFF123E72),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Expanded(child: ProductSearchView()),
                              Container(
                                width: 50.0,
                                height: 50.0,
                                margin: EdgeInsets.only(left: 12.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFF123E72),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    ExtendedNavigator.of(context)
                                        .push(Routes.productSearchPage);
                                  },
                                  child: Icon(
                                    FontAwesomeIcons.slidersH,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 110, bottom: 15),
                            child: Text(
                              'EXPLORE OUR \nPRODUCTS NOW 🔥',
                              style: GoogleFonts.oswald(
                                textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF123E72),
                                ),
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          AllProductsPage()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void collapsedTheMenu() {
    setState(() {
      if (isCollapsed)
        _controller.forward();
      else
        _controller.reverse();
      isCollapsed = !isCollapsed;
    });
  }
}
