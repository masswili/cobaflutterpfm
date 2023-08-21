//import 'dart:convert';
import 'package:cobaflutterpfm/component/api_base_helper_v2.dart';
import 'package:cobaflutterpfm/component/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
  ApiBaseHelperv2 api2 = ApiBaseHelperv2();
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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
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
              Container(
                height: 230,
                width: 300,
                child: Card(
                  elevation: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  color: const Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: BasePalette.primary, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 200,
                        child: TextField(
                          obscureText: false,
                          controller: usernameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Username'),
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
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 80,
                        child: ElevatedButton(
                          onPressed: () {
                            // Fungsi untuk login biometrik ygy
                            // _performBiometricLogin();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(), // Bentuk lingkaran
                            backgroundColor:
                                Colors.green, // Warna latar belakang tombol
                            padding: const EdgeInsets.all(
                                25), // Padding agar tidak terlalu kecil
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.mic), // Icon mic
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    : CircularProgressIndicator(),
              ),
              const SizedBox(height: 10),
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
              Positioned(
                right: 20,
                top: 45,
                child: Text(
                  "V 0.1",
                  style: TextStyle(color: BasePalette.bg),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _login() async {
    setState(() {
      _screenStage = "loading";
    });

    Map<String, dynamic> requestData = {
      "client_id": "WEB",
      "username": usernameController.text,
      "audioB64": "",
    };

    try {
      Response response = await Dio().post(
        "https://pfm-api.rodd-it.my.id/api/login-user",
        data: requestData,
        options: Options(headers: {"headerApiKey": "PFM~API/"}),
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> res = response.data;

        if (res['status'] == "Success") {
          setState(() {
            _screenStage = "loaded";
          });

          // Navigate to the home page
          Navigator.pushReplacementNamed(context, "/home");
        } else {
          // Update the _screenStage to "loaded" after login failure
          setState(() {
            _screenStage = "loaded";
          });

          Utils.displayToast(res['message'], "warning");
        }
      } else {
        // Update the _screenStage to "loaded" if the response status is not 200
        setState(() {
          _screenStage = "loaded";
        });

        Utils.displayToast("An error occurred during login.", "error");
      }
    } catch (error) {
      // Handle any errors that occurred during the HTTP request
      setState(() {
        _screenStage = "loaded";
      });

      Utils.displayToast("An error occurred: $error", "error");
    }
  }
}
