// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// // import 'dart:async';
// import './ethsync_localizations.dart';
// // import './ethsync_expandimage.dart';
// import './ethsync_urllinks.dart';

// class Scrollbar1 extends StatelessWidget {
//   // final String _kAsset0 = 'assets/devcon1.png';
//   // final String _kAsset2 = 'assets/etcBullet.png';
//   // final String _kAsset3 = 'assets/ethGreenHelp.png';
//   // final String _kAsset4 = 'assets/duIcon.png';
//   final String _kAsset5 = 'assets/gethTerm.png';
//   // final String _kAsset6 = 'assets/geth1win.png';

//   final String bm = 'bit now';
//   // EthSyncUrl ethSyncUrl = EthSyncUrl();

//   // get _launchURLFlutter => ;

// //separate links later
//   // launchURLFlutter() async {
//   //   const url = "https://flutter.io";
//   //   if (await canLaunch(url)) {
//   //     await launch(url);
//   //   } else {
//   //     throw 'Could not launch $url';
//   //   }
//   // }

//   // void _shareEthSync() {
//   //   final RenderBox box = context.findRenderObject();
//   //   Share.share("www.et.eu",
//   //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     print("scrollbar1 loaded");
//     //print current locale
//     Locale myLocale = Localizations.localeOf(context);
//     print(myLocale.toString() + '  on Scrollbar1');
//     return Scrollbar(
//       child: ListView(
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(15.0),
//             width: 300.0,
//             height: 140.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               color: Colors.yellow.shade500,
//               borderRadius: BorderRadius.all(Radius.circular(50.0)),
//             ),
//             child: Text(
//               EthSyncLocalizations.of(context).ethTextIntro,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.red,
//                 fontStyle: FontStyle.italic,
//                 fontSize: 18.0,
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(15.0),
//             width: 300.0,
//             height: 120.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               color: Colors.yellow.shade500,
//               borderRadius: BorderRadius.all(Radius.circular(50.0)),
//             ),
//             child: FlatButton(
//               child: Text(
//                 EthSyncLocalizations.of(context).ethUrlEthereumOrg,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.red.shade300,
//                   fontStyle: FontStyle.italic,
//                   fontSize: 24.0,
//                 ),
//               ),
//               onPressed: EthSyncUrl.launchURLFlutter,
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(15.0),
//             width: 300.0,
//             height: 600.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               color: Colors.yellow.shade500,
//               borderRadius: BorderRadius.all(Radius.circular(50.0)),
//             ),
//             child: Text(
//               EthSyncLocalizations.of(context).ethTextFounders,
//               textAlign: TextAlign.right,
//               style: TextStyle(
//                 color: Colors.red.shade300,
//                 fontStyle: FontStyle.italic,
//                 fontSize: 18.0,
//               ),
//             ),
//           ),
//           // FlatButton(
//           //   child: Image.asset(_kAsset3),
//           //   onPressed: () async {
//           //     Navigator.push(
//           //       context,
//           //       MaterialPageRoute(
//           //           builder: (context) => EthsyncExpandImage(
//           //                 image: _kAsset3,
//           //                 title: EthSyncLocalizations.of(context)
//           //                     .ethImgTermGreen, //ethImgTermGreen
//           //               )),
//           //     );
//           //   },
//           // ),
//           FlatButton(
//             child: Image.asset(_kAsset5),
//             onPressed: () async {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => EthsyncExpandImage(
//                           image: _kAsset5,
//                           title: "geth Terminator",
//                         )),
//               );
//             },
//           ),
//           // EthSync Heading ---------------------------------------------
//           Container(
//             padding: const EdgeInsets.all(15.0),
//             width: 60.0,
//             height: 60.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.rectangle,
//               color: Colors.yellow.shade500,
//               borderRadius: BorderRadius.all(Radius.circular(50.0)),
//             ),
//             child: Text(
//               EthSyncLocalizations.of(context).ethEhSyncHeading,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.red.shade300,
//                 fontStyle: FontStyle.italic,
//                 fontSize: 24.0,
//               ),
//             ),
//           ),
//           Container(
//             child: Text(
//               EthSyncLocalizations.of(context).ethEthSyncPrimaryGoal,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.red,
//                 fontStyle: FontStyle.italic,
//                 fontSize: 20.0,
//               ),
//             ),
//           ),
//           Container(
//             child: Text(
//               EthSyncLocalizations.of(context).ethEthSimpleQuiz,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.red,
//                 fontStyle: FontStyle.italic,
//                 fontSize: 20.0,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
