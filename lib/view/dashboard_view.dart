// import 'package:breacnet/realtime/live_camera.dart';
// import 'package:breacnet/static%20image/static.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// import '../application.dart';
// import '../constants.dart';
// import '../translations.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return
//     SafeArea(
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: Text("Breacnet"),//Translations.of(context).text("main_title")),
//         //   actions: <Widget>[
//         //     IconButton(
//         //       icon: Icon(Icons.info),
//         //       onPressed: aboutDialog,
//         //     ),
//         //   ],
//         // ),
//         body: Stack(
//           children: [
//             Container(
//               child:Center(
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//                     child: Column(
//                       //mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Image.asset(
//                           "assets/images/header.png",
//                           height: 100.0,
//                           // width: 00.0,
//                         ),
//                         SizedBox(height: 30,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 //print("Container clicked");
//                                 Navigator.pushNamed(context, '/appointment');
//                               },
//                               child:Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset("assets/images/appointment.png", width: 100,),
//                                 SizedBox(height: 10,),
//                                 Text(Translations.of(context).text('appointment'))
//                               ],
//                             ),
//                             ),
//                             SizedBox(width: 40,),
//                             GestureDetector(
//                               onTap: () {messageAdmin();},
//                               child:Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset("assets/images/consultation.png", width: 100),
//                                 SizedBox(height: 10,),
//                                 Text(Translations.of(context).text('consultation'))
//                               ],
//                             )
//                             )
//                           ],
//                         ),
//                         SizedBox(height: 30,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: (){
//                                 //print("Container clicked");
//                                 Navigator.pushNamed(context, '/history');
//                               },
//                               child:Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Image.asset("assets/images/history.png", width: 100,),
//                                   SizedBox(height: 10,),
//                                   Text(Translations.of(context).text('history'))
//                                 ],
//                               ),
//                             ),
//                             SizedBox(width: 40,),
//                             GestureDetector(
//                                 onTap: (){
//                                   //print("Container clicked");
//                                   //Navigator.pushNamed(context, '/staticimage');
//                                   Navigator.pushNamed(context, '/scan');
//                                 },
//                                 child:
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Image.asset("assets/images/scan.png", width: 100),
//                                     SizedBox(height: 10,),
//                                     Text(Translations.of(context).text('scan'))
//                                   ],
//                                 )
//                             )
//                           ],
//                         ),
//                         // ButtonTheme(
//                         //   minWidth: 170,
//                         //   child: RaisedButton(
//                         //     child: Text("Detect in Image"),
//                         //     onPressed: () {
//                         //       // Navigator.push(context, MaterialPageRoute(
//                         //       //   builder: (context) => StaticImage(),
//                         //       // ),
//                         //       // );
//                         //       Navigator.pushReplacementNamed(context, '/staticimage');
//                         //     },
//                         //   ),
//                         // ),

//                         // ButtonTheme(
//                         //   minWidth: 160,
//                         //   child: RaisedButton(
//                         //     child: Text("Real Time Detection"),
//                         //     onPressed:() {
//                         //       Navigator.push(context, MaterialPageRoute(
//                         //         builder: (context) => LiveFeed(cameras),
//                         //       ),
//                         //       );
//                         //     },
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   )
//               ),
//             ),
//             Positioned(
//                 left: 20,
//                 top: 20,
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () async {
//                         bool result = await showDialog(
//                             context: context,
//                             builder: (context) {
//                               return AlertDialog(
//                                 title: Text('Language'),
//                                 content: Text('Are you sure you want to change to Indonesian?'),
//                                 actions: <Widget>[
//                                   new InkWell(
//                                     onTap: (){
//                                       Navigator.of(context, rootNavigator: true)
//                                           .pop(false);
//                                     },
//                                     child: Text('No'),
//                                   ),
//                                   new InkWell(
//                                     onTap: (){
//                                       Navigator.of(context, rootNavigator: true)
//                                           .pop(true);
//                                     },
//                                     child: Text('Yes'),
//                                   ),
//                                 ],
//                               );
//                             });
//                         if(result){
//                           applic.onLocaleChanged(new Locale('id',''));
//                         }
//                       },
//                       child: Text("IND", style: TextStyle(color: BasePalette.primary),),
//                     ),
//                     Text(" | ", style: TextStyle(color: BasePalette.primary),),
//                     InkWell(
//                       onTap: () async {
//                         bool result = await showDialog(
//                             context: context,
//                             builder: (context) {
//                               return AlertDialog(
//                                 title: Text('Bahasa'),
//                                 content: Text('Yakin merubah ke bahasa Inggris?'),
//                                 actions: <Widget>[
//                                   new InkWell(
//                                     onTap: (){
//                                       Navigator.of(context, rootNavigator: true)
//                                           .pop(false);
//                                     },
//                                     child: Text('Tidak'),
//                                   ),
//                                   new InkWell(
//                                     onTap: (){
//                                       Navigator.of(context, rootNavigator: true)
//                                           .pop(true);
//                                     },
//                                     child: Text('Iya'),
//                                   ),
//                                 ],
//                               );
//                             });
//                         if(result){
//                           applic.onLocaleChanged(new Locale('en',''));
//                         }
//                       },
//                       child: Text("ENG", style: TextStyle(color: BasePalette.primary),),
//                     ),
//                   ],
//                 )
//             ),
//           ],
//         )

//       )
//     );
//   }

//   messageAdmin() async{
//     print("Pesan WA");
//     String number = "6282138074117";
//     await launch(
//         "https://wa.me/${number}?text=Hello..");
//   }


//   aboutDialog(){
//     showAboutDialog(
//       context: context,
//       applicationName: "Breacnet",
//       applicationLegalese: "By test",
//       applicationVersion: "1.0",
//       children: <Widget>[
//         Text("www.breacnet.com"),
//       ],
//     );
//   }

// }
