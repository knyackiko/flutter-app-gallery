import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/picture.dart';

class PostPictures extends StatelessWidget {
  final List<PictureEntity> pictures;

  PostPictures(this.pictures);

  @override
  Widget build(BuildContext context) {
    return Image.asset(pictures[0].path);
  }
}
