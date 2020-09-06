import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infastructure/products/product_model.dart';
import '../../product_reviews/add_review_page.dart';
import '../../product_reviews/product_reviews_page.dart';
import '../../util/product_image_resize.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductModel productModel;
  ProductDetailsPage({this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF123E72),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ),
          onPressed: () => ExtendedNavigator.of(context).pop(),
        ),
        title: Text(
          'Product Details',
          style: GoogleFonts.viga(
            textStyle: TextStyle(),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        // margin: EdgeInsets.only(top: 50.0),
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Container(
                height: 200,
                width: 200,
                child: Center(
                    child: ProductPhotoResize(
                  productPhoto: productModel.photo,
                )),
              ),
              SizedBox(height: 15.0),
              Text(
                productModel.name,
                style: GoogleFonts.righteous(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                )),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Text(
                      '\$ ${productModel.price}',
                      style: GoogleFonts.viga(
                        textStyle: TextStyle(
                          color: Colors.amber,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Left in Stock: ${productModel.countInStock}',
                    style: GoogleFonts.viga(
                      textStyle: TextStyle(
                        color: productModel.countInStock <= 5
                            ? Colors.red
                            : Colors.amber,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.star,
                    color: Colors.amber,
                    size: 18,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${productModel.averageRating.toStringAsFixed(1)}',
                    style: GoogleFonts.viga(
                      textStyle: TextStyle(
                        color: Colors.amber,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.building,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 270,
                    child: Text(
                      "${productModel.company}",
                      style: GoogleFonts.viga(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Product Description: ',
                    style: GoogleFonts.viga(
                      textStyle: TextStyle(
                        color: Colors.amber,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                productModel.description,
                style: TextStyle(
                  fontFamily: GoogleFonts.viga().fontFamily,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ProductReviewsPage(
                productId: productModel.id,
              ),
              SizedBox(
                height: 10,
              ),
              AddReviewPage(
                productId: productModel.id,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          padding: EdgeInsets.only(left: 18.0, bottom: 25.0, right: 18.0),
          // margin: EdgeInsets.only(bottom: 25.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Icon(
                  Icons.bookmark_border,
                  color: Colors.amber,
                ),
              ),
              Container(
                width: 50.0,
                height: 50.0,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.amber.withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.amber,
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () async {
                      print(
                          'It should take you to this linke ${productModel.createdAt}');
                    },
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Text(
                            'Add To Cart',
                            style: GoogleFonts.jockeyOne(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
