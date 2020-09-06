import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/product_search_form/product_search_form_bloc.dart';
import '../../../domain/products/value_objects.dart';
import '../../../infastructure/products/product_search_result.dart';
import 'product_search_result_view.dart';

class ProductSearchForm extends StatelessWidget {
  const ProductSearchForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductSearchFormBloc, ProductSearchFormState>(
        listener: (context, state) {
      state.searchFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
                (failure) {
                  Flushbar(
                      margin: const EdgeInsets.all(8),
                      borderRadius: 8,
                      icon: Icon(
                        Icons.error,
                        color: Colors.redAccent,
                      ),
                      duration: Duration(seconds: 3),
                      message: failure.map(
                        productNotFoundError: (_) =>
                            'Failed to find a product with the specified informations',
                        badConnectionError: (_) =>
                            'please check your connection',
                        notAuthorizedError: (_) => 'Please login again',
                        serverError: (_) => 'Server Error',
                        unexpectedError: (_) =>
                            'Unexpected Error please contact support',
                      )).show(context);
                },
                (_) {},
              ));
    }, child: BlocBuilder<ProductSearchFormBloc, ProductSearchFormState>(
            builder: (context, state) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 5, right: 56, top: 38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF123E72),
                        ),
                        onPressed: () {
                          ExtendedNavigator.of(context).pop();
                        },
                      ),
                      Text(
                        'PRODUCT SEARCH',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF123E72),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 280,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Form(
                  autovalidate: state.showErrorMessages,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      counterText: '',
                      border: InputBorder.none,
                      hintText: "Enter Product Name",
                      hintStyle: GoogleFonts.viga(
                        color: Color(0xFF506E91),
                      ),
                    ),
                    onChanged: (value) =>
                        context.bloc<ProductSearchFormBloc>().add(
                              ProductSearchFormEvent.keywordChanged(value),
                            ),
                    validator: (_) => context
                        .bloc<ProductSearchFormBloc>()
                        .state
                        .productSearch
                        .keyword
                        .value
                        .fold(
                          (l) => l.maybeMap(
                            empty: (_) => 'can\'t be empty',
                            exceedingLength: (f) =>
                                'Exceeding length, max: ${f.max}',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                    maxLength: Keyword.maxLength,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Text(
                  'Choose price range',
                  style: GoogleFonts.titilliumWeb(
                    textStyle: TextStyle(
                      fontSize: 19,
                      color: Color(0xFF123E72),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RangeSlider(
                min: 0,
                max: 2000,
                divisions: 200,
                activeColor: Color(0xFF123E72),
                labels: RangeLabels(
                  state.productSearch.priceRangeValues.start.round().toString(),
                  state.productSearch.priceRangeValues.end.round().toString(),
                ),
                values: state.productSearch.priceRangeValues,
                onChanged: (values) {
                  context.bloc<ProductSearchFormBloc>().add(
                        ProductSearchFormEvent.priceRangeValuesChanged(values),
                      );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Text(
                  'Choose rating range',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.titilliumWeb(
                    textStyle: TextStyle(
                      fontSize: 19,
                      color: Color(0xFF123E72),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RangeSlider(
                min: 0,
                max: 10,
                divisions: 10,
                activeColor: Color(0xFF123E72),
                labels: RangeLabels(
                  state.productSearch.ratingRangeValues.start
                      .round()
                      .toString(),
                  state.productSearch.ratingRangeValues.end.round().toString(),
                ),
                values: state.productSearch.ratingRangeValues,
                onChanged: (values) {
                  context.bloc<ProductSearchFormBloc>().add(
                        ProductSearchFormEvent.ratingRangeValuesChanged(values),
                      );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 250,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  shape: StadiumBorder(),
                  onPressed: () {
                    context.bloc<ProductSearchFormBloc>().add(
                          const ProductSearchFormEvent
                              .productSearchButtonPressed(),
                        );
                  },
                  color: Color(0xFF123E72),
                  child: Text(
                    'SEARCH',
                    style: GoogleFonts.doHyeon(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              if (state.isSearching) ...[
                Container(
                  height: 400,
                  child: Center(
                    child: SpinKitFadingFour(
                      color: Color(0xFF123E72),
                    ),
                  ),
                )
              ],
              const SizedBox(
                height: 20,
              ),
              if (state.searchFailureOrSuccessOption.fold(
                      () => null,
                      (either) => either.fold((l) => null,
                          (productSearchResults) => productSearchResults))
                  is ProductSearchResult) ...[
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 80.0),
                        child: Text(
                          'Search Results for "${state.productSearch.keyword.getOrCrash()}":',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.viga(
                            fontSize: 20,
                            color: Color(0xFF0B1A56),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        child: ProductSearchResultView(
                          productSearchResult:
                              state.searchFailureOrSuccessOption.fold(
                            () => null,
                            (either) => either.fold((l) => null,
                                (productSearchResults) => productSearchResults),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ],
          ),
        ),
      );
    }));
  }
}
