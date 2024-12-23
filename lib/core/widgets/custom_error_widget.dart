import 'package:books_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMesage});
  final String errMesage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMesage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
