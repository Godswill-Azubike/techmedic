import 'package:flutter/material.dart';
import 'package:techmedic/screens/auth/login_screen.dart';
import 'package:techmedic/screens/auth/reg_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key, this.index}) : super(key: key);

  final int? index;

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _currentIndex = widget.index == null ? 0 : widget.index!;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: _currentIndex,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                  indicatorWeight: 3.0,
                  indicatorColor: Theme.of(context).primaryColor,
                  labelColor: Theme.of(context).primaryColor,
                  labelStyle: const TextStyle(fontSize: 18.0, fontFamily: "Rota", fontWeight: FontWeight.w800),
                  tabs: const [
                    Tab(
                      text: "Sign In",
                    ),
                    Tab(
                      text: "Sign Up",
                    ),
                  ],
                ),
              ],
            ),
            elevation: 0.40),
        body: const TabBarView(
          children: [
            LoginScreen(),
            RegisterScreen(),
          ],
        ),
      ),
    );
  }
}
