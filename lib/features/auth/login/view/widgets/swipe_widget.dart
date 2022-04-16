import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';
import 'package:onesystem_bloc/core/constants/images/image_constants.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';

class SwipeWidget extends StatelessWidget {
  const SwipeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsConstants.white,
        boxShadow: [
          BoxShadow(
              color: ColorsConstants.dark_default.withOpacity(.2),
              blurRadius: 2,
              offset: const Offset(0.5, 0.0),
              spreadRadius: 2)
        ],
      ),

      height: context.height,
      //color: Global.white, //tc.isColorChangeWD(),
      child: Stack(children: [
        Swiper(
          scale: 0.8,
          viewportFraction: 0.9,
          itemCount: ImageConstants.imagesIntro.length,
          itemBuilder: (context, index) {
            return Image.asset(
              ImageConstants.imagesIntro[index],
              fit: BoxFit.contain,
            );
          },
          autoplay: true,
          autoplayDelay: 5000,
          control: const SwiperControl(color: ColorsConstants.dark_default),
          pagination: const SwiperPagination(
            margin: EdgeInsets.only(bottom: 30),
            builder: DotSwiperPaginationBuilder(
                activeColor: ColorsConstants.focusedBlue, activeSize: 15.0),
          ),
        ),
        Positioned(
            child: Align(
          alignment: Alignment.topCenter,
          child: IconButton(
              // ignore: avoid_returning_null_for_void
              onPressed: () => null,
              icon: const Icon(Icons.cancel)),
        ))
      ]),
    );
  }
}
