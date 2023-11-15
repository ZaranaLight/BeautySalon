
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:salon/auth/phoneLogin.dart';
import 'package:salon/auth/signUp.dart';
import 'package:salon/helper/constants.dart';
import 'package:salon/intro/get_intro_screen.dart';
import 'package:salon/screens/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({Key? key}) : super(key: key);

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  // final ScrollController scrollController = ScrollController();
  final PageController _pageController = PageController();
  // final PageController _pageControllertext = PageController();

  int activeDot = 0;

  onNext() {
    if (activeDot != 2) {
      print("Animated to:<<<<<<<<");
      SchedulerBinding.instance.addPostFrameCallback((_) {
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          activeDot + 1,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );
        _pageController.animateToPage(
          activeDot + 1,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeIn,
        );
        }});

    } else {
      onSkip.call();
    }
  }

  onSkip() {
    Get.offAll(() => LoginPage());
    // Get.offAll(() => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    // print("deedd  ${_pageController}  ==  $_pageControllertext");
    return Scaffold(
      body: Container(
        color:  Constants.appColor.withOpacity(0.3),
        child: Stack( //const EdgeInsets.all(20),
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///logo with text=> image
            Padding(
              padding:   EdgeInsets.only(top: Get.height * 0.00,left: Get.width*0.0 ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: /*Image.asset(
                        "lib/assets/jpeg/intro1.jpg",
                        height: Get.width - 130)*/ Lottie.asset('lib/assets/lottie/splash.json',height: Get.height*0.45),
                  ),
                  Center(child: Text('Beauty',style: TextStyle(color:Theme.of(context).colorScheme.background,fontSize: 25),),),

                ],
              ),
            ),
            PageView(
              // physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (value) {
                activeDot = value;
                setState(() {});
              },
              children: [
                ///screen 1
                // GetIntroScreen(
                //   image: "lib/assets/rat.png",
                // ),
                Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Constants.appColor.withOpacity(0.3),
                  ),
                  // padding: const ,

                  child:  Padding(
                    padding: EdgeInsets.all(20),

                  ),
                ),
                ///screen 2
                Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.3),
                  ),
                  // padding: const ,

                  child:  Padding(
                    padding: EdgeInsets.all(20),

                  ),
                ),

                ///screen 3
                Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    color:  Colors.purpleAccent.withOpacity(0.3),
                  ),
                  // padding: const ,

                  child:  Padding(
                    padding: EdgeInsets.all(20),

                  ),
                ),

                ///screen 4
                // GetIntroScreen(
                //   title: "Make your come documents alive",
                //   description:
                //       "Add notes, reminders and tag people to your documents. Never miss any important date and task.",
                //   image: "lib/assets/Mobile login-rafiki.png",
                // ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 320,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    SizedBox(
                      height: 160,
                      child: activeDot == 0 ?GetIntroTextScreen(
                        title: "Easy to Find Custome".tr,
                        description:
                        "Salons are adapting to the digital forms of connecting with their customers and Beauty Master is the brilliant Flutter UI Kit Free for Salon Booking App project."
                            .tr,
                      ) : activeDot == 1 ?
                      GetIntroTextScreen(
                        title: "Branding for your parlour".tr,
                        description:
                        "The Best Beauty products App Flutter UI Template Free is designed to offer salon services at the touch of a fingertip. "
                            .tr,
                      ) : activeDot == 2 ?
                      GetIntroTextScreen(
                        title: "Get Customer Feedback".tr,
                        description:
                        "The Free Mobile UI Kit Salon Service Booking features pre-designed UI screens with sleek and modern UI design."
                            .tr,
                      ) : SizedBox(),
                    ),

                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedSmoothIndicator(
                            activeIndex: activeDot,
                            count: 3,
                            effect: ExpandingDotsEffect(
                              dotHeight: 10,
                              dotWidth: 14,
                            )
                        ),
                        Spacer(),
                        TextButton(onPressed: (){
                          // Get.offAll(() => LoginPage());
                          // Get.offAll(() => HomePage());
                          activeDot == 2 ? onSkip.call() : onNext.call();
                        },
                            child: activeDot == 2 ?  Container(width:100,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Constants.appColor
                              ),
                              child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white),)),
                            ) :Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Next".tr,
                                    style: TextStyle(
                                      color: Constants.appColor2,
                                      fontWeight: FontWeight.w500,
                                    )),
                                SizedBox(width: 4,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Icon(Icons.arrow_right_alt,size: 25,color: Colors.black,),
                                )
                              ],
                            ))

                      ],
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
                child: TextButton(
                  onPressed: (){
                    onSkip.call();
                  },child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Skip",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),),
                ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
