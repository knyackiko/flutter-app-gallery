import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/picture.dart';
import 'package:infinitescrolldemoapp/entity/post_comment.dart';
import 'package:infinitescrolldemoapp/entity/user.dart';

class PostEntity {
  final List<PictureEntity> pictures;
  final String caption;
  final bool hasProduct;
  final UserEntity user;
  final List<UserEntity> likeUsers;
  final List<PostCommentEntity> postComments;
  final DateTime postedTime;

  PostEntity({
    @required this.pictures,
    this.caption,
    this.hasProduct = false,
    @required this.user,
    this.likeUsers,
    this.postComments,
    @required this.postedTime,
  });
}

final posts = <PostEntity>[
  PostEntity(
    pictures: [PictureEntity(path: 'assets/chinese_cuisine.jpeg')],
    caption: '銀座で四川料理。辛くて美味しかった！',
    hasProduct: true,
    user: kyklades,
    postedTime: DateTime.now().subtract(Duration(minutes: 23)),
  ),
  PostEntity(
    pictures: [PictureEntity(path: 'assets/flower.jpeg')],
    caption: '一人で新宿御苑。',
    user: kyklades,
    likeUsers: [gsshgfd],
    postedTime: DateTime.now().subtract(Duration(hours: 1)),
  ),
  PostEntity(
    pictures: [
      PictureEntity(path: 'assets/sushi1.jpeg'),
      PictureEntity(path: 'assets/sushi2.jpeg'),
      PictureEntity(path: 'assets/sushi3.jpeg'),
      PictureEntity(path: 'assets/sushi4.jpeg'),
    ],
    caption: '富山で食べたお寿司は全部美味しかったー！',
    user: kyklades,
    postedTime: DateTime.now().subtract(Duration(hours: 6)),
  ),
  PostEntity(
    pictures: [PictureEntity(path: 'assets/mothers_day.jpeg')],
    caption: '今年の母の日は何も考えてない。。。\n#母の日',
    hasProduct: true,
    user: kyklades,
    postedTime: DateTime.now().subtract(Duration(days: 1)),
  ),
  PostEntity(
    pictures: [PictureEntity(path: 'assets/obanzai.jpeg')],
    caption: 'いろんな種類のおばんざいを食べられるからお気に入り。',
    user: kyklades,
    postedTime: DateTime.now().subtract(Duration(days: 2)),
  ),
  PostEntity(
    pictures: [
      PictureEntity(path: 'assets/poppies1.jpeg'),
      PictureEntity(path: 'assets/poppies2.jpeg'),
      PictureEntity(path: 'assets/poppies3.jpeg'),
    ],
    caption:
        '一面真っ赤で綺麗だった！天気も良くて、写真映えしました。めっちゃ暑かったけど行ってよかったなー。また行きたいな。\n#天空のポピー #埼玉',
    user: kyklades,
    likeUsers: [adfs, qewW],
    postedTime: DateTime.now().subtract(Duration(days: 6)),
  ),
  PostEntity(
    pictures: [PictureEntity(path: 'assets/swan.jpeg')],
    caption: 'どこぞで乗ったスワンボート。#象徴',
    user: kyklades,
    postedTime: DateTime.now().subtract(Duration(days: 7)),
  ),
  PostEntity(
    pictures: [PictureEntity(path: 'assets/umbrella.jpeg')],
    caption:
        '鳥取に遊びに行ったときにドライブで連れて行ってもらった由志園。\n島根にあるんだけど、めっちゃ近かった。\n#大根島 #由志園 #ライトアップ #牡丹が有名',
    user: kyklades,
    likeUsers: [qewW, adfs, gsshgfd],
    postedTime: DateTime.now().subtract(Duration(days: 366)),
  ),
];
