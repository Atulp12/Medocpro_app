import 'package:flutter/material.dart';
import 'package:medocpro_app/common/widgets/custom_textfield.dart';
import 'package:medocpro_app/features/auth/screen/login_screen.dart';
import 'package:medocpro_app/utils/global.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
    Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: size.height * 0.25,
                    child: Image.asset('assets/images/logo.png')),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: size.width * 0.15,
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: blueColor,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextField(
                  text: 'Name',
                  isShadow: true,
                  controller: nameController,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  text: 'Email',
                  isShadow: true,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  text: 'Mobile Number',
                  isShadow: false,
                  controller: mobileNumberController,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  text: 'Password',
                  isShadow: false,
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  text: 'Confirm Password',
                  isShadow: false,
                  controller: confirmPasswordController,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize:  Size(size.width * 0.85, 50),
                    backgroundColor: GlobalVariables.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                
                  ),
                  child: const Text('Signup',style: TextStyle(color:GlobalVariables.whiteColor,fontSize: 18),),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account!'),
                    InkWell(
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}