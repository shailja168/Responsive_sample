import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
    home: Sample(),
));

class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Container(
                  height: 150.0,
                  padding: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 30.0,
                        width: 150.0,
                        color: Colors.grey,
                      ),
                      SizedBox(height:30.0),
                      Container(
                        height: 30.0,
                        color: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Stack(
              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                      child: Container(
                        height: 150.0,
                        padding: EdgeInsets.all(30.0),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                      ),
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 30.0,
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                  child: Center(
                    child: Container(
                      height: 50.0,
                      width: 150.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],),
      )
    );
  }
}






