import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpBox extends StatelessWidget {
  const HelpBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "Need Help?\n",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "Call Customer Care")
            ])),
          ),
          Expanded(
              child: SvgPicture.asset(
            "assets/help_Bottom.svg",
          ))
        ],
      ),
    );
  }
}
