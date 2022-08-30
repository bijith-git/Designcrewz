import 'package:dctest/components/coupon_balance.dart';
import 'package:dctest/components/coupons.dart';
import 'package:dctest/components/help_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[100],
          toolbarHeight: 100,
          flexibleSpace: SvgPicture.asset('assets/top_banner.svg')),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CouponBalance(),
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  color: Colors.grey,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const Coupones(
                  val: 100,
                  img: "assets/coupons/100.svg",
                  title: "100 Coupons",
                ),
                const Coupones(
                  val: 50,
                  img: "assets/coupons/50.svg",
                  title: "50 Coupons",
                ),
                const Coupones(
                  img: "assets/coupons/25.svg",
                  title: "25 Coupons",
                  val: 25,
                ),
                const HelpBox()
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          top: 0,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  "assets/icons/profile.svg",
                  width: 30,
                ),
                const Text('Profile',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
                SvgPicture.asset(
                  "assets/icons/message.svg",
                  width: 30,
                ),
                const Text('Message',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
                SvgPicture.asset(
                  "assets/icons/Home.svg",
                  width: 30,
                ),
                const SizedBox(
                  height: 30,
                ),
                SvgPicture.asset(
                  "assets/icons/Order_list.svg",
                  width: 30,
                ),
                const Text('Order',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
                SvgPicture.asset(
                  "assets/icons/Track_Icon.svg",
                  width: 30,
                ),
                const Text('Track',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14)),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
