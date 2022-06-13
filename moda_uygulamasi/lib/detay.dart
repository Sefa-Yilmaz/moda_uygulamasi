// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  //Detay({Key? key}) : super(key: key);

  var imagePath;
  Detay({this.imagePath});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imagePath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imagePath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 230,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              // ignore: prefer_const_constructors
                              image: DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ELBİSE',
                              style: TextStyle(
                                  fontFamily: 'fontyazi',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'dsadadas',
                              style: TextStyle(
                                  fontFamily: 'fontyazi',
                                  fontSize: 16,
                                  color: Colors.grey),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 170,
                              child: Text(
                                'dasddasjksdklasddklsaklsdjşkjldafşfalfakfas',
                                style: TextStyle(
                                    fontFamily: 'fontyazi',
                                    fontSize: 13,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$600',
                            style: TextStyle(
                              fontFamily: 'fontyazi',
                              fontSize: 22,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Center(
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                              backgroundColor: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 50,
            child: Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text('sefa',
                        style: TextStyle(
                            fontFamily: 'fontyazi',
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                                      
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 18,)
                ],
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}
