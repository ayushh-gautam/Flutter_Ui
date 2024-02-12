import 'package:flutter/material.dart';

class UsersPostDetails extends StatelessWidget {
  String numbers;
  String details;
  UsersPostDetails({
    Key? key,
    required this.numbers,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numbers,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        Text(details, style: const TextStyle(color: Colors.black, fontSize: 20))
      ],
    );
  }
}