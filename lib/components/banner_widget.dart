import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp12/components/data.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: banner.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            child: Image.asset(
              banner[itemIndex],
              fit: BoxFit.cover,
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 1,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
