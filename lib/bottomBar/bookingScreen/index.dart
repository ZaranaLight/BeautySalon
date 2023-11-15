import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';
import 'package:salon/helper/colors.dart';
import 'package:salon/helper/constants.dart';
import 'package:salon/widgets/myCustomButtons.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime? selectedDate;
  List morningList = [
    '9:00 AM',
   '10:00 AM',
    '11:00 AM',
    '12:00 AM'
  ];

  List afternonList = [
   '04:00 PM',
    '05:00 PM',
    '06:00 PM',
    '07:00 PM'
  ];

  @override
  Widget build(BuildContext context) {
    print(morningList.length);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorssA.appbackgroundcolor,
        centerTitle: true,
        title: const Text(
          'Book Appointment',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                HorizontalWeekCalendar(
                  activeBackgroundColor: ColorssA.appDarkColor,
                  disabledBackgroundColor: ColorssA.appLightPink.withOpacity(0.2),
                  inactiveBackgroundColor: ColorssA.appColor,
                  inactiveTextColor: Colors.white,
                  activeNavigatorColor: ColorssA.appDarkColor,
                  inactiveNavigatorColor: ColorssA.appLightPink.withOpacity(0.2),
                  monthColor: ColorssA.appDarkColor,
                  activeTextColor: ColorssA.White,
                  onDateChange: (date) {
                    setState(() {
                      selectedDate = date;
                      print(selectedDate);
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Available slot',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  itemCount: morningList.length,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          width: Get.width * 0.46,
                          height: 50,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? ColorssA.appbackgroundcolor
                                : ColorssA.appLightPink.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              morningList[index].toString(),
                              style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width * 0.4,
                          height: 50,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: index % 2 != 0
                                  ? ColorssA.appbackgroundcolor
                                  : ColorssA.appLightPink.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),child: Center(
                                child: Text(
                          afternonList[index].toString(),
                          style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w600),
                        ),
                              ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Choose Beauty Specialist',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                const SizedBox(
                  height: 15,
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
              const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){

print('blaaaa');
                  },
                  child: Center(
                    child:  Container(
                      alignment: Alignment.center,
                      width: Get.width,
                      height: 50,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blueGrey.shade200,
                                spreadRadius: 0.5,
                                blurRadius: 2
                            )
                          ],
                          color: Constants.appColor,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: Text('Book Appointment',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize:16, color: Colors.white),),
                    ),
                  ),
                ),
            const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
