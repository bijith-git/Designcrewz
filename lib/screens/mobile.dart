import 'package:dctest/components/coupon_balance.dart';
import 'package:dctest/components/coupons.dart';
import 'package:dctest/components/help_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[100],
          toolbarHeight: 100,
          flexibleSpace: SvgPicture.asset('assets/top_banner.svg')),
      body: SingleChildScrollView(
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
              img: "assets/coupons/100.svg",
              title: "100 Coupons",
              val: 100,
            ),
            const Coupones(
              img: "assets/coupons/50.svg",
              title: "50 Coupons",
              val: 50,
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
      bottomNavigationBar: BottomNavigationBar(
          // landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.grey,
          unselectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 28, 33, 28),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    "assets/icons/profile.svg",
                    width: 30,
                  ),
                ),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 28, 33, 28),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/icons/message.svg",
                      width: 30,
                    )),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 28, 33, 28),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/icons/home.svg",
                      width: 30,
                    )),
                label: ""),
            BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 28, 33, 28),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/icons/Order_list.svg",
                      width: 30,
                    )),
                label: "Order"),
            BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 28, 33, 28),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(
                      "assets/icons/track_Icon.svg",
                      width: 30,
                    )),
                label: "Track"),
          ]),
    );
  }
}
