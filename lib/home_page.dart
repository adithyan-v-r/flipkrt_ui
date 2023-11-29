import 'dart:math';

import 'package:flipkrt_ui/logo_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_media_slider/carousel_media.dart';
import 'package:flutter_carousel_media_slider/flutter_carousel_media_slider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List logo = [
    'assets/icons/cam.jpg',
    'assets/icons/emi.jpg',
    'assets/icons/frdrop.jpg',
    'assets/icons/lvshop.jpg',
    'assets/icons/money.jpg',
    'assets/icons/ngen.jpg'
  ];
  List<CarouselMedia> media = [
    CarouselMedia(
      mediaName: 'Image 1',
      mediaUrl:
          'https://m.media-amazon.com/images/S/aplus-media-library-service-media/2141f46c-f81b-46c1-9f3b-edb82e669538.__CR0,0,600,450_PT0_SX600_V1___.jpg',
      mediaType: CarouselMediaType.image,
      carouselImageSource: CarouselImageSource.network,
    ),
    CarouselMedia(
      mediaName: 'Image 2',
      mediaUrl: '',
      mediaType: CarouselMediaType.image,
      carouselImageSource: CarouselImageSource.network,
    ),
    CarouselMedia(
      mediaName: 'Image 5',
      mediaUrl: '',
      mediaType: CarouselMediaType.video,
      carouselImageSource: CarouselImageSource.network,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
                suffixIconColor: Colors.grey,
                suffixIcon: Icon(Icons.mic_none_sharp),
                prefixIconColor: Colors.grey,
                prefixIcon: Icon(Icons.search),
                focusedBorder: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.grey)),
                hintText: "iphone 12s"),
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, i) {
            return Container(height: 30,width: 20,
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(3),color: CupertinoColors.systemGrey,
                  image: DecorationImage(image: AssetImage(logo[i]))),
            );
          },
        )
      ],
    ));
  }
}
