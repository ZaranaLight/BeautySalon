
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:salon/helper/constants.dart';

class GetIntroScreen extends StatefulWidget {
  GetIntroScreen({
    Key? key,
    required this.image,
  }) : super(key: key);

  String image;

  @override
  State<GetIntroScreen> createState() => _GetIntroScreenState();
}

class _GetIntroScreenState extends State<GetIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // padding: const ,
          color: Constants.appColor.withOpacity(0.3),
          child:  Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(widget.image, height: Get.height*0.6,width: Get.width,),

                // Lottie.asset(widget.image, height: Get.height*0.6,width: Get.width,),
                // SizedBox(height: 100,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class GetIntroTextScreen extends StatefulWidget {

  String title;
  String description;
  GetIntroTextScreen({super.key,
    required this.title,
    required this.description,});

  @override
  State<GetIntroTextScreen> createState() => _GetIntroTextScreenState();
}

class _GetIntroTextScreenState extends State<GetIntroTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title,
              style: TextStyle(
                  color: Constants.appColor2,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          const SizedBox(height: 25),
          Text(widget.description, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12, color: Colors.grey),),
          // const SizedBox(height: 20),
        ],
      ),
    );
  }
}

