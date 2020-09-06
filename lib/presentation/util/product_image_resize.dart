import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

const BASE_IMAGE_URL = 'https://electro-store-api.herokuapp.com/uploads/';

class ProductPhotoResize extends StatefulWidget {
  final String productPhoto;

  const ProductPhotoResize({
    Key key,
    @required this.productPhoto,
  }) : super(key: key);
  _ProductPhotoResizeState createState() => _ProductPhotoResizeState();
}

class _ProductPhotoResizeState extends State<ProductPhotoResize>
    with SingleTickerProviderStateMixin {
  //Uses a Ticker Mixin for Animations
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                2)); //specify the duration for the animation & include `this` for the vsyc
    _animation = Tween<double>(begin: 1.0, end: 3.5).animate(
        _animationController); //use Tween animation here, to animate between the values of 1.0 & 2.5.

    _animation.addListener(() {
      //here, a listener that rebuilds our widget tree when animation.value changes
      setState(() {});
    });

    _animation.addStatusListener((status) {
      //AnimationStatus gives the current status of our animation, we want to go back to its previous state after completing its animation
      if (status == AnimationStatus.completed) {
        _animationController
            .reverse(); //reverse the animation back here if its completed
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final productPhoto = widget.productPhoto;
    return Center(
      child: GestureDetector(
        onTap: () {
          _animationController
              .forward(); // tapping the button, starts the animation.
        },
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: BASE_IMAGE_URL + productPhoto,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
