import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infastructure/reviews/reviews_result_model.dart';

class ShowReviewsWidget extends StatefulWidget {
  final ReviewsResultModel reviewsResultModel;
  const ShowReviewsWidget({
    Key key,
    this.reviewsResultModel,
  }) : super(key: key);

  @override
  _ShowReviewsWidgetState createState() => _ShowReviewsWidgetState();
}

class _ShowReviewsWidgetState extends State<ShowReviewsWidget>
    with SingleTickerProviderStateMixin {
  bool hide = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);

    _slideAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reviewsResultModel = widget.reviewsResultModel;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${reviewsResultModel.count} Reviews',
              style: GoogleFonts.viga(
                textStyle: TextStyle(
                  color: Colors.amber,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textAlign: TextAlign.start,
            ),
            IconButton(
              icon: Icon(
                reviewsResultModel.count == 0
                    ? null
                    : hide
                        ? Icons.arrow_downward_sharp
                        : Icons.arrow_upward_sharp,
              ),
              onPressed: hideReviews,
            )
          ],
        ),
        SlideTransition(
          position: _slideAnimation,
          child: Column(
            children: [
              Container(
                height: hide || reviewsResultModel.count == 0 ? 0 : 250,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final review = reviewsResultModel.data[index];
                    return Column(
                      children: [
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  review.user.name,
                                  style: GoogleFonts.breeSerif(),
                                ),
                              ),
                              Container(
                                height: 10,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Icon(
                                      index + 1 <= review.rating
                                          ? Icons.star_rate
                                          : Icons.star_border,
                                      size: 15,
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(width: 12);
                                  },
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(
                            review.text,
                            style: GoogleFonts.kanit(),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: reviewsResultModel.data.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 5,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void hideReviews() {
    setState(() {
      if (hide)
        _controller.forward();
      else
        _controller.reverse();
      hide = !hide;
    });
  }
}
