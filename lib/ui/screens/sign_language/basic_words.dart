// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sped_app/controller/words.dart';
import 'package:sped_app/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sped_app/ui/screens/sign_page.dart';

class BasicWords extends StatefulWidget {
  const BasicWords({super.key});

  @override
  State<BasicWords> createState() => BasicWordsState();
}

class BasicWordsState extends State<BasicWords> {
  WordsController controller = Get.put(WordsController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: Column(
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
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Sign for Basic Words",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: size.height * .75,
                child: SingleChildScrollView(
                  child: GetBuilder<WordsController>(
                    // ignore: non_constant_identifier_names
                    builder: (Tc) {
                      return Wrap(
                        spacing: 0,
                        runSpacing: 8,
                        children: Tc.showsignsa.map(
                          (sign) {
                            return Image.asset(
                              sign.values.first,
                              height: 200,
                              width: 200,
                            );
                          },
                        ).toList(),
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
          controller.ShowAll();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
