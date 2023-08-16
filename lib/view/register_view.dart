import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../component/api_base_helper.dart';
import '../component/utils.dart';
import '../constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  late String _screenStage;
  ApiBaseHelper api = ApiBaseHelper();

  @override
  void initState() {
    super.initState();
    _screenStage = "loaded";
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        //backgroundColor: BasePalette.primary,
        body: Center(
      child: SingleChildScrollView(
          //padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
          child: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/bg.png"),
                  //   colorFilter:
                  //   ColorFilter.mode(Colors.black.withOpacity(0.2),
                  //   BlendMode.dstATop),
                  //   fit: BoxFit.cover,
                  //   alignment: FractionalOffset.topCenter,
                  // ),
                  ),
              height: height,
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Logo-Bank-BNI-PNG.png",
                        height: 100.0,
                        width: 200.0,
                      ),
                      const SizedBox(height: 10),
                      const Text("Personal Finance Management",
                          style: TextStyle(
                              fontFamily: 'NeoSansBold',
                              fontSize: 20,
                              color: Colors.orange)),
                      SizedBox(height: 0.05 * height),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            children: [
                              Card(
                                elevation: 10,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                color: const Color(0xffffffff),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: BasePalette.primary, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 30),
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          width: 200,
                                          child: TextField(
                                            obscureText: false,
                                            controller: nameController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'name',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: 200,
                                          child: TextField(
                                            obscureText: false,
                                            controller: nameController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'name',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: 200,
                                          child: TextField(
                                            obscureText: false,
                                            controller: nameController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'name',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: 200,
                                          child: TextField(
                                            obscureText: false,
                                            controller: nameController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'name',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: 200,
                                          child: TextField(
                                            obscureText: false,
                                            controller: nameController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'name',
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.1 * height),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          Positioned(
                            bottom: 0.0,
                            child: _screenStage == "loaded"
                                ? ElevatedButton(
                                    onPressed: _register,
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(200, 50),
                                      backgroundColor: BasePalette.primary,
                                    ),
                                    child: const Text(
                                      "Register", // Ganti dengan teks tombol yang sesuai
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                : const CircularProgressIndicator(),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/login");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            ),
                            child: const Text(
                              'Login Here',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))),
          // Positioned(
          //     left: 20,
          //     top: 45,
          //     child: Row(
          //       children: [
          //         InkWell(
          //           onTap: () async {
          //             bool result = await showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return AlertDialog(
          //                     title: Text('Language'),
          //                     content: Text(
          //                         'Are you sure you want to change to Indonesian?'),
          //                     actions: <Widget>[
          //                       new InkWell(
          //                         onTap: () {
          //                           Navigator.of(context,
          //                                   rootNavigator: true)
          //                               .pop(false);
          //                         },
          //                         child: Text('No'),
          //                       ),
          //                       new InkWell(
          //                         onTap: () {
          //                           Navigator.of(context,
          //                                   rootNavigator: true)
          //                               .pop(true);
          //                         },
          //                         child: Text('Yes'),
          //                       ),
          //                     ],
          //                   );
          //                 });
          //             if (result) {
          //               applic.onLocaleChanged(new Locale('id', ''));
          //             }
          //           },
          //           child: Text(
          //             "IND",
          //             style: TextStyle(color: BasePalette.bg),
          //           ),
          //         ),
          //         Text(
          //           " | ",
          //           style: TextStyle(color: BasePalette.bg),
          //         ),
          //         InkWell(
          //           onTap: () async {
          //             bool result = await showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return AlertDialog(
          //                     title: Text('Bahasa'),
          //                     content:
          //                         Text('Yakin merubah ke bahasa Inggris?'),
          //                     actions: <Widget>[
          //                       new InkWell(
          //                         onTap: () {
          //                           Navigator.of(context,
          //                                   rootNavigator: true)
          //                               .pop(false);
          //                         },
          //                         child: Text('Tidak'),
          //                       ),
          //                       new InkWell(
          //                         onTap: () {
          //                           Navigator.of(context,
          //                                   rootNavigator: true)
          //                               .pop(true);
          //                         },
          //                         child: Text('Iya'),
          //                       ),
          //                     ],
          //                   );
          //                 });
          //             if (result) {
          //               applic.onLocaleChanged(new Locale('en', ''));
          //             }
          //           },
          //           child: Text(
          //             "ENG",
          //             style: TextStyle(color: BasePalette.bg),
          //           ),
          //         ),
          //       ],
          //     )),
          Positioned(
            right: 20,
            top: 45,
            child: Text(
              "V 0.1",
              style: TextStyle(color: BasePalette.bg),
            ),
          )
        ],
      )),
    ));
  }

  _register() async {
    Response? response = await api.postHTTP("register", {
      "username": usernameController.text,
      "password": passwordController.text,
      "email": emailController.text,
      "name": nameController.text
    });

    var validate = _formKey.currentState?.validate();
    if (validate != null) {
      setState(() {
        _screenStage = "loading";
      });
      _formKey.currentState!.save();
      setState(() {
        _screenStage = "loaded";
      });

      if (response != null) {
        print(response);
        Map<String, dynamic> res = response.data;
        if (res['status']) {
          Utils.displayToast("register berhasil, silahkan login", "success");
          print(res);
          Navigator.pushReplacementNamed(context, "/login");
        } else {
          Utils.displayToast(res['message'], "warning");
        }
      }
    }
  }
}
