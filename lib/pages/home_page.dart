import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_test/pages/Drawer.dart';
import 'package:tflite_test/widgets/generealpre.dart';
import 'package:text_scroll/text_scroll.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String label = "";
  List labels = [];
  // String confidence = "";
  double confidence = 0;

  File? filepath;

  String information = '';

  Future<void> _initTfLite() async {
    String? res = await Tflite.loadModel(
        // model: "assets/modelTest.tflite",
        model: "assets/model.tflite",
        labels: "assets/labels.txt",
        numThreads: 1, // defaults to 1
        isAsset:
            true, // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );
  }

  getImageCamera() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image == null) {
      return;
    }

    var imageMap = File(image.path);

    setState(() {
      filepath = imageMap;
    });

    var recognitions = await Tflite.runModelOnImage(
        path: image.path, // required
        imageMean: 0.0, // defaults to 117.0
        imageStd: 255.0, // defaults to 1.0
        numResults: 2, // defaults to 5
        threshold: 0.2, // defaults to 0.1

        asynch: true // defaults to true
        );

    if (recognitions == null) {
      print("recognitions.... null");
      return;
    }

   print(recognitions[0]['confidence']);
    print(recognitions[0]['label']);
     print(recognitions);

    setState(() {
      confidence = (recognitions[0]['confidence'] * 100);
      labels = recognitions;
      label = recognitions[0]['label'].toString();
    });

    //Todo change the Conditions
    if (recognitions[0]['label'].toString() == "Bean_Fraction_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Broken_Beans_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Fermented_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Moldy_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Unfermented_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Whole_Beans_Cocoa") {
      setState(() {
        information = "";
      });
    } else {
      setState(() {
        information = "Take the right image";
      });
    }
    //Todo change the end
  }

  getImageGallery() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    }

    var imageMap = File(image.path);

    setState(() {
      filepath = imageMap;
    });

    var recognitions = await Tflite.runModelOnImage(
        path: image.path, // required
        imageMean: 0.0, // defaults to 117.0

        imageStd: 255.0, // defaults to 1.0

        numResults: 2, // defaults to 5
        threshold: 0.2, // defaults to 0.1

        asynch: true // defaults to true
        );

    if (recognitions == null) {
      print("recognitions.... null");
      return;
    }

   print(recognitions[0]['confidence']);
    print(recognitions[0]['label'].toString());
    print(recognitions);

     recognitions.map((e) {
    print(e);
     });

    setState(() {
     // confidence = (recognitions[0]['confidence'] * 100);
      labels = recognitions;
      label = recognitions[0]['label'].toString();
    });
//Todo change the Conditions
    if (recognitions[0]['label'].toString() == "Bean_Fraction_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Broken_Beans_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Fermented_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Moldy_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Unfermented_Cocoa") {
      setState(() {
        information = "";
      });
    } else if (recognitions[0]['label'].toString() == "Whole_Beans_Cocoa") {
      setState(() {
        information = "";
      });
    } else {
      setState(() {
        information = "Take the right image";
      });
    }
    //Todo: change the end
  }

  @override
  void dispose() {
    super.dispose();
    Tflite.close();
  }

  @override
  void initState() {
    super.initState();
    _initTfLite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.info_outline, size: 30.0),
        //   onPressed: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => const DetailsPage(),
        //       ),
        //     );
        //   },
        // ),

        title: const Text("Cocoa Bean Classification"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white, size: 30.0),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("/login_page/", (route) => false);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),

              Card(
                elevation: 2,
                clipBehavior: Clip.hardEdge,
                child: SizedBox(
                  width: 300,
                  // height: 580,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                         SizedBox(
                          height: 10,
                        ),
                     /*   TextScroll(
                          'Welcome to Cocoa Bean App.',
                          mode: TextScrollMode.endless,
                          velocity: Velocity(pixelsPerSecond: Offset(80, 0)),
                          delayBefore: Duration(milliseconds: 400),
                          numberOfReps: 200,
                          pauseBetween: Duration(milliseconds: 50),
                          style: TextStyle(color: Colors.green, fontSize: 16),
                          textAlign: TextAlign.right,
                          selectable: true,
                        ),*/
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage('assets/logo.png'),
                                fit: BoxFit.fill),
                          ),
                          child: filepath == null
                              ? const Text("")
                              : Image.file(
                                  filepath!,
                                  fit: BoxFit.fill,
                                ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                label,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                           /*   Text(
                                "The Accuracy is ${confidence.toStringAsFixed(0)}%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),*/
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                information,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
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
                height: 30,
              ),
             ElevatedButton(

                onPressed: () {
                  getImageCamera();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0)),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  "Camera",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  getImageGallery();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0)),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  "Gallery",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 8,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
