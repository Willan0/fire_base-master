import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SingUp extends StatelessWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = ['g.png',"f.png",'t.png'];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Column(children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/signup.png"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.14,
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/love.png'),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.0,
                              offset: const Offset(1, 1),
                              color: Colors.grey.shade500)
                        ]),
                    child: TextField(
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white)),
                          focusColor: Colors.white,
                          label: Text(
                            'Email',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                  const Gap(23),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.0,
                              offset: const Offset(1, 1),
                              color: Colors.grey.shade500)
                        ]),
                    child: TextField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1)),
                          focusColor: Colors.white,
                          label: Text(
                            'password',
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  )
                ],
              ),
            ),
            const Gap(40),
            Container(
                width: w * 0.5,
                height: h * 0.09,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/loginbtn.png'))),
                child: const Center(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ))),
            const Gap(10),
            RichText(text: TextSpan(
              text: " Have an account ?",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
              ),
              recognizer: TapGestureRecognizer()..onTap=()=>Get.back()
            )),
            const Gap(50),
            RichText(
              text: TextSpan(
                text: "Sign up using on the following method",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                ),
              ),
            ),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey.shade500,
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage("images/${images[index]}"),
                    ),
                  ),
                );
              }),
            )
          ])
        ]));
  }
}
