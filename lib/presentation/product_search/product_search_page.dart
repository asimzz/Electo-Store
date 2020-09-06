import 'package:electo_store/application/product_search_form/product_search_form_bloc.dart';
import 'package:electo_store/presentation/product_search/widget/product_search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class ProductSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductSearchFormBloc>(),
      child: ProductSearchForm(),
    );
  }
}
