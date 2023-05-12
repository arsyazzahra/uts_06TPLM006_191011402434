import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UTS-Mintarsih'),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shoes",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(360),
                      child: Image.asset(
                        'img/person.jpg',
                        width: 70,
                        height: 60,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 400,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(Random().nextInt(0xffffffff))
                              .withAlpha(0xff),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 200,
                                    height: 50,
                                    child: Text(
                                      "Nike SB Zoom Blazer Mid Premium ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      maxLines: 4,
                                    ),
                                  ),
                                  Image.network(
                                    'https://pngfolio.com/images/all_img/copy/1635221496shoes-png-image.png',
                                    width: 120,
                                    height: 100,
                                  )
                                ],
                              ),
                              Text("IDR. 8.795")
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
