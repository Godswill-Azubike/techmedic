import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:techmedic/screens/home_screen.dart';
import 'package:techmedic/widgets/buttons.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 115.0),
          const Text(
            'How are you using\nTech medic ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Rota",
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              'Your selection  enables us give you the best user experience',
              style: TextStyle(
                fontFamily: "Rota",
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SelectionTile(asADash: 'As a Doctor', iconData: "doc.png"),
          const SelectionTile(asADash: 'As a Patient', iconData: "patient.png"),
          const Gap(120),
          CustomButton(
            height: 65.0,
            width: double.infinity,
            onPressed: () {
              Get.to(() => const HomScreen(), transition: Transition.downToUp, duration: const Duration(milliseconds: 700));
            },
            borderRadius: BorderRadius.circular(15.0),
            child: const Text('select user type'),
          ),
        ],
      ),
    ));
  }
}

class SelectionTile extends StatelessWidget {
  final String asADash;
  final String iconData;
  const SelectionTile({Key? key, required this.asADash, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(asADash),
        trailing: Checkbox(onChanged: (value) {}, value: true),
        leading: Image.asset(
          "assets/images/$iconData",
          height: 35.0,
        ),
      ),
    );
  }
}
