import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title:  Text("General Information"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink,
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.logout, color: Colors.white, size: 30.0),
        //     onPressed: () {
        //       // FirebaseAuth.instance.signOut();5
        //       // Navigator.of(context)
        //       //     .pushNamedAndRemoveUntil("/login_page/", (route) => false);
        //     },
        //   ),
        // ],
      ),
      body: const SingleChildScrollView(
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
                        // const SizedBox(
                        //   height: 18,
                        // ),
                        // Container(
                        //   height: 280,
                        //   width: 280,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(12),
                        //     image: const DecorationImage(
                        //         image: AssetImage('assets/IMG.jpg'),
                        //         fit: BoxFit.fill),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 12,
                        // ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Breast cancer is a serious condition that requires prompt attention. If you have been diagnosed with breast cancer at an early stage, it's important to take certain precautions and measures to manage the condition effectively. Here are some of them you can take: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "1. Consult with a healthcare professional:  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              // SizedBox(
                              //   height: 12,
                              // ),
                              Text(
                                "Schedule an appointment with a medical oncologist who specializes in skin cancer. They will provide you with specific guidance tailored to your condition and recommend appropriate treatment options.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "2. Follow the recommended treatment plan: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              // SizedBox(
                              //   height: 12,
                              // ),
                              Text(
                                "Depending on the type and stage of breast cancer, your healthcare provider may suggest various treatment approaches such as surgical removal, radiation therapy, chemotherapy, immunotherapy, or targeted therapy. It's crucial to follow their advice and adhere to the prescribed treatment plan.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),

                              SizedBox(
                                height: 12,
                              ),


                              Text(
                                "Engage in a healthy lifestyle to support your overall well-being. Eat a balanced diet rich in fruits, vegetables, whole grains, and lean proteins. Stay physically active and exercise regularly. Get enough restful sleep and manage stress effectively. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "	3. Stay connected with your healthcare team:  ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),

                              Text(
                                "Attend follow-up appointments as scheduled and communicate any concerns or questions you may have. Your healthcare provider will monitor your progress, conduct regular examinations, and recommend any necessary additional treatments or preventive measures. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                " Remember, early detection and prompt treatment increase the chances of successful outcomes. By taking precautions, following medical advice, and being proactive in managing your breast cancer, you can improve your overall prognosis and maintain your breast health. ",
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
  }
}
