import 'package:flutter/material.dart';

class UserEntity {
  final String userName;
  final String userIconPath;

  UserEntity({@required this.userName, this.userIconPath});
}

final kyklades =
    UserEntity(userName: 'kyklades', userIconPath: 'assets/tomato.png');
