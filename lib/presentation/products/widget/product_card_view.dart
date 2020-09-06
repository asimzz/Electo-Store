import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infastructure/products/product_model.dart';
import '../../util/product_image_resize.dart';

class ProductCardView extends StatelessWidget {
  final ProductModel product;
  ProductCardView({
    @required this.product,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shape: ContinuousRectangleBorder(
        side: const BorderSide(width: 0.5),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        padding: EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                  child: ProductPhotoResize(
                productPhoto: product.photo,
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "\$ ${product.price}",
                      style: GoogleFonts.kanit(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "⭐ ${product.averageRating.toStringAsFixed(1)}",
                      style: GoogleFonts.kanit(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
