import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/product_search_delegate.dart';

class ProductSearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        onTap: () async {
          await showSearch(
            context: context,
            delegate: ProductSearchDelegate(),
          );
        },
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            size: 25.0,
            color: Color(0xFF506E91),
          ),
          border: InputBorder.none,
          hintText: "Search for products",
          hintStyle: GoogleFonts.viga(
            color: Color(0xFF506E91),
          ),
        ),
      ),
    );
  }
}
