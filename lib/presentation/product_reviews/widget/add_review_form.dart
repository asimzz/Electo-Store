import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/reviews_action/reviews_action_bloc.dart';
import '../../../domain/reviews/value_objects.dart';

class AddReviewForm extends StatelessWidget {
  final String productId;
  const AddReviewForm({
    Key key,
    @required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReviewsActionBloc, ReviewsActionState>(
      listener: (context, state) {
        state.reviewFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) => Flushbar(
              margin: const EdgeInsets.all(8),
              borderRadius: 8,
              icon: Icon(
                Icons.error,
                color: Colors.redAccent,
              ),
              duration: Duration(seconds: 3),
              message: failure.map(
                dublicateReview: (_) =>
                    'you already have a review you can update but you can\'t add another one',
                badConnectionError: (_) => 'please check your connection',
                notAuthorizedError: (_) => 'Please login again',
                serverError: (_) => 'Server Error',
                unexpectedError: (_) =>
                    'Unexpected Error please contact support',
              ),
            ).show(context),
            (r) => null,
          ),
        );
      },
      child: BlocBuilder<ReviewsActionBloc, ReviewsActionState>(
          builder: (context, state) {
        return AlertDialog(
          title: Text(
            'Your Review Info: ',
            style: GoogleFonts.viga(
              color: Color(0xFF123E72),
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                    height: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              print('WTF Work? ${state.rating}');
                              context.bloc<ReviewsActionBloc>().add(
                                  ReviewsActionEvent.ratingChanged(index + 1));
                            },
                            child: Icon(
                              index + 1 <= state.rating
                                  ? Icons.star_rate
                                  : Icons.star_border,
                              size: 32,
                            ));
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 12);
                      },
                    ),
                  ),
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Form(
                    autovalidate: state.showErrorMessages,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        maxLines: 5,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                          hintText: "Your feedback about this product?",
                          hintStyle: GoogleFonts.viga(
                            color: Color(0xFF123E72),
                          ),
                        ),
                        onChanged: (value) =>
                            context.bloc<ReviewsActionBloc>().add(
                                  ReviewsActionEvent.reviewTextChanged(value),
                                ),
                        validator: (_) => context
                            .bloc<ReviewsActionBloc>()
                            .state
                            .reviewText
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
                        maxLength: ReviewText.maxLength,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              onPressed: () {
                context
                    .bloc<ReviewsActionBloc>()
                    .add(ReviewsActionEvent.addNewReviewPressed(productId));
                if (state.reviewText.isValid())
                  ExtendedNavigator.of(context).pop();
              },
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Text(
                  'Submit Review',
                  style: GoogleFonts.jockeyOne(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
