import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../application/product_watch/product_watcher_bloc.dart';
import 'number_of_pages__buttons_widget.dart';
import 'products_grid_view.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductWatcherBloc, ProductWatcherState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loadFailure: (state) {
            Flushbar(
                margin: const EdgeInsets.all(8),
                borderRadius: 8,
                icon: Icon(
                  Icons.error,
                  color: Colors.redAccent,
                ),
                duration: Duration(seconds: 3),
                message: state.productFailure.map(
                  serverError: (_) => 'Server Error please try again',
                  notAuthorizedError: (_) =>
                      'yourn\'t authorized to access this page please try again',
                  badConnectionError: (_) =>
                      'loading failed please check your internet connection',
                  productNotFoundError: (_) => 'Failed to find this product',
                  unexpectedError: (_) =>
                      'Unexpected Error please contact support!!',
                )).show(context);
          },
        );
      },
      child: BlocBuilder<ProductWatcherBloc, ProductWatcherState>(
        builder: (context, state) {
          return state.map(initial: (_) {
            return Container();
          }, loadInProgress: (_) {
            return Container(
              height: 700,
              child: const Center(
                child: SpinKitThreeBounce(
                  color: Color(0xFF123E72),
                  size: 30,
                ),
              ),
            );
          }, loadSuccess: (state) {
            final products = state.productsResultModel.data;
            final pagination = state.productsResultModel.pagination;
            print(products);
            return Column(
              children: [
                NumberOfPagesButton(pagination: pagination),
                // ProductSortView(),
                Container(
                  height: 430,
                  child: ProductsGridView(
                    products: products,
                  ),
                ),
              ],
            );
          }, loadFailure: (_) {
            return Container();
          });
        },
      ),
    );
  }
}
