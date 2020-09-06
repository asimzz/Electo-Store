import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../application/reviews_watcher/reviews_watcher_bloc.dart';
import 'show_reviews_widget.dart';

class ProductReviewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ReviewsWatcherBloc, ReviewsWatcherState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () => {},
                loadFailure: (failure) => Flushbar(
                      margin: const EdgeInsets.all(8),
                      borderRadius: 8,
                      icon: Icon(
                        Icons.error,
                        color: Colors.redAccent,
                      ),
                      duration: Duration(seconds: 3),
                      message: failure.reviewFailure.map(
                        dublicateReview: (_) =>
                            'you already have a review you can update but you can\'t add another one',
                        badConnectionError: (_) =>
                            'please check your connection',
                        notAuthorizedError: (_) => 'Please login again',
                        serverError: (_) => 'Server Error',
                        unexpectedError: (_) =>
                            'Unexpected Error please contact support',
                      ),
                    ).show(context));
          },
        ),
      ],
      child: BlocBuilder<ReviewsWatcherBloc, ReviewsWatcherState>(
        builder: (context, state) {
          return state.map(initial: (_) {
            return Container();
          }, loadInProgress: (_) {
            return const Center(
              child: SpinKitThreeBounce(
                color: Color(0xFF123E72),
                size: 30,
              ),
            );
          }, loadSuccess: (state) {
            return ShowReviewsWidget(
              reviewsResultModel: state.reviewsResultModel,
            );
          }, loadFailure: (_) {
            return Container();
          });
        },
      ),
    );
  }
}
