import 'package:dctest/components/coupon_balance.dart';
import 'package:dctest/components/coupons.dart';
import 'package:dctest/components/help_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        flexibleSpace: SvgPicture.asset('assets/top_banner.svg'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CouponBalance(),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 1, vertical: 2),
              width: MediaQuery.of(context).size.width * .6,
              color: Colors.grey,
            ),
            Divider(
              color: Colors.grey,
            ),
            const Coupones(
              img: "assets/coupons/100.svg",
              title: "100 Coupons",
            ),
            const Coupones(
              img: "assets/coupons/50.svg",
              title: "50 Coupons",
            ),
            const Coupones(
              img: "assets/coupons/25.svg",
              title: "25 Coupons",
            ),
            const HelpBox()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
