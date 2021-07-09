import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class CommonCarousel extends StatelessWidget{
  final List<Widget> itemsCarousel;

  const CommonCarousel({Key? key, required this.itemsCarousel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      CarouselSlider(
          items: itemsCarousel,
          options: CarouselOptions(

            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          )
      );
    throw UnimplementedError();
  }

}