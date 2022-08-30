import 'package:dctest/components/coupons.dart';
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
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Coupon Booking",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Coupon Balance:75",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
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
            ),
            const Coupones(
              img: "assets/coupons/50.svg",
              title: "50 Coupons",
            ),
            const Coupones(
              img: "assets/coupons/25.svg",
              title: "25 Coupons",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg"), label: "Home"),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/message.svg"), label: ""),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Order_list.svg"), label: ""),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/track_Icon.svg"), label: ""),
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/profile.svg"), label: ""),
      ]),
    );
  }
}
