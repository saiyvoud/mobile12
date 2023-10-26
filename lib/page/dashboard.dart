import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  // stateless ແມ່ນຫຍັງ? ===> Widget ທິ່ສ້າງຂື້ນມາໃສ່ສະເພາະສະແດງຂໍ້ມູນແລະຮັບຂໍ້ມູນ ເຊິ່ງບໍ່ມີການຄືນຄ່າຂໍ້ມູນເມື່ອມີການປ່ຽນແປງແບບກະທັນຫັນ

  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        child: Center(child: Text("Version 1.0.0")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 200),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                  height: 140,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Text(
            //   "ແອັບພິເຄຊັນຊື້ຂາຍປື້ມອອນລາຍ",
            //   style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black),
            // )
          ],
        ),
      ),
    );
  }
}
