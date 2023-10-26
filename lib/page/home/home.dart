import 'package:flutter/material.dart';
import 'package:mobileapp12/components/banner_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // responesive
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25),
            Container(
              height: size.height / 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
               // color: Colors.red,
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.orange,
                    ),
                    child: Stack(
                      children: [
                        BannerWidget(),
                        Positioned(
                          top: 10,
                          // right: 100,
                          left: 20,
                          child: Row(
                            children: [
                              Container(
                                height: 40,
                                width: size.width / 1.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      hintText: "ຄົ້ນຫາສິນຄ້າທີ່ຕ້ອງການ",
                                      hintStyle: TextStyle(color: Colors.red),
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.search)),
                                ),
                              ),
                              SizedBox(width: 20),
                              Stack(
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: CircleAvatar(
                                      radius: 7,
                                      backgroundColor: Colors.orange,
                                      child: Center(
                                          child: Text(
                                        "1",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.person, color: Colors.blue))
                            ],
                          ),
                        ),
                      //  Positioned(top: 0, child: BannerWidget())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
