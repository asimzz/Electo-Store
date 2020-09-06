import '../../../application/product_watch/product_watcher_bloc.dart';
import 'package:electo_store/infastructure/products/pagination_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberOfPagesButton extends StatelessWidget {
  final PaginationModel pagination;

  const NumberOfPagesButton({Key key, this.pagination}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (pagination.previousPage != null) ...[
          Row(
            children: [
              Container(
                height: 30,
                width: 50,
                margin: const EdgeInsets.all(7.0),
                child: RaisedButton(
                  color: Color(0xFF123E72),
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    size: 20,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    context.bloc<ProductWatcherBloc>().add(ProductWatcherEvent
                            .watchProductsWithPageNumberSpecified(
                          pagination.previousPage.page.toString(),
                        ));
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(7.0),
                padding:
                    const EdgeInsets.symmetric(vertical: 3.0, horizontal: 9.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xFF94ABC6))),
                child: Text(
                  pagination.previousPage.page.toString(),
                  style: GoogleFonts.hind(
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF123E72),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 9.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFF123E72),
            ),
            color: Color(0xFF123E72),
          ),
          child: Text(
            pagination.currentPage.page.toString(),
            style: GoogleFonts.hind(
              textStyle: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        if (pagination.nextPage != null) ...[
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(7.0),
                padding:
                    const EdgeInsets.symmetric(vertical: 3.0, horizontal: 9.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Color(0xFF94ABC6))),
                child: Text(
                  pagination.nextPage.page.toString(),
                  style: GoogleFonts.hind(
                    textStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF123E72),
                    ),
                  ),
                ),
              ),
              Container(
                height: 30,
                width: 50,
                margin: const EdgeInsets.all(7.0),
                child: RaisedButton(
                  color: Color(0xFF123E72),
                  child: Icon(
                    FontAwesomeIcons.arrowRight,
                    size: 20,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    context.bloc<ProductWatcherBloc>().add(ProductWatcherEvent
                            .watchProductsWithPageNumberSpecified(
                          pagination.nextPage.page.toString(),
                        ));
                  },
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}
