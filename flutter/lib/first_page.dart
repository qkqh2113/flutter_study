// first_page.dart

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text("첫번째 데이터"),
            Text("두번째 데이터"),
          ],
        ),
      ),
    );
  }
}