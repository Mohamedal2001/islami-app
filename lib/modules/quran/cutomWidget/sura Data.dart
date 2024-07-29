import 'package:flutter/material.dart';

import '../quranpage.dart';

class SuraTitle extends StatelessWidget {
  final Suradata data;

  const SuraTitle({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var them =Theme.of(context);
    return Row(
      children: [
        Expanded(child: Text(data.SuraNumber,textAlign: TextAlign.center,style: them.textTheme.titleLarge,)),
        SizedBox(
            height: 50,
            child: const VerticalDivider(thickness: 3,)),
        Expanded(child: Text(data.suraName,textAlign: TextAlign.center,style: them.textTheme.titleLarge))

      ],
    );
  }
}

