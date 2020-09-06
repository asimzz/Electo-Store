import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infastructure/products/product_search_result.dart';
import '../../routes/router.gr.dart';
import '../../util/product_image_resize.dart';

class ProductSearchResultView extends StatelessWidget {
  final ProductSearchResult productSearchResult;

  const ProductSearchResultView({Key key, this.productSearchResult})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: productSearchResult.data.length,
      itemBuilder: (context, index) {
        final product = productSearchResult.data[index];
        return GestureDetector(
          onTap: () {
            ExtendedNavigator.of(context).push(
              Routes.productDetailsPage,
              arguments: ProductDetailsPageArguments(productModel: product),
            );
          },
          child: Card(
            child: Material(
              elevation: 4,
              shape: ContinuousRectangleBorder(
                  side: const BorderSide(
                width: 0.5,
                color: Color(0xFF123E72),
              )),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ProductPhotoResize(
                        productPhoto: product.photo,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        product.name,
                        style: GoogleFonts.kanit(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '\$ ${product.price}',
                          style: GoogleFonts.kanit(),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          '⭐ ${product.averageRating}',
                          style: GoogleFonts.kanit(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
