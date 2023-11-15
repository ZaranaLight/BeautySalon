
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:salon/helper/colors.dart';
import 'package:salon/helper/constants.dart';
import 'package:salon/helper/route_helper.dart';

// import 'package:sms_autofill/sms_autofill.dart';
// import 'package:flutter_stripe/flutter_stripe.dart' as flutter_stripe;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key,  this.isLocalAuth}) : super(key: key);

  bool? isLocalAuth;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? vId;
  String? otp;
  String? phoneNumber;

  // final LocalAuthentication auth = LocalAuthentication();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // checkPermission();
  }

  // checkPermission() async {
  //   if (widget.isLocalAuth) {
  //     // await auth
  //     //     .authenticate(localizedReason: "Login to continue")
  //     //     .then((value) {
  //     //   if (value) {
  //     //     Get.offAll(() => HomePage());
  //     //   }
  //     // });
  //   } else {
  //     await Permission.contacts.request().then((value) async {
  //       FirebaseMessaging messaging = FirebaseMessaging.instance;
  //
  //       NotificationSettings settings = await messaging.requestPermission(
  //         alert: true,
  //         announcement: false,
  //         badge: true,
  //         carPlay: false,
  //         criticalAlert: false,
  //         provisional: false,
  //         sound: true,
  //       );
  //
  //       if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  //         print('User granted permission');
  //       } else if (settings.authorizationStatus ==
  //           AuthorizationStatus.provisional) {
  //         print('User granted provisional permission');
  //       } else {
  //         print('User declined or has not accepted permission');
  //       }
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.focusScope?.unfocus(),
      child:Scaffold(
        backgroundColor: ColorssA.appColor,
        // floatingActionButton: FloatingActionButton(onPressed: () async {
        //   // final data = await _createTestPaymentSheet();
        //
        //   await flutter_stripe.Stripe.instance.initPaymentSheet(
        //     paymentSheetParameters: flutter_stripe.SetupPaymentSheetParameters(
        //       // Enable custom flow
        //       customFlow: true,
        //       // Main params
        //       merchantDisplayName: 'Flutter Stripe Store Demo',
        //       // Customer keys
        //       // Extra options
        //       style: ThemeMode.dark,
        //     ),
        //   );
        // }),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: Get.height * 0.5,

                    child: Center(
                      child:  Lottie.asset(
                        'lib/assets/lottie/login.json',
                      ),
                    ),
                  ),
                ),


                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("SIGN UP".tr,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Constants.appColor2,
                      )),
                ),
                // SizedBox(height: 10,),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text("${Constants.tagLine }".tr,
                //
                //       style: TextStyle( color: Constants.appColor2, fontSize: 15,fontWeight: FontWeight.bold)),
                // ),

                const SizedBox(height: 25),
                // Container(
                //     padding: const EdgeInsets.only(left: 3),
                //     alignment: Alignment.centerLeft,
                //     child: Text(
                //       "Phone Number".tr,
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           color: Constants.appColor),
                //     )),
                // const SizedBox(height: 5),
                Container(
                  // height: Get.height*0.07,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.5)),
                  child: IntlPhoneField(
                    validator: (value) {
                      debugPrint("Number is:${value?.number}");
                      if (value!.number.isEmpty) {
                        return "Please enter your phone number to continue";
                      }
                      return null;
                    },
                    disableLengthCheck: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 12),
                      isDense: true,
                      hintText: 'Phone Number'.tr,
                      hintStyle: TextStyle(
                        height: 1.35,
                      ),
                      // label: Text('Phone Number'.tr),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          )),
                      border: InputBorder.none,
                      // OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      //   borderSide: const BorderSide(color: Colors.transparent, width: 0),
                      // ),
                    ),
                    initialCountryCode: 'IN',
                    showCountryFlag: false,
                    dropdownTextStyle: const TextStyle(color: Colors.black54),
                    onChanged: (phone) {
                      phoneNumber = phone.completeNumber.toString();
                    },
                    onSubmitted: (phone) async {
                      // print(phone.completeNumber);
                      // phoneNumber = phone.completeNumber;
                      // await AuthController().sendOTP(
                      //   fullPhoneNumber: phone.completeNumber,
                      //   onOTPSent: (verificationId) {
                      //     setState(() {
                      //       vId = verificationId;
                      //     });
                      //   },
                      // );
                    },
                  ),
                ),
                const SizedBox(height: 25),
                Visibility(
                  visible: vId != null,
                  child: Column(
                    children: [
                      ///
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.shade50,

                        ),
                        padding: EdgeInsets.only(top: 15),
                        child: Center(
                          child: PinCodeTextField(
                            keyboardType: TextInputType.number,
                            length: 6,
                            obscureText: false,
                            animationType: AnimationType.fade,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            pinTheme: PinTheme(
                              inactiveColor: Colors.redAccent,
                              activeColor: Colors.green,
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 40,
                              fieldWidth: 40,
                              borderWidth: 1,
                              activeFillColor: Colors.white,
                              inactiveFillColor: Colors.white,
                            ),
                            animationDuration: const Duration(milliseconds: 300),
                            // backgroundColor: Colors.blue.shade50,
                            enableActiveFill: true,
                            // errorAnimationController: errorController,
                            // controller: textEditingController,
                            onCompleted: (pin) async {
                              print("Completed: $pin");
                              otp = pin;
                              // if (vId != null) {
                              //   await AuthController().loginWithOTP(
                              //     phoneNumber: phoneNumber.toString(),
                              //     verificationId: vId!,
                              //     smsCode: pin,
                              //   );
                              // } else {
                              //   setState(() {});
                              // }
                            },
                            onChanged: (value) {
                              print(value);
                              // setState(() {
                              //   currentText = value;
                              // });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                            appContext: context,
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't receive the OTP?".tr,
                            style: TextStyle(color: Constants.appColor2),
                          ),
                          TextButton(
                              onPressed: () async {
                                // if (phoneNumber != null) {
                                //   await AuthController().sendOTP(
                                //     fullPhoneNumber: phoneNumber.toString(),
                                //     onOTPSent: (verificationId) {
                                //       print("VerificationID:$verificationId");
                                //
                                //
                                //       setState(() {
                                //         vId = verificationId;
                                //       });
                                //     },
                                //   );
                                //   documentController.getAllUserDocuments();
                                // } else {
                                //   getErrorDialogue(
                                //       error:
                                //       "Please enter phone number to send OTP.");
                                // }

                              },
                              child: Text("Resend OTP".tr)),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
                // SizedBox(
                //     width: Get.width,
                //     height: 40,
                //     child: ElevatedButton(
                //       onPressed: () async {
                //         Get.focusScope?.unfocus();
                //         if (vId == null) {
                //           if (phoneNumber != null) {
                //             await AuthController().sendOTP(
                //               fullPhoneNumber: phoneNumber.toString(),
                //               onOTPSent: (verificationId) {
                //                 print("VerificationID:$verificationId");
                //                 setState(() {
                //                   vId = verificationId;
                //                 });
                //               },
                //             );
                //           } else {
                //             getErrorDialogue(
                //                 error:"Please enter phone number to send OTP.");
                //           }
                //         } else {
                //           if (otp != null) {
                //             await AuthController().loginWithOTP(
                //                 verificationId: vId.toString(),
                //                 smsCode: otp.toString(),
                //                 phoneNumber: phoneNumber.toString());
                //           } else {
                //             getErrorDialogue(
                //                 error: "Please enter the OTP and try again.");
                //           }
                //         }
                //       },
                //       child: Text(
                //         vId != null ? "Submit".tr : "Send OTP".tr,
                //         style: const TextStyle(fontWeight: FontWeight.bold),
                //       ),
                //     )),
                InkWell(
                  onTap: () async {
                    Get.focusScope?.unfocus();
                    print('hii=====');
                    Get.toNamed(RouteHelper.getBottomNavigationBarApp());
                    // if (vId == null) {
                    //   if (phoneNumber != null) {
                    //     await AuthController().sendOTP(
                    //       fullPhoneNumber: phoneNumber.toString(),
                    //       onOTPSent: (verificationId) {
                    //         print("VerificationID:$verificationId");
                    //         setState(() {
                    //           vId = verificationId;
                    //         });
                    //       },
                    //     );
                    //   } else {
                    //     getErrorDialogue(error:"Please enter phone number to send OTP.");
                    //   }
                    // } else {
                    //   if (otp != null) {
                    //     await AuthController().loginWithOTP(
                    //         verificationId: vId.toString(),
                    //         smsCode: otp.toString(),
                    //         phoneNumber: phoneNumber.toString());
                    //   } else {
                    //     getErrorDialogue(
                    //         error: "Please enter the OTP and try again.");
                    //   }
                    // }
                  },
                  child: Container(
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
                    child: Text( vId != null ? "Submit".tr : "Submit".tr,
                    // child: Text( vId != null ? "Submit".tr : "Send OTP".tr,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize:16, color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
