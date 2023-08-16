import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// import '../application.dart';
import '../component/api_base_helper.dart';
//import '../component/button_widget.dart';
//import '../component/text_form_field_basic.dart';
import '../constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController clientIdController = TextEditingController();
  late String _screenStage;
  ApiBaseHelper api = ApiBaseHelper();
  @override
  void dispose() {
    usernameController.dispose();
    clientIdController.dispose();
    super.dispose();
  }

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
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: FractionalOffset.bottomRight,
                  //   //colors: [BasePalette.primary, BasePalette.accent],
                  //   colors: [BasePalette.accent, BasePalette.primary],
                  //   stops: [0, 1],
                  // ),
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/bg.png"),
                  //   // colorFilter:
                  //   // ColorFilter.mode(Colors.black.withOpacity(0.2),
                  //   // BlendMode.dstATop),
                  //   fit: BoxFit.cover,
                  //   //alignment: FractionalOffset.topCenter,
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
                      const SizedBox(height: 5),
                      SizedBox(height: 0.05 * height),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            children: [
                              Card(
                                  // elevation: 10,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  color: const Color(0xffffffff),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: BasePalette.primary, width: 2),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20, horizontal: 30),
                                      child: Column(children: <Widget>[
                                        SizedBox(
                                          width: 200,
                                          child: TextField(
                                            obscureText: false,
                                            controller: usernameController,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'UserName',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                          width: 200,
                                          child: TextField(
                                            controller: clientIdController,
                                            obscureText: true,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Client ID',
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 30),
                                        SizedBox(
                                          width: 80,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              // Fungsi untuk login biometrik ygy
                                              // _performBiometricLogin();
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape:
                                                  const CircleBorder(), // Bentuk lingkaran
                                              backgroundColor: Colors
                                                  .green, // Warna latar belakang tombol
                                              padding: const EdgeInsets.all(
                                                  25), // Padding agar tidak terlalu kecil
                                            ),
                                            child: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.mic), // Icon mic
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 30),
                                      ]))),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          Positioned(
                            bottom: 0.0,
                            child: _screenStage == "loaded"
                                ? ElevatedButton(
                                    onPressed: _login,
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(200, 50),
                                      backgroundColor: BasePalette.primary,
                                    ),
                                    child: const Text(
                                      "Login", // Ganti dengan teks tombol yang sesuai
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                : const CircularProgressIndicator(),
                          )
                        ],
                      ),
                      SizedBox(height: 0.1 * height),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/register");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            ),
                            child: const Text(
                              'Register Here',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      //TEMPORARY SAJA
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            ),
                            child: const Text(
                              'Home Page',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))),
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

  _login() async {
    // setState(() {
    //   _screenStage = "loading";
    // });
    // setState(() {
    //   _screenStage = "loaded";
    // });
    Response? response = await api.postHTTP("login-user", {
      "username": usernameController.text,
      "client_id": clientIdController.text
    });

    print(response);

    var validate = _formKey.currentState?.validate();
    if (validate != null) {
      setState(() {
        _screenStage = "loading";
      });
      _formKey.currentState!.save();
      // Response response = await api.postHTTP("login", {
      //   "username": usernameController.text,
      //   "password": passwordController.text
      // });
      setState(() {
        _screenStage = "loaded";
      });
      // if (response != null) {
      //   print(response);

      //   Map<String, dynamic> res = response.data;
      //   if (res['status']) {
      //     Utils.displayToast("login berhasil", "success");
      //     Map<String, dynamic> data = res["user"];
      //     print(res);
      //     print("TES::" + data['id'].toString());
      //     SharedPreferences prefs = await SharedPreferences.getInstance();
      //     await prefs.setString('token', res['token']);
      //     await prefs.setInt('id', data['id']);
      //     await prefs.setString('name', data['name']);
      //     await prefs.setString('username', data['username']);
      //     await prefs.setString('email', data['email']);
      //     print(prefs.getString("token"));
      //     print(prefs.getInt("id"));
      //     print(prefs.getString("username"));
      //     print(prefs.getString("name"));
      //     Navigator.pushReplacementNamed(context, "/home");
      //   } else {
      //     Utils.displayToast(res['message'], "warning");
      //   }
      // }
    }
  }
}
