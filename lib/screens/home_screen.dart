import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:techmedic/screens/new_session_screen.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xFFEFEEEE),
                radius: 30,
                child: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Hello',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                'Sylvester',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              trailing: Icon(Icons.settings),
            ),
            Gap(20),
            CardBloc(),
            Gap(30),
            Text(
              'Recent sessions',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gap(10),
            Text(
              'List of recent consultation had with Doctors',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            RecentSessionTile(),
            RecentSessionTile(),
            RecentSessionTile(),
            RecentSessionTile(),
          ],
        ),
      ),
    );
  }
}

class CardBloc extends StatelessWidget {
  const CardBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFF19B2B8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.baby_changing_station,
              color: Color(0xFF19B2B8),
            ),
          ),
          Text(
            'Start session',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Resume a consultancy session session with\none of our expert medical practitioners',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class RecentSessionTile extends StatelessWidget {
  const RecentSessionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => const NewSessionScreen(),
          transition: Transition.downToUp,
          duration: const Duration(milliseconds: 700),
        );
      },
      child: SizedBox(
        child: Column(
          children: [
            const Divider(
              thickness: 2,
            ),
            const Gap(10),
            ListTile(
              title: Row(
                children: const [
                  Text('18 Dec 2022'),
                  Gap(20),
                  Text('at'),
                  Gap(20),
                  Text('12:00pm'),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 26,
                    width: 85,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent,
                    ),
                    child: const Center(child: Text('Accepted')),
                  ),
                  const Icon(Icons.chevron_right, size: 35),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
