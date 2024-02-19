import 'package:flutter/material.dart';
import 'package:tyasart/core/constant/imgaeasset.dart';

import '../../../view/screen/chat/chat.dart';
import '../../../view/screen/home/home.dart';
import '../../../view/screen/notification/notification.dart';
import '../../../view/screen/profile/user_profilr.dart';

const List<String> navBarIconDataSource = [
  AppImageAsset.home,
  AppImageAsset.notification,
  '',
  AppImageAsset.chat,
  AppImageAsset.profile
];

const List<Widget> navBarItemsBody = [Home(), Notifications(), Chat(), Profile()];
