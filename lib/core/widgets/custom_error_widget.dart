import 'package:books_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMesage});
  final String errMesage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMesage,
      style: Styles.textStyle18,
    );
  }
}
