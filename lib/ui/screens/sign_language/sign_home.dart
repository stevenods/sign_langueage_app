// ignore_for_file: unnecessary_import

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sped_app/controller/translate.dart';
import 'package:sped_app/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sped_app/ui/screens/sign_page.dart';

class SignHome extends StatefulWidget {
  const SignHome({super.key});

  @override
  State<SignHome> createState() => SignHomeState();
}

class SignHomeState extends State<SignHome> {
  TranslaterController controller = Get.put(TranslaterController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Positioned(
                  top: 50,
                  left: 30,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: const SignPage(),
                              type: PageTransitionType.leftToRightWithFade,
                            ),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Constants.primaryColor.withOpacity(.15),
                          ),
                          child: Icon(
                            Icons.close,
                            color: Constants.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 50,
                child: Image.asset('assets/images/onboarding1.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Construct Words",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * .025,
                            ),
                            Card(
                              child: TextFormField(
                                controller: controller.textt,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15),
                                  border: InputBorder.none,
                                ),
                                onFieldSubmitted: (value) {
                                  controller.WrittenMessage();
                                },
                              ),
                            ),
                            const Text(
                              "Type above or press the mic and start speaking",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .2,
                      child: Obx(
                        () => AvatarGlow(
                          endRadius: 45,
                          animate:
                              controller.isListerning.value == 0 ? false : true,
                          showTwoGlows: true,
                          repeatPauseDuration:
                              const Duration(milliseconds: 100),
                          glowColor: Colors.deepPurple.shade300,
                          duration: const Duration(milliseconds: 2000),
                          child: FloatingActionButton.small(
                            shape: const CircleBorder(),
                            onPressed: () {},
                            child: GestureDetector(
                              onTapDown: (details) {
                                //controller.ListernToUser();
                              },
                              onTapUp: (details) {
                                //controller.stopListerning();
                              },
                              child: CircleAvatar(
                                child: Icon(
                                  controller.isListerning.value == 1
                                      ? Icons.mic
                                      : Icons.mic_none,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .65,
                child: SingleChildScrollView(
                  child: GetBuilder<TranslaterController>(
                    // ignore: non_constant_identifier_names
                    builder: (Tc) {
                      return Wrap(
                        spacing: 0,
                        runSpacing: 8,
                        children: Tc.showsigns.map((sign) {
                          return Image.asset(
                            sign.values.first,
                            height: 100,
                            width: 100,
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.WrittenMessage();
        },
        child: const Icon(Icons.translate),
      ),
    );
  }
}
/*
class SignHomeState extends State<SignHome> {
  TranslaterController controller = Get.put(TranslaterController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 50,
                    child: Image.asset('assets/images/onboarding1.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Learn Sign Language",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    width: size.width * .9,
                    decoration: BoxDecoration(
                      color: Constants.primaryColor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                              hintText: 'Search For Topic',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * .2,
                          child: Obx(() => AvatarGlow(
                                endRadius: 45,
                                animate: controller.isListerning.value == 0
                                    ? false
                                    : true,
                                showTwoGlows: true,
                                repeatPauseDuration:
                                    const Duration(milliseconds: 100),
                                glowColor: Colors.deepPurple.shade300,
                                duration: const Duration(milliseconds: 2000),
                                child: FloatingActionButton.small(
                                  shape: const CircleBorder(),
                                  onPressed: () {},
                                  child: GestureDetector(
                                    onTapDown: (details) {
                                      //controller.ListernToUser();
                                    },
                                    onTapUp: (details) {
                                      //controller.stopListerning();
                                    },
                                    child: CircleAvatar(
                                      child: Icon(
                                        controller.isListerning.value == 1
                                            ? Icons.mic
                                            : Icons.mic_none,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        const Text(
                          "Type above or press the mic and start speaking",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: size.height * .6,
              child: SizedBox(
                height: size.height * .65,
                child: SingleChildScrollView(
                  child: GetBuilder<TranslaterController>(
                    // ignore: non_constant_identifier_names
                    builder: (Tc) {
                      return Wrap(
                        spacing: 0,
                        runSpacing: 8,
                        children: Tc.showsigns.map((sign) {
                          return Image.asset(
                            sign.values.first,
                            height: 100,
                            width: 100,
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ),
            ),
            /*floatingActionButton: FloatingActionButton(
                onPressed: () {
                  controller.WrittenMessage();
                },
                child: const Icon(Icons.translate),
              ),*/
          ],
        ),
      ),
    );
  }
}
*/