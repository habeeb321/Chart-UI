import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:octohub_assignment/core/constants.dart';
import 'package:octohub_assignment/view/widgets/first_tab.dart';
import 'package:octohub_assignment/view/widgets/second_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double redPct = 0.18;
  final double greenPct = 0.12;
  final double yellowPct = 0.17;
  final double bluePct = 0.53;
  int _selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        toolbarHeight: size.height * 0.2,
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: size.height * 0.4,
            width: double.infinity,
            color: kWhiteColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10, vertical: size.height * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.canPop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      IconButton(
                        onPressed: () {
                          signingOut(context);
                        },
                        icon: const Icon(
                          Icons.more_horiz,
                          color: kBlackColor,
                        ),
                      ),
                    ],
                  ),
                  kHeight10,
                  const Text(
                    'My Expenses',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: kTextColor),
                  ),
                  const Text(
                    'Summary (Private)',
                    style: TextStyle(fontSize: 12),
                  ),
                  kHeight20,
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today_rounded,
                        color: kTextColor,
                        size: 20,
                      ),
                      kWidth10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '07 Feb, 2019',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: kTextColor),
                          ),
                          Text(
                            '18% more than last month',
                            style: TextStyle(fontSize: 11, color: kTextColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14, bottom: 16, top: 5),
        child: Card(
          color: kWhiteColor,
          child: Column(
            children: [
              // Tab bar
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'CATEGORIES',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: kTextColor,
                          ),
                        ),
                        Text(
                          '7 total',
                          style: TextStyle(color: kTextColor),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedTabIndex = 0;
                            });
                          },
                          child: Icon(
                            Icons.equalizer,
                            color: _selectedTabIndex == 0
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                        kWidth20,
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedTabIndex = 1;
                            });
                          },
                          child: Icon(
                            Icons.list_outlined,
                            color: _selectedTabIndex == 1
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Tab content
              Expanded(
                child: _selectedTabIndex == 0
                    ? const FirstTab()
                    : const SecondTab(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signingOut(context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Log Out'),
          content: const Text('Are you sure you want to logout'),
          actions: [
            TextButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pop(context);
              },
              child: const Text('Continue'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
