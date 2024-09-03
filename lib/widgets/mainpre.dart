import 'package:flutter/material.dart';

class main_precautions extends StatelessWidget {
  const main_precautions({super.key});

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
        title:  Text("Main Precautions"),
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
                                "The precautions and measures for early-stage skin cancer can vary depending on the specific type of skin cancer diagnosed. Here are some additional precautions and measures based on common types of skin cancer: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,

                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "1.	Basal Cell Carcinoma (BCC):",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Surgical excision: The primary treatment for BCC is surgical removal. Follow your healthcare professional's advice regarding the extent of surgery and wound care instructions.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Mohs surgery: For BCCs in sensitive areas or with high-risk features, Mohs surgery may be recommended. This procedure involves removing thin layers of tissue and examining them under a microscope to ensure complete removal while preserving healthy tissue.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Regular follow-ups: Schedule regular follow-up appointments to monitor for recurrence or new lesions. Your healthcare professional will determine the frequency of these appointments based on your specific case.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                "2.	Squamous Cell Carcinoma (SCC):",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Surgical excision: SCC is typically treated with surgical removal. The size and depth of the tumor will determine the extent of surgery required. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Lymph node evaluation: In some cases, SCC may spread to nearby lymph nodes. Your healthcare professional may recommend a sentinel lymph node biopsy or imaging tests to assess lymph node involvement. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Topical medications: In certain cases, topical medications like imiquimod or 5-fluorouracil may be prescribed to treat superficial SCC or precancerous lesions.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Regular check-ups: Attend regular follow-up appointments to monitor for recurrence or new lesions. Your healthcare professional will determine the appropriate frequency for these check-ups. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                "3.	Melanoma:",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Surgical excision: Early-stage melanomas are typically treated with surgical excision. The depth and extent of the tumor will determine the necessary surgical margins.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Sentinel lymph node biopsy: Melanomas with certain features or a higher risk of spread may require a sentinel lymph node biopsy to evaluate lymph node involvement. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Adjuvant therapy: Depending on the specific characteristics of the melanoma, your healthcare professional may recommend adjuvant therapy, such as immunotherapy or targeted therapy, to reduce the risk of recurrence.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Regular surveillance: Regular surveillance with skin exams, imaging tests, and blood work may be necessary to monitor for recurrence or metastasis.",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "•	Sun protection and self-examination: Individuals with melanoma should be particularly diligent with sun protection measures and perform regular self-examinations of their skin to detect any new or changing moles. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                "Note that  the specific treatment plan and precautions will be determined by your healthcare professional based on your individual case. They will consider factors such as the stage, location, and other specific characteristics of the skin cancer. Always follow your healthcare professional's advice and attend regular check-ups for ongoing monitoring and care. ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                              // SizedBox(
                              //   height: 12,
                              // ),
                              // Text(
                              //   "{confidence.toStringAsFixed(0)}% ",
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: 18,
                              //   ),
                              // ),
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
