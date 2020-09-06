import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../infastructure/products/product_model.dart';
import '../../routes/router.gr.dart';
import 'product_card_view.dart';

class ProductsGridView extends StatelessWidget {
  final List<ProductModel> products;

  const ProductsGridView({
    Key key,
    @required this.products,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return InkWell(
          child: Card(
            child: InkWell(
              onTap: () {
                ExtendedNavigator.of(context).push(
                  Routes.productDetailsPage,
                  arguments: ProductDetailsPageArguments(productModel: product),
                );
              },
              child: ProductCardView(
                product: product,
              ),
            ),
          ),
        );
      },
    );
  }
}
