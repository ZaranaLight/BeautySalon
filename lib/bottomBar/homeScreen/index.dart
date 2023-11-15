import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon/helper/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
      backgroundColor: ColorssA.White,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_active_outlined),
                  ),
                ],
              ),
              CarouselDemo(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'My Master',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Text(
                      'See all ',
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              height: Get.height * 0.2,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:index%2!=0? ColorssA.appLightPink.withOpacity(0.2): ColorssA.appbackgroundcolor,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  const Text(
                                    "Slot Machine",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 90,

                                    padding: const EdgeInsets.all(6),

                                    alignment: Alignment.center,

                                    // width: 100,

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: ColorssA.appColor,
                                        border: Border.all(
                                            width: 1,
                                            color: ColorssA.appColor)),

                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: ColorssA.White,
                                          size: 20,
                                        ),
                                        Text(
                                          'Book Now',
                                          style: TextStyle(
                                              color: ColorssA.White,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 0,
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 20.0,
                                        spreadRadius: -30.0,
                                        offset: Offset(0.0, 25.0),
                                      )
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    'lib/assets/rat.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }, growable: true),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Services',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Text(
                      'See all ',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      margin: EdgeInsets.only(left: 15, right: 5),
                      decoration: BoxDecoration(
                          color:index%2==0? ColorssA.appLightPink.withOpacity(0.2):ColorssA.appbackgroundcolor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: ColorssA.White,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.hail_rounded)),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bla Vla',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  }, growable: true),
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
          items: [
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/assets/jpeg/home.jpg'),
                      fit: BoxFit.fitHeight),
                  border:
                      Border.all(width: 8, color: ColorssA.appbackgroundcolor),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/assets/jpeg/home2.jpg'),
                      fit: BoxFit.fitHeight),
                  border:
                      Border.all(width: 8, color: ColorssA.appbackgroundcolor),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('lib/assets/jpeg/home3.jpg'),
                      fit: BoxFit.fitHeight),
                  border:
                      Border.all(width: 8, color: ColorssA.appbackgroundcolor),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.75,
            aspectRatio: 1.6,
            initialPage: 2,
          ),
        ),
      ]);
}
