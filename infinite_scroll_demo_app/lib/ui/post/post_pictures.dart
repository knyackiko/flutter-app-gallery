import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/picture.dart';

class PostPictures extends StatelessWidget {
  final List<PictureEntity> pictures;
  final PageController _pageController = PageController(initialPage: 0);

  PostPictures(this.pictures);

  @override
  Widget build(BuildContext context) {
    final images = pictures
        .map((picture) => Image.asset(
              picture.path,
              fit: BoxFit.fill,
            ))
        .toList();

    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(color: Colors.grey, width: 0.3),
        ),
      ),
      height: width,
      child: PageView(
        controller: _pageController,
        children: images,
      ),
    );
  }
}
