import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'News',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          TextSpan(
            text: 'App',
            style: TextStyle(color: Colors.orange, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
