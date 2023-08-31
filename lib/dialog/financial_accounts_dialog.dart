import 'package:cobaflutterpfm/constants.dart';
import 'package:flutter/material.dart';

FinancialAccountsDialog(context, formType) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            constraints: BoxConstraints(maxHeight: 350, maxWidth: 500),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Text(formType),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "USERS AKUN FINANSIAL",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text("KATEGORI"),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 200,
                                    child: TextField(
                                      obscureText: false,
                                      //controller: usernameController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: Text("BANK"),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 200,
                                    margin: EdgeInsets.only(top: 10),
                                    child: TextField(
                                      obscureText: false,
                                      //controller: usernameController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: Text("SALDO"),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 200,
                                    margin: EdgeInsets.only(top: 10),
                                    child: TextField(
                                      obscureText: false,
                                      //controller: usernameController,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Card(
                                  margin: EdgeInsets.only(bottom: 16),
                                  elevation: 5,
                                  child: Container(
                                    height: 25,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                      color: Colors.black,
                                    )),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 73,
                                          height: 25,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    BasePalette.primary,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0))),
                                            child: const Text(
                                              "Submit",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 75,
                                          height: 25,
                                          child: ElevatedButton(
                                            onPressed: () {Navigator.pop(context);},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0))),
                                            child: const Text(
                                              "Cancel",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
