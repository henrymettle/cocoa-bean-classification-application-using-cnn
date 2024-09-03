import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class HELP extends MaterialPageRoute<Null> {
  HELP()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              title: Text('Help'),
              elevation: 5.0,
              centerTitle: true,

            ),
            body:  SingleChildScrollView(
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
                              const SizedBox(
                                height: 18,
                              ),
                              Container(
                                height: 135,
                                width: 135,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/logo.jpg'),
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
                                      "HOW TO USE THIS APP",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      " After you have successfully logged in into the main page / homepage. ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),

                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "2. Click on the button (i.e Go to gallery) to select a breast image for detection   ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Text(
                                      "3. You can select the General information tab on the navigation drawer for health information ",
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
