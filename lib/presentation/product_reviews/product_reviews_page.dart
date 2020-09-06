import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/reviews_watcher/reviews_watcher_bloc.dart';
import '../../injection.dart';
import 'widget/product_reviews_widget.dart';

class ProductReviewsPage extends StatelessWidget {
  final String productId;

  const ProductReviewsPage({
    Key key,
    @required this.productId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ReviewsWatcherBloc>()
            ..add(ReviewsWatcherEvent.watchAllStarted(productId)),
        ),
      ],
      child: ProductReviewsWidget(),
    );
  }
}
