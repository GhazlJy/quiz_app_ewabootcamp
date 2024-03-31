import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/category_screen.dart';
import 'package:quiz_app_ewabootcamp/utils/global_variable.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var mySize = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(250, 219, 239, 1), Color(0xFFACC8F3)],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/app_logo.png",
                    height: 180,
                    width: 200,
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  const Text(
                    "Welcome To Quiz App",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text("User name")),
                  TextFormField(
                    controller: userNameController,
                    validator: (textFromUserName) {
                      if (textFromUserName!.isEmpty) {
                        return "the user name is empty";
                      } else if (!textFromUserName
                          .startsWith(RegExp(r'[A-Z]'))) {
                        return "username should start with capitale liiter";
                      } else if (textFromUserName.length < 4) {
                        return "username should exceed 3 litters";
                      }
                    },
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Color(0xFFFADBEF)),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Color(0xFFFADBEF)),
                            borderRadius: BorderRadius.circular(15)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.red),
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text("Password")),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color(0xFFFADBEF)),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Color(0xFFFADBEF)),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<
                                        Color>(
                                    const Color.fromARGB(255, 250, 253, 255)),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const CategoryScreen(),
                                    ),
                                  );
                                }
                              },
                              child: const Text("Login",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ))))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/facebook_icon.png",
                        height: 50,
                        width: 50,
                      ),
                      Image.asset(
                        "assets/google_icon.png",
                        height: 50,
                        width: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image.asset(
                          "assets/linkedin_icon.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
