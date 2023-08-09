import 'package:finance/presentation/homepage/widgets/balance_container.dart';
import 'package:finance/presentation/homepage/widgets/tools_select.dart';
import 'package:finance/presentation/profile/profile_page.dart';
import 'package:finance/presentation/shared/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_chart.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF000000),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              ProfilePage.routeName,
            ),
            icon: const Hero(
              tag: 'profile-hero',
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/fa/cf/10/facf10980b28a60c9f755c59aba40d39.jpg",
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 13),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "Bánh kem",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const BalanceContainer(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SentReceive(
                  icon: Icons.arrow_upward,
                  label: "giá kem",
                  iconColor: Colors.pink,
                ),
                SentReceive(
                  icon: Icons.arrow_downward,
                  label: "giá nhận",
                  iconColor: Colors.green,
                ),
                SentReceive(
                  icon: Icons.money,
                  label: "Thái",
                  iconColor: Colors.yellow,
                ),
                SentReceive(
                  icon: Icons.cloud_upload,
                  label: "Tài",
                  iconColor: Colors.purple,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Activities",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF262626),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text("This Year"),
                ),
              ],
            ),
            const CustomChart(),
          ],
        ),
      ),
    );
  }
}
