import 'package:books_app/core/Utils/Functions/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 25,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
