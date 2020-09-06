import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/reviews_action/reviews_action_bloc.dart';
import '../../injection.dart';
import 'widget/add_review_form.dart';

class AddReviewPage extends StatelessWidget {
  final String productId;

  const AddReviewPage({
    Key key,
    @required this.productId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: RaisedButton(
        color: Color(0xFF123E72),
        onPressed: () => {
          _showAddReviewDialog(
            context,
            productId,
          ),
        },
        child: Center(
          child: Text(
            'ADD REVIEW',
            textAlign: TextAlign.center,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: 12,
              color: Colors.white,
            )),
          ),
        ),
      ),
    );
  }

  Future<void> _showAddReviewDialog(context, String productId) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return BlocProvider(
            create: (context) => getIt<ReviewsActionBloc>(),
            child: AddReviewForm(
              productId: productId,
            ),
          );
        });
  }
}
