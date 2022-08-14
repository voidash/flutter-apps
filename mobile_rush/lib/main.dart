import 'package:flutter/material.dart';
import 'toc.dart';
import 'ebpearls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: const Color.fromARGB(0xff, 0xff, 0xcd, 0x06),
          cardColor: const Color.fromARGB(0xff, 0x00, 0x7a, 0xff),
          fontFamily: 'poppins',
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 14.0),
          ),
        ),
        home: const Login());
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0xff, 0xf8, 0xf8, 0xf8),
        elevation: 0.8,
        title: const Text(
          "Sign in",
          style: TextStyle(
              color: Color.fromARGB(0xff, 0x00, 0x7a, 0xff),
              fontSize: 34,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).cardColor, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0x20, 0x00, 0x7a, 0xff),
                      filled: true,
                      border: InputBorder.none,
                      labelText: 'Username',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(0x20, 0x00, 0x7a, 0xff),
                        filled: true,
                        border: InputBorder.none,
                        labelText: 'Password',
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Forgot password"),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).cardColor),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                textStyle: MaterialStateProperty.all(const TextStyle(
                  color: Colors.white,
                )),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Ebpearls()));
              },
              child: const Text(
                "sign in",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 160,
                ),
                Checkbox(value: false, onChanged: (value) {}),
                const Text(
                  "I agree to",
                  style: TextStyle(color: Color(0xff007aff)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const TOC()));
                  },
                  child: const Text(
                    "Terms and conditions",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Not registered yet",
                  style: TextStyle(color: Color(0xff007aff)),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign up",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
