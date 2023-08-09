import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tennis_app2/core/color.dart';
import 'package:tennis_app2/widgets/customactionbuttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CustomActionButton(
                  backgroundColor: AppColor.secondDarkColor,
                  boxIcon: FontAwesomeIcons.bars,
                  iconColor: const Color.fromARGB(255, 245, 238, 238),
                ),
                const Expanded(child: Text("")),
                const CustomActionButton(
                  boxIcon: FontAwesomeIcons.magnifyingGlass,
                  backgroundColor: Color.fromARGB(255, 255, 248, 248),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Tiệm xe đạp của Tài",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                CustomTrainCard(
                  image: 'assets/images/tennis player1.jpeg',
                ),
                CustomTrainCard(
                  image: 'assets/images/play tenis.png',
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Row(
              children: [
                Text(
                  "Sản phẩm",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryDarkColor),
                ),
                const Expanded(child: Text("")),
                Text(
                  "Tai's",
                  style:
                      TextStyle(fontSize: 20, color: AppColor.secondDarkColor),
                ),
              ],
            ),
          ),
          // SizedBox(height: 10),
          const CustomAcvityTrain(
            image: 'assets/images/yogacol.png',
            title: 'Road bike và Hybrid bike  ',
            labelTime: 'Feb 28 | 10:00am - 11:00 am',
            price: r'10k',
          ),
          const CustomAcvityTrain(
            image: 'assets/images/iconTennis.jpg',
            title: 'Xe đạp hiện đại  ',
            labelTime: 'July 17 | 12:00pm - 3:00 pm',
            price: r'20k',
          ),
          const CustomAcvityTrain(
            image: 'assets/images/arm3d.jpg',
            title: 'Xe đạp leo núi',
            labelTime: 'Feb 27 | 10:00am - 11:00 am',
            price: r'30k',
          ),
        ],
      ),
    ));
  }
}

class CustomAcvityTrain extends StatelessWidget {
  const CustomAcvityTrain({
    Key? key,
    required this.image,
    required this.title,
    required this.labelTime,
    required this.price,
  }) : super(key: key);

  final String image;
  final String title;
  final String labelTime;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                labelTime,
                style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(136, 110, 103, 103),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Expanded(child: Text("")),
          Container(
            alignment: Alignment.center,
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: AppColor.secondDarkColor,
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              price,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Roboto",
                  fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTrainCard extends StatelessWidget {
  const CustomTrainCard({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 270,
        height: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ảnh thiếu nữ và chàng trai",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Tất cả ảnh",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Expanded(child: Text("")),
              const Text(
                "2 ảnh",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
