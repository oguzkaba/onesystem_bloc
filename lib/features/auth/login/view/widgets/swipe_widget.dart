import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:onesystem_bloc/core/constants/colors/colors_constants.dart';
import 'package:onesystem_bloc/core/constants/images/image_constants.dart';
import 'package:onesystem_bloc/core/extansions/context_extension.dart';
import 'package:onesystem_bloc/features/providers/ui_visibility_provider.dart';
import 'package:provider/provider.dart';

class SwipeWidget extends StatelessWidget {
  const SwipeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.watch<UIVisibilityProvider>().isSwipeWidgetVisible,
      child: Container(
        decoration: BoxDecoration(
          color: ColorsConstants.myWhite,
          boxShadow: [
            BoxShadow(
                color: ColorsConstants.myDark.withOpacity(.2),
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
            control: const SwiperControl(color: ColorsConstants.myDark),
            pagination: SwiperPagination(
              margin: const EdgeInsets.only(bottom: 30),
              builder: DotSwiperPaginationBuilder(
                  color: ColorsConstants.myLight.withOpacity(.3),
                  activeColor: ColorsConstants.myBlue,
                  activeSize: 15.0),
            ),
          ),
          Positioned(
              child: Align(
            alignment: Alignment.topCenter,
            child: IconButton(
                // ignore: avoid_returning_null_for_void
                onPressed: () => context
                    .read<UIVisibilityProvider>()
                    .changeSwipeWidgetVisible(),
                icon: const Icon(Icons.cancel)),
          ))
        ]),
      ),
    );
  }
}
