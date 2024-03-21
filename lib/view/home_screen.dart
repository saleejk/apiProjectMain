import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.more_horiz_outlined),
        title: Text("instegram"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (ctx, index) {
            return SizedBox(
              width: double.infinity,
              height: 400,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          Text('username'),
                          Text('location'),
                        ],
                      ),
                      TextButton(onPressed: () {}, child: Text('follow'))
                    ],
                  ),
                  Image.asset(
                    'assets/IMG_0149 (1).jpg',
                    // width: double.infinity,
                    height: 300,
                  )
                ],
              ),
            );
          }),
    );
  }
}
