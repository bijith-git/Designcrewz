import 'package:flutter/material.dart';

class CouponBalance extends StatelessWidget {
  const CouponBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Coupon Booking",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "Coupon Balance:75",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
