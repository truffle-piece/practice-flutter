import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  final String emoticonText;

  const EmoticonFace({
    Key? key,
    required this.emoticonFace,
    required this.emoticonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(8)),
            padding: EdgeInsets.all(16),
            child: Center(
              child: Text(
                emoticonFace,
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          emoticonText,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
