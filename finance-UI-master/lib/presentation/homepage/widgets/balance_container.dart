import 'package:flutter/material.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 40,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF262626),
        borderRadius: BorderRadius.circular(40),
      ),
      child: const Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Thu 3 2023",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "\$70 tỷ",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
          Spacer(),
          Text(
            '100%',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.arrow_upward,
            size: 25,
          ),
        ],
      ),
    );
  }
}
