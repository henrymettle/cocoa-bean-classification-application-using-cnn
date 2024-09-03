import 'package:flutter/material.dart';

class ABOUT extends MaterialPageRoute<Null> {
  ABOUT()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              title: Text('About Us'),
              elevation: 5.0,
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Card(
                      elevation: 20,
                      clipBehavior: Clip.hardEdge,
                      child: SizedBox(
                        width: 300,
                        // height: 580,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                               SizedBox(
                                height: 18,
                              ),
                              Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/logo.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "Cocoa Bean Classification ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "Welcome to the Cocoa Bean Classification app, your essential tool for identifying and classifying cocoa beans with precision and ease! Our mission is to empower farmers, traders, and cocoa enthusiasts with the knowledge and technology needed to enhance cocoa quality and promote sustainable practices in the cocoa industry. ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "We are a dedicated team of software engineers and data scientists passionate about leveraging technology to support the cocoa industry. With a deep understanding of the challenges faced by cocoa farmers and traders, we developed this app to simplify the classification process .",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // getImageCamera();
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 30.0, vertical: 10.0),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(13.0)),
                    //     foregroundColor: Colors.white,
                    //   ),
                    //   child: const Text(
                    //     "Take a photo",
                    //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 8,
                    // ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     // getImageGallery();
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 30.0, vertical: 10.0),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(13.0)),
                    //     foregroundColor: Colors.white,
                    //   ),
                    //   child: const Text(
                    //     "pick from gallery",
                    //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 8,
                    // ),
                  ],
                ),
              ),
            ),
          );
        });
}
