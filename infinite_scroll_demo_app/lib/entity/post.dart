import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/picture.dart';
import 'package:infinitescrolldemoapp/entity/user.dart';

class PostEntity {
  final PictureEntity picture;
  final bool isMultiple;
  final bool hasProduct;
  final UserEntity user;

  PostEntity(
      {@required this.picture,
      this.isMultiple = false,
      this.hasProduct = false,
      @required this.user});
}

final posts = <PostEntity>[
  PostEntity(
      picture: PictureEntity(path: 'assets/chinese_cuisine.jpeg'),
      isMultiple: true,
      hasProduct: true,
      user: kyklades),
  PostEntity(
      picture: PictureEntity(path: 'assets/flower.jpeg'),
      isMultiple: true,
      user: kyklades),
  PostEntity(
      picture: PictureEntity(path: 'assets/ikura.jpeg'),
      isMultiple: true,
      user: kyklades),
  PostEntity(
      picture: PictureEntity(path: 'assets/mothers_day.jpeg'),
      hasProduct: true,
      user: kyklades),
  PostEntity(
      picture: PictureEntity(path: 'assets/obanzai.jpeg'), user: kyklades),
  PostEntity(
      picture: PictureEntity(path: 'assets/poppies.jpeg'),
      isMultiple: true,
      user: kyklades),
  PostEntity(picture: PictureEntity(path: 'assets/swan.jpeg'), user: kyklades),
  PostEntity(
      picture: PictureEntity(path: 'assets/umbrella.jpeg'), user: kyklades),
];
