// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tflite_test/Auth.dart';

// import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final bool _isLogin = true;
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _againPasswordController =
      TextEditingController();

  User? userInfo = FirebaseAuth.instance.currentUser;

  // final db = FirebaseFirestore.instance;

  handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;
    final userName = _userNameController.value.text.trim();
    final userNumber = _userNumberController.value.text.trim();
    final email = _emailController.value.text.trim();
    final password = _passwordController.value.text.trim();
    final againPassword = _againPasswordController.value.text.trim();

    setState(() {
      _loading = true;
      // print("objectBBBXXX::: ${user?.uid}");
    });

    if (password == againPassword) {
      try {
        await Auth().registerWithEmailAndPassword(email, password);
        // userInfo?.updateProfile(displayName: userName);
        // userSetup(userName, userNumber);
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/home_page/", (route) => false);
      } catch (e) {
        // print("xxxxxxx${e}");
        Fluttertoast.showToast(
            msg: "${e.toString().replaceRange(0, 14, '').split(']')[1]}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else {
      // print(".......VVVV");
      Fluttertoast.showToast(
          msg: "Password do not match",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }

    setState(() {
      _loading = false;
      // print("objectBBBXXX::: ${user}");
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _userNameController.dispose();
    _userNumberController.dispose();
    _passwordController.dispose();
    _againPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Now"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Divider(
                height: 50.0,
                color: Colors.white,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 50.0,
                color: Colors.white,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 4, horizontal: 8),
                    //   child: TextFormField(
                    //     controller: _userNameController,
                    //     validator: (value) {
                    //       if (value == null ||
                    //           value.isEmpty ||
                    //           value.length < 6) {
                    //         return "Please your name is too short ";
                    //       }
                    //       return null;
                    //     },
                    //     decoration: InputDecoration(
                    //         enabledBorder: OutlineInputBorder(
                    //           borderSide: const BorderSide(
                    //             width: 3,
                    //           ), //<-- SEE HERE
                    //           borderRadius: BorderRadius.circular(50.0),
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //             width: 3,
                    //           ),
                    //           borderRadius: BorderRadius.circular(50.0),
                    //         ),
                    //         filled: true,
                    //         fillColor: Colors.white,
                    //         border: OutlineInputBorder(),
                    //         hintText: "Enter Full Name"),
                    //   ),
                    // ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 4, horizontal: 8),
                    //   child: TextFormField(
                    //     controller: _userNumberController,
                    //     validator: (value) {
                    //       if (value == null ||
                    //           value.isEmpty ||
                    //           value.length <= 9) {
                    //         return "Please check Your phone number ";
                    //       }
                    //       return null;
                    //     },
                    //     keyboardType: TextInputType.number,
                    //     decoration: InputDecoration(
                    //         enabledBorder: OutlineInputBorder(
                    //           borderSide: const BorderSide(
                    //             width: 3,
                    //           ), //<-- SEE HERE
                    //           borderRadius: BorderRadius.circular(50.0),
                    //         ),
                    //         focusedBorder: OutlineInputBorder(
                    //           borderSide: BorderSide(
                    //             width: 3,
                    //           ),
                    //           borderRadius: BorderRadius.circular(50.0),
                    //         ),
                    //         filled: true,
                    //         fillColor: Colors.white,
                    //         border: OutlineInputBorder(),
                    //         hintText: "Enter Phone number"),
                    //   ),
                    // ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Valid email";
                          }
                          return null;
                        },
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),

                            enabledBorder: OutlineInputBorder(
                              borderSide:  BorderSide(
                                color: Colors.green,
                                width: 3,
                              ), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: "Enter Email"),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please password should contain match";
                          }
                          return null;
                        },
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),

                            enabledBorder: OutlineInputBorder(
                              borderSide:  BorderSide(
                                color: Colors.green,
                                width: 3,
                              ), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true,
                            fillColor: Colors.white70,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),

                            border: OutlineInputBorder(),
                            hintText: "Enter Password"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: TextFormField(
                        controller: _againPasswordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please password should contain match";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                              borderSide:  BorderSide(
                                color: Colors.green,
                                width: 3,
                              ), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            hintText: "Enter Password again"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                  ),
                  child: _loading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        )
                      : const Text(
                          'SignUp',
                          style: TextStyle(fontSize: 20.0),
                        ),
                  onPressed: () {
                    handleSubmit();
                  }),
              Container(
                margin: const EdgeInsets.all(25),
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                  ),
                  child: const Text("I Already Have Account, Login Here"),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        "/login_page/", (route) => false);
                    // Navigator.pushReplacement<void, void>(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //     builder: (BuildContext context) =>
                    //         const LoginPage(title: "Login",),
                    //   ),
                    // );
                    // setState(() {
                    //   userInfo;
                    // });
                  },
                ),
              ),
              //  const Text("I Already Have Account, LogIn")
            ],
          ),
        ),
      ),
    );
  }
}

// Future<void> userSetup(String name, String phoneNumber) async {
//   CollectionReference users = FirebaseFirestore.instance.collection('Users');
//   FirebaseAuth auth = FirebaseAuth.instance;
//   String? uid = auth.currentUser?.uid.toString();
//   String? email = auth.currentUser?.email.toString();
//   users.add({
//     'userNme': name,
//     "phoneNumber": phoneNumber,
//     'userEmail': email,
//     'userId': uid,
//     'timestamp': FieldValue.serverTimestamp(),
//   });
//   return;
// }
