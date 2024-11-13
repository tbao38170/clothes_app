import 'package:clothes_app/users/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  // const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var fromKey = GlobalKey<FormState>();

  var nameController = TextEditingController();
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
                  // Register Screen header
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300, //285
                    child: Image.asset(
                      'images/register.jpg',
                      fit: BoxFit.cover,
                      // alignment: Alignment.bottomCenter,
                    ),
                  ),

                  // Register Screen sign-up form
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
                        padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
                        child: Column(
                          children: [
                            // email - password - btn login
                            Form(
                              key: fromKey,
                              child: Column(
                                children: [
                                  //Name Here =================================================================================
                                  TextFormField(
                                    controller: nameController,
                                    validator: (value) => value == ''
                                        ? 'Please Write Name !!!'
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Name ....',
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
                                        vertical: 6, //6
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  // ===============================================================
                                  const SizedBox(
                                    height: 20,
                                  ),

                                  // Email here=================================================================================
                                  TextFormField(
                                    controller: emailController,
                                    validator: (value) => value == ''
                                        ? 'Please Write Email !!!'
                                        : null,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Email ....',
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
                                          ? 'Please Write Password !!!'
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
                                        hintText: 'Password ....',
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
                                          vertical: 14, //6
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),

                                  // ==============================================================================
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  // ===============================================================
                                  // Button Register
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
                                          'Register',
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
                            // btn Link Login - already have account
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already Have An Account ?",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(LoginScreen());
                                  }, // chua co j trong day
                                  child: const Text(
                                    'Login Here!',
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
