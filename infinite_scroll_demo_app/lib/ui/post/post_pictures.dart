import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/picture.dart';

class PostPictures extends StatelessWidget {
  final List<PictureEntity> pictures;
  final PageController _pageController = PageController(initialPage: 0);

  PostPictures(this.pictures);

  @override
  Widget build(BuildContext context) {
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
        children: _images(),
      ),
    );
  }

  List<Widget> _images() {
    if (pictures.length == 1) {
      return pictures
          .map((picture) => Image.asset(
                picture.path,
                fit: BoxFit.fill,
              ))
          .toList();
    }

    return pictures.asMap().entries.map((entry) {
      final picture = entry.value;
      final index = entry.key;
      return Stack(
        children: [
          Image.asset(
            picture.path,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
              child: Text('${index + 1}/${pictures.length}',
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      );
    }).toList();
  }
}
