import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        child: Row(
          children: [
            Text(
                "gkbgkjfbkjefkjefkjesfkjefkjsbfk\njfekjfhkejshfjkehfkjehsfjkhefjkheskfhkehfse\nfejhfkjeshfjkhesfjkhsefjkhsejkfhkjsehfjkes\n")
          ],
        ),
      ),
    );
  }
}
