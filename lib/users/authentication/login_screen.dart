import 'package:clothes_app/users/authentication/Register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var fromKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs; // check hien thi password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, cons) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: cons.maxHeight,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Login Screen header
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300, //285
                    child: Image.asset(
                      'images/login.jpg',
                      fit: BoxFit.cover,
                      // alignment: Alignment.bottomCenter,
                    ),
                  ),

                  // Login Screen sign-in form
                  Padding(
                    padding:
                        const EdgeInsets.all(5.0), // cach theo border mau xam
                    child: Container(
                      margin: EdgeInsets.only(top: 20), // cach tren
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8, //8
                            color: Colors.black26,
                            offset: Offset(0, -3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.fromLTRB(25, 25, 25, 15), // 30 30 30 8
                        child: Column(
                          children: [
                            // email - password - btn login
                            Form(
                              key: fromKey,
                              child: Column(
                                children: [
                                  // Email here=====================================================================
                                  TextFormField(
                                    controller: emailController,
                                    validator: (value) => value == ''
                                        ? 'Please write email !!'
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ),
                                      hintText: 'email ....',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30), //30
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      // =====================================================================
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      //======================================================================
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      // ==========================================================================
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                            color: Colors.white60,
                                          )),
                                      // ======================================================================
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        horizontal: 14, //14
                                        vertical: 14, //6
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),

                                  // ==============================================================================
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  // ===============================================================

                                  //password here
                                  Obx(
                                    () => TextFormField(
                                      controller: passwordController,
                                      obscureText: isObsecure.value,
                                      validator: (value) => value == ''
                                          ? 'Please write password !!!'
                                          : null,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.vpn_key_sharp,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: Obx(() => GestureDetector(
                                              onTap: () {
                                                isObsecure.value =
                                                    !isObsecure.value;
                                              },
                                              child: Icon(
                                                isObsecure.value
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Colors.black,
                                              ),
                                            )),
                                        hintText: 'password ....',
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.white60,
                                            )),
                                        // =====================================================================
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.white60,
                                            )),
                                        //======================================================================
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.white60,
                                            )),
                                        // ==========================================================================
                                        disabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                              color: Colors.white60,
                                            )),
                                        // ======================================================================
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          horizontal: 14,
                                          vertical: 14,
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),

                                  // ==============================================================================
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  // ===============================================================
                                  // Button Login
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30),
                                    child: InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(30),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 15,
                                          horizontal: 38,
                                        ),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            //================================================================
                            const SizedBox(
                              height: 16,
                            ),

                            //===================================================
                            // btn Link Register
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't Have An Account ?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(
                                      RegisterScreen(),
                                    );

                                    /// chuyen  qua trang register
                                  }, // chua co j trong day
                                  child: const Text(
                                    'Register Here!',
                                    style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Or',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),

                            // Nut o day danh cho admin btn - admin
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Are You Admin ?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {}, // chua co j trong day
                                  child: const Text(
                                    'Click Here!',
                                    style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //===============================================================
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
