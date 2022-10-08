import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:techmedic/screens/auth/setup_screen.dart';
import 'package:techmedic/widgets/buttons.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final bool _isLoading = false;
  // password visibility
  bool hidePassword = true;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  // placeholder for the auth params
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final InputDecoration passDecor = InputDecoration(
      fillColor: const Color(0xffF9F9F9),
      filled: true,
      border: const OutlineInputBorder(gapPadding: 4.0, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      // fillColor: Colors.white,
      // filled: true,
      hintText: "",
      hintStyle: const TextStyle(fontFamily: "Rota", color: Colors.grey, fontWeight: FontWeight.w500),
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            hidePassword = !hidePassword;
          });
        },
        color: Theme.of(context).primaryColor,
        icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility),
      ),
    );
    const InputDecoration emailDecor = InputDecoration(
      fillColor: Color(0xffF9F9F9),
      filled: true,
      border: OutlineInputBorder(gapPadding: 4.0, borderRadius: BorderRadius.all(Radius.circular(10.0))),
      contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      hintText: "",
      hintStyle: TextStyle(fontFamily: "Rota", color: Colors.grey, fontWeight: FontWeight.w300),
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35.0),
            const Padding(
              padding: EdgeInsets.only(left: 17.0),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Gap(13.0),
            const Padding(
              padding: EdgeInsets.only(left: 17.0),
              child: Text("Enter your information to get\n consultancies from expert doctors"),
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Form(
                key: _globalKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("First Name", style: TextStyle(fontFamily: "Rota", fontWeight: FontWeight.bold)),
                    TextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'first name is required.';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      decoration: emailDecor,
                    ),
                    const Gap(40),
                    const Text("Last Name", style: TextStyle(fontFamily: "Rota", fontWeight: FontWeight.bold)),
                    TextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'last name is required.';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      decoration: emailDecor,
                    ),
                    const Gap(40),
                    const Text("Email", style: TextStyle(fontFamily: "Rota", fontWeight: FontWeight.bold)),
                    TextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'email is required.';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      decoration: emailDecor,
                    ),
                    const Gap(40),
                    // password text field
                    const Text("Password", style: TextStyle(fontFamily: "Rota", fontWeight: FontWeight.bold)),
                    const Gap(2),
                    TextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Password is required.';
                        }
                        return null;
                      },
                      controller: _passwordController,
                      obscureText: hidePassword,
                      decoration: passDecor,
                    ),
                    const Gap(40),
                    CustomButton(
                      height: 65.0,
                      width: double.infinity,
                      onPressed: () {
                        Get.to(() => const SetupScreen(), transition: Transition.downToUp, duration: const Duration(milliseconds: 700));
                      },
                      borderRadius: BorderRadius.circular(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _isLoading ? '' : 'Sign up',
                            style: const TextStyle(
                              fontFamily: "Rota",
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          _isLoading
                              ? const SizedBox(
                                  width: 20.0,
                                  height: 20.0,
                                  child: CircularProgressIndicator(
                                    color: Color(0xFFEADCF4),
                                    strokeWidth: 2.0,
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                    const Gap(15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
