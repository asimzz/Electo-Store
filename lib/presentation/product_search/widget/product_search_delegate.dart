import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/product_search/product_search_bloc.dart';
import '../../../injection.dart';
import '../../routes/router.gr.dart';

class ProductSearchDelegate extends SearchDelegate {
  final String searchFieldLabel = 'e.g IPhone 11 Pro';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text('$query'),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductSearchBloc>(),
      child: SearchRes(query: query),
    );
  }
}

class SearchRes extends StatelessWidget {
  final String query;
  const SearchRes({
    Key key,
    this.query,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .bloc<ProductSearchBloc>()
        .add(ProductSearchEvent.searchProductsWithName(query));
    return BlocBuilder<ProductSearchBloc, ProductSearchState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          searchInProgress: (_) {
            return Container(
              height: 700,
              child: const Center(
                child: SpinKitThreeBounce(
                  color: Color(0xFF123E72),
                  size: 30,
                ),
              ),
            );
          },
          searchSuccess: (state) {
            final products = state.productsResultModel.data;
            return ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    ExtendedNavigator.of(context).push(
                      Routes.productDetailsPage,
                      arguments: ProductDetailsPageArguments(
                          productModel: products[index]),
                    );
                  },
                  child: ListTile(
                      title: Text(
                    products[index].name,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 15,
                    )),
                  )),
                );
              },
              itemCount: products.length,
            );
          },
          searchFailure: (_) {
            return Container();
          },
        );
      },
    );
  }
}
