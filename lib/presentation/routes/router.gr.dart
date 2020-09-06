// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../infastructure/auth/user/user_data_model.dart';
import '../../infastructure/products/product_model.dart';
import '../core/home_page.dart';
import '../product_search/product_search_page.dart';
import '../product_search/widget/product_details_page.dart';
import '../products/all_products_page.dart';
import '../sign_in/sign_in_page.dart';
import '../sign_up/sign_up_page.dart';
import '../splash_page/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String homePage = '/home-page';
  static const String logInPage = '/log-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String allProductsPage = '/all-products-page';
  static const String productSearchPage = '/product-search-page';
  static const String productDetailsPage = '/product-details-page';
  static const all = <String>{
    splashPage,
    homePage,
    logInPage,
    signUpPage,
    allProductsPage,
    productSearchPage,
    productDetailsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.logInPage, page: LogInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.allProductsPage, page: AllProductsPage),
    RouteDef(Routes.productSearchPage, page: ProductSearchPage),
    RouteDef(Routes.productDetailsPage, page: ProductDetailsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      final args = data.getArgs<HomePageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(
          key: args.key,
          userData: args.userData,
        ),
        settings: data,
      );
    },
    LogInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LogInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    AllProductsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AllProductsPage(),
        settings: data,
      );
    },
    ProductSearchPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductSearchPage(),
        settings: data,
      );
    },
    ProductDetailsPage: (data) {
      final args = data.getArgs<ProductDetailsPageArguments>(
        orElse: () => ProductDetailsPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            ProductDetailsPage(productModel: args.productModel),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomePage arguments holder class
class HomePageArguments {
  final Key key;
  final UserData userData;
  HomePageArguments({this.key, @required this.userData});
}

/// ProductDetailsPage arguments holder class
class ProductDetailsPageArguments {
  final ProductModel productModel;
  ProductDetailsPageArguments({this.productModel});
}
