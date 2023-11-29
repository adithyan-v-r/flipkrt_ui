import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  LogoContainer({super.key,required this.icon});

  String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 20,
      child: Column(children: [
        Container(
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(3),color: CupertinoColors.systemGrey,
              image: DecorationImage(image: AssetImage(icon))),
        )

      ]),
    );
  }
}
