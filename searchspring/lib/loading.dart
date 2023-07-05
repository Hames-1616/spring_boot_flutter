import 'package:flutter/material.dart';

class loader extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const loader());
  const loader({super.key});

  @override
  State<loader> createState() => _loaderState();
}

class _loaderState extends State<loader> {
  @override
  Widget build(BuildContext context) {
    print("loading");
    return const Scaffold(
      body: Center(
          child: CircularProgressIndicator(
        color: Colors.red,
      )),
    );
  }
}
