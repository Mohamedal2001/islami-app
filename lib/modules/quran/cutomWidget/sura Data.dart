import 'package:flutter/material.dart';

import '../quranpage.dart';

class SuraTitle extends StatelessWidget {
  final Suradata data;

  const SuraTitle({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(data.SuraNumber,textAlign: TextAlign.center)),
        SizedBox(
            height: 50,
            child: const VerticalDivider(thickness: 3,)),
        Expanded(child: Text(data.suraName,textAlign: TextAlign.center,))

      ],
    );
  }
}

