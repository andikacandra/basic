import 'package:flutter/material.dart';

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    Key? key,
    required this.title,
    required this.warna,
  }) : super(key: key);

  final String title;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      color: warna,
      child: Center(
        child: Text(title),
      ),
    );
  }
}
