// //import 'package:breacnet/component/api_base_helper.dart';
// //import 'package:breacnet/component/button_widget.dart';
// //import 'package:breacnet/component/text_form_field_basic.dart';
// //import 'package:breacnet/component/utils.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// //import '../application.dart';
// import '../component/api_base_helper.dart';
// import '../component/utils.dart';
// import '../constants.dart';

// class RegisterPage extends StatefulWidget {
//   @override
//   _RegisterPageState createState() => new _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController usernameController = new TextEditingController();
//   TextEditingController passwordController = new TextEditingController();
//   TextEditingController nameController = new TextEditingController();
//   TextEditingController emailController = new TextEditingController();
//   late String _screenStage;
//   ApiBaseHelper api = ApiBaseHelper();

//   @override
//   void initState() {
//     super.initState();
//     _screenStage = "loaded";
//   }

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//         backgroundColor: BasePalette.primary,
//         body: Center(
//           child: SingleChildScrollView(
//               //padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
//               child: Stack(
//             children: [
//               Container(
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("assets/images/bg.png"),
//                       // colorFilter:
//                       // ColorFilter.mode(Colors.black.withOpacity(0.2),
//                       // BlendMode.dstATop),
//                       fit: BoxFit.cover,
//                       //alignment: FractionalOffset.topCenter,
//                     ),
//                   ),
//                   height: height,
//                   child: Form(
//                       key: _formKey,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             "assets/images/logo.png",
//                             height: 100.0,
//                             width: 200.0,
//                           ),
//                           SizedBox(height: 10),
//                           Text(Translations.of(context).text('register-form'),
//                               style: TextStyle(
//                                   fontFamily: 'NeoSansBold',
//                                   fontSize: 20,
//                                   color: BasePalette.bg)),
//                           SizedBox(height: 0.05 * height),
//                           Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               Column(
//                                 children: [
//                                   Card(
//                                       // elevation: 10,
//                                       margin:
//                                           EdgeInsets.symmetric(horizontal: 30),
//                                       color: Color(0xffffffff),
//                                       shape: RoundedRectangleBorder(
//                                         side: BorderSide(
//                                             color: BasePalette.primary,
//                                             width: 2),
//                                         borderRadius: BorderRadius.circular(20),
//                                       ),
//                                       child: Padding(
//                                           padding: EdgeInsets.symmetric(
//                                               vertical: 20, horizontal: 30),
//                                           child: Column(children: <Widget>[
//                                             TextFormFieldWidget(
//                                               hintText: Translations.of(context)
//                                                   .text('name'),
//                                               controller: nameController,
//                                               functionValidate:
//                                                   commonValidation,
//                                               parametersValidate:
//                                                   "name tidak boleh kosong!",
//                                             ),
//                                             TextFormFieldWidget(
//                                               hintText: Translations.of(context)
//                                                   .text('email'),
//                                               controller: emailController,
//                                               functionValidate:
//                                                   commonValidation,
//                                               parametersValidate:
//                                                   "email tidak boleh kosong!",
//                                             ),
//                                             TextFormFieldWidget(
//                                               hintText: Translations.of(context)
//                                                   .text('username'),
//                                               controller: usernameController,
//                                               functionValidate:
//                                                   commonValidation,
//                                               parametersValidate:
//                                                   "username tidak boleh kosong!",
//                                             ),
//                                             TextFormFieldWidget(
//                                               hintText: Translations.of(context)
//                                                   .text('password'),
//                                               controller: passwordController,
//                                               functionValidate:
//                                                   commonValidation,
//                                               parametersValidate:
//                                                   "password tidak boleh kosong!",
//                                               obscureText: true,
//                                               textInputType:
//                                                   TextInputType.visiblePassword,
//                                             ),
//                                             SizedBox(height: 0.1 * height),
//                                           ]))),
//                                   SizedBox(
//                                     height: 25,
//                                   )
//                                 ],
//                               ),
//                               Positioned(
//                                   bottom: 0.0,
//                                   child: _screenStage == "loaded"
//                                       ? raisedButton(
//                                           text: Translations.of(context)
//                                               .text('btn_register'),
//                                           minWidth: 200,
//                                           height: 50.0,
//                                           textColor: Colors.white,
//                                           color: BasePalette.primary,
//                                           onClick: _register)
//                                       : CircularProgressIndicator())
//                             ],
//                           ),
//                           SizedBox(height: 0.1 * height),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               InkWell(
//                                   child: Text(
//                                       Translations.of(context).text('login')),
//                                   onTap: () {
//                                     Navigator.pushNamed(context, "/login");
//                                   })
//                             ],
//                           )
//                         ],
//                       ))),
//               Positioned(
//                   left: 20,
//                   top: 45,
//                   child: Row(
//                     children: [
//                       InkWell(
//                         onTap: () async {
//                           bool result = await showDialog(
//                               context: context,
//                               builder: (context) {
//                                 return AlertDialog(
//                                   title: Text('Language'),
//                                   content: Text(
//                                       'Are you sure you want to change to Indonesian?'),
//                                   actions: <Widget>[
//                                     new InkWell(
//                                       onTap: () {
//                                         Navigator.of(context,
//                                                 rootNavigator: true)
//                                             .pop(false);
//                                       },
//                                       child: Text('No'),
//                                     ),
//                                     new InkWell(
//                                       onTap: () {
//                                         Navigator.of(context,
//                                                 rootNavigator: true)
//                                             .pop(true);
//                                       },
//                                       child: Text('Yes'),
//                                     ),
//                                   ],
//                                 );
//                               });
//                           if (result) {
//                             applic.onLocaleChanged(new Locale('id', ''));
//                           }
//                         },
//                         child: Text(
//                           "IND",
//                           style: TextStyle(color: BasePalette.bg),
//                         ),
//                       ),
//                       Text(
//                         " | ",
//                         style: TextStyle(color: BasePalette.bg),
//                       ),
//                       InkWell(
//                         onTap: () async {
//                           bool result = await showDialog(
//                               context: context,
//                               builder: (context) {
//                                 return AlertDialog(
//                                   title: Text('Bahasa'),
//                                   content:
//                                       Text('Yakin merubah ke bahasa Inggris?'),
//                                   actions: <Widget>[
//                                     new InkWell(
//                                       onTap: () {
//                                         Navigator.of(context,
//                                                 rootNavigator: true)
//                                             .pop(false);
//                                       },
//                                       child: Text('Tidak'),
//                                     ),
//                                     new InkWell(
//                                       onTap: () {
//                                         Navigator.of(context,
//                                                 rootNavigator: true)
//                                             .pop(true);
//                                       },
//                                       child: Text('Iya'),
//                                     ),
//                                   ],
//                                 );
//                               });
//                           if (result) {
//                             applic.onLocaleChanged(new Locale('en', ''));
//                           }
//                         },
//                         child: Text(
//                           "ENG",
//                           style: TextStyle(color: BasePalette.bg),
//                         ),
//                       ),
//                     ],
//                   )),
//               Positioned(
//                 right: 20,
//                 top: 45,
//                 child: Text(
//                   "V 0.1",
//                   style: TextStyle(color: BasePalette.bg),
//                 ),
//               )
//             ],
//           )),
//         ));
//   }

//   _register() async {
//     var validate = _formKey.currentState.validate();
//     if (validate) {
//       setState(() {
//         _screenStage = "loading";
//       });
//       _formKey.currentState.save();
//       Response response = await api.postHTTP("register", {
//         "username": usernameController.text,
//         "password": passwordController.text,
//         "email": emailController.text,
//         "name": nameController.text
//       });
//       setState(() {
//         _screenStage = "loaded";
//       });
//       if (response != null) {
//         print(response);
//         Map<String, dynamic> res = response.data;
//         if (res['status']) {
//           Utils.displayToast("register berhasil, silahkan login", "success");
//           print(res);
//           Navigator.pushReplacementNamed(context, "/login");
//         } else {
//           Utils.displayToast(res['message'], "warning");
//         }
//       }
//     }
//   }
// }
