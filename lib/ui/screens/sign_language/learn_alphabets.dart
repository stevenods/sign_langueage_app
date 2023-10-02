// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sped_app/controller/translate.dart';
import 'package:sped_app/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sped_app/ui/screens/sign_page.dart';

class LearnAlhapbet extends StatefulWidget {
  const LearnAlhapbet({super.key});

  @override
  State<LearnAlhapbet> createState() => LearnAlhapbetState();
}

class LearnAlhapbetState extends State<LearnAlhapbet> {
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
                  "Learn Alphabets",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
              ),
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
