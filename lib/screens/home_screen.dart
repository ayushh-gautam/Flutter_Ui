// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

import 'package:ui/const.dart';

import '../widgets/posts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            //top section
            Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const ClipOval(
                    child: Image(
                      image: NetworkImage(myImage),
                      height: 100,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('James Morrison'),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UsersPostDetails(
                        details: 'posts',
                        numbers: '200',
                      ),
                      UsersPostDetails(
                        details: 'followers',
                        numbers: '300k',
                      ),
                      UsersPostDetails(
                        details: 'following',
                        numbers: '400',
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            //posts
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      height: 200,
                      child: const Center(
                        child: Text(
                          'Hello',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ).marginOnly(top: 20, left: 30);
              },
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
