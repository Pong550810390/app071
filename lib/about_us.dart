import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        child: Column(
          children: [
            Text("dwadwdwadwadaw"),
            Text(
                "dawdwadwadwadwadawdwadwadawdawdwa \ndawdwadwdwadwadwadwadawdwadwadawdwadwadawd\ndwadwadwadwdwadwadwadwadwdwadawdawdwadwa\n")
          ],
        ),
      ),
    );
  }
}
