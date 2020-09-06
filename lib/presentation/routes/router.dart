import 'package:auto_route/auto_route_annotations.dart';
import 'package:electo_store/presentation/core/home_page.dart';
import 'package:electo_store/presentation/product_search/product_search_page.dart';
import 'package:electo_store/presentation/product_search/widget/product_details_page.dart';
import 'package:electo_store/presentation/products/all_products_page.dart';
import 'package:electo_store/presentation/sign_in/sign_in_page.dart';
import 'package:electo_store/presentation/sign_up/sign_up_page.dart';

import '../splash_page/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // initial route is named "/"
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: HomePage),
  MaterialRoute(page: LogInPage),
  MaterialRoute(page: SignUpPage),
  MaterialRoute(page: AllProductsPage),
  MaterialRoute(page: ProductSearchPage),
  MaterialRoute(page: ProductDetailsPage),
])
class $Router {}
