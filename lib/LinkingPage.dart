// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
//
//
//
// class LinkingPage extends StatefulWidget {
//   const LinkingPage({Key? key}) : super(key: key);
//
//   @override
//   State<LinkingPage> createState() => _LinkingPageState();
// }
//
// class _LinkingPageState extends State<LinkingPage> with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//    late Animation<double> animation;
//   // bool _isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//  //    Timer(Duration(milliseconds: 4), ()
//  //    {
//  //      setState(() {
//  //        _launchURL();
//  //      });
//  //    }
//  //
//  //
//  //    // _navigatetohome();
//  //
//  //
//  //    This used to create a curved animation
//  //    controller=AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
//  //    animation= CurvedAnimation(parent: controller, curve: Curves.easeIn);
//  //    controller.repeat();
//  //
//  //    Create Scaling Animation
//  //    controller =
//  //        AnimationController(vsync: this, duration: const Duration(seconds: 5));
//  //    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);
//  //
//  //    controller.repeat();
//
//     _launchURL();
//    // Timer(Duration(seconds: 5), () {
//    //
//    //  setState(() {
//    //   _launchURL();
//    // });
//    //
//    //   }
//    //
//    //   );
//
//   }
//
//   // _navigatetohome() async {
//   //   await Future.delayed(Duration(milliseconds: 3),(){
//   //        Timer(Duration(milliseconds: 4), () {
//   //
//   //     setState(() {
//   //       _launchURL();
//   //     });
//   //
//   //        }
//   //
//   //        );
//   //
//   //
//   //   });
//   // }
//
//   // @override
//   // void initite(){
//   //
//   //   Timer(Duration(milliseconds: 0), () {setState(() {
//   //     _launchURL();
//   //   });
//   //   });
//   // }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: Container(
//       //   width: double.infinity,
//       //   height: double.infinity,
//       //  child: Stack(
//       //     children: [
//       //       Container(
//       //         child: Image.asset(
//       //           "assets/background.png",
//       //           width: double.infinity,
//       //           height: double.infinity,
//       //           fit: BoxFit.cover,
//       //         ),
//       //       ),
//       //  // // Widget that holds the Transission animation
//       //  //      RotationTransition(
//       //  //        turns: animation,
//       //  //        child: Align(
//       //  //          child: Icon(Icons.ac_unit_outlined,size: 250,color: Colors.white,),
//       //  //        ),
//       //  //      ),
//       //
//       //       //Animation That allow scaling of image
//       //
//       //       //
//       //       //  ScaleTransition(
//       //       //   scale: animation,
//       //       //   child: Align(
//       //       //      child: Image.asset("assets/Icon.png", width: 200, height: 200),
//       //       //   ),
//       //       // ),
//       //
//       // Align(
//       //       child: Image.asset("assets/Icon.png", width: 200, height: 200),
//       //     ),
//       //       Align(
//       //         alignment: Alignment.bottomCenter,
//       //         child: Container(
//       //           decoration: BoxDecoration(
//       //               color: Color(0xff59565F).withOpacity(0.2),
//       //               borderRadius:
//       //               BorderRadius.only(topLeft: Radius.circular(0),
//       //                   topRight: Radius.circular(20))),
//       //           height: double.infinity,
//       //           width: double.infinity,
//       //           child: Padding(
//       //               padding: EdgeInsets.only(bottom: 20),
//       //               child: Align(
//       //
//       //                   alignment: Alignment.bottomCenter,
//       //                   child: Text(
//       //                     "TeleSoft", style: TextStyle(color: Colors.white,
//       //                       fontWeight: FontWeight.w600,
//       //                       fontSize: 25),))),
//       //         ),
//       //       )
//       //
//       //     ],
//       //   ),
//       // ),
//     );
//   }
//
//   _launchURL() async {
//     const url = 'https://telesoft.co.tz';
//     final uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
// }
