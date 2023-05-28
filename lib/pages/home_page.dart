import 'package:flutter/material.dart';
import 'package:login_form/constant/colors.dart';
import 'package:login_form/constant/dimens.dart';
import 'package:login_form/constant/strings.dart';

import '../item_views/home_page_item_views/home_page_item_views.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondaryColor,
        title: const Text(kProfileText),
        leading: const Icon(Icons.chevron_left),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: kSP15x,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: kSP10x,
          )
        ],
      ),
      body: const Column(
        children: [
          CircleAvatarImageItemView(),
          SizedBox(
            height: kSP8x,
          ),
          InputLayerItemView()
        ],
      ),
    );
  }
}
