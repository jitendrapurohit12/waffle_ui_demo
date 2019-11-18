import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  final Color color;

  const RatingWidget({this.rating, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Icon(
            index + 1 <= rating ? Icons.star : Icons.star_border,
            color: color,
            size: 22,
          ),
        );
      }),
    );
  }
}
