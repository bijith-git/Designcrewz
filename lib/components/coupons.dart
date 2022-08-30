import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Coupones extends StatelessWidget {
  const Coupones({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);

  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SvgPicture.asset(img),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Divider(
                  thickness: 100,
                  height: 10,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width * .35,
                  child: const Text(
                    'You can book here for your coupons.And you can pay for it at the next delivery.100 coupons will be added to your account Once it is paid',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: const Color(0xff943DC1),
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: const Text(
                    "Book now",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
