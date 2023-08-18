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
  TextEditingController nikController = TextEditingController();
  TextEditingController cifnumController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();

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
                height: 590,
                width: 400,
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
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          controller: nameController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Full Name'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          controller: emailController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Email'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300,
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
                        width: 300,
                        child: TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          controller: nikController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(), labelText: 'NIK'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          controller: cifnumController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'CIF NUM'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          controller: genderController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Gender'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          obscureText: false,
                          controller: addressController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address'),
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
              ),
              const SizedBox(height: 10),
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
              ),
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

  _register() async {
    Response? response = await api.postHTTP("register-user", {
      "client_id": "WEB",
      "username": usernameController.text,
      "password": passwordController.text,
      "email": emailController.text,
      "fullname": nameController.text,
      "nik": nikController.text,
      "cifNum": cifnumController.text,
      "gender": genderController.text,
      "address": addressController.text,
      "role": "user"
    });
    print(response);

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
        if (res['status'] == "Success") {
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
