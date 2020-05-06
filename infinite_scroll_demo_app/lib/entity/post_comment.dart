import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/user.dart';

class PostCommentEntity {
  final String id;
  final UserEntity user;
  final String comment;
  final String parentId;

  PostCommentEntity({
    @required this.id,
    @required this.user,
    @required this.comment,
    this.parentId,
  });
}
