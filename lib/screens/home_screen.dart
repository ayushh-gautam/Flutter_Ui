// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

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
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50))),
                      height: 250,
                      child: Image.network(
                        'https://images.pexels.com/photos/3109850/pexels-photo-3109850.jpeg?cs=srgb&dl=pexels-anni-roenkae-3109850.jpg&fm=jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text(
                          'A simple purple background',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.conversation_bubble,
                          size: 20,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.heart,
                          size: 20,
                          color: Colors.white,
                        ),
                        Spacer()
                      ],
                    ).marginOnly(top: 10)
                  ],
                ).marginOnly(top: 20, left: 50);
              },
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}
