import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/models/ads_test/banner_ad_model.dart';
import 'package:instagram_app/shared/colors.dart';

class Myvalue extends StatefulWidget {
  const Myvalue({super.key});

  @override
  State<Myvalue> createState() => _MyvalueState();
}

class _MyvalueState extends State<Myvalue> {
  List verse = [
    {
      "line1": "المبالغ",
      "line2": " الحد الادنى لمبلغ التمويل 6000 جنيه والاقصى 100000 جنيه "
    },
    {
      "line1": "من 6000 جنيه وحتى 35000 جنيه ",
      "line2":
          " • الحد الأدنى من الأوراق • استعلام جنائي • استعلام ائتماني • الزيارات الميدانية اللازمة • سلطة الاعتماد مدير القرع "
    },
    {
      "line1": "اكثر من 35500 جنيه وحتى 50000 جنيه",
      "line2":
          "  • الحد الأدنى من الأوراق • استعلام جنائي • استعلام ائتماني •  الزيارات الميدانية اللازمة • سلطة الاعتماد المستوي السابق + موافقة مدير عمليات "
    },
    {
      "line1": "اكثر من 50500 جنيه وحتى 75000 جنيه",
      "line2":
          " • الحد الأدنى من الأوراق • يشترط توافر 2 مستند قانوني للمبالغ الأكبر من 50000 •استعلام جنائي • استعلام ائتماني • تقرير زيارة غسل الأموال • الزيارات الميدانية اللازمة • توقيع شيكات بنكية أو بريدية • سلطة الاعتماد المستوي السابق + موافقة اللجنة المركزية   "
    },
    {
      "line1": "من 75500 جنيه وحتى 100000 جنيه",
      "line2":
          "•  الحد الأدنى من الأوراق + يشترط توافر 2 مستند قانوني للمبالغ الأكبر من 50000  • استعلام جنائي • استعلام ائتماني • تقرير زيارة غسل الأموال • الزيارات الميدانية اللازمة • توقيع شيكات بنكية أو بريدية • سلطة الاعتماد المستوي السابق +  موافقة شركة الضمان",
    },
    {
      "line1": "المدة",
      "line2":
          "مدة التمويل الاول على النحو التالى: - من 6000وحتى 14500 لاتزيد عن 14 شهر /من 15000 وحتى 30000 لاتزيد عم 16 شهر /من 30500 وحتى 50000 لاتزيد عن 18 شهر ومن 50500 وحتى 75000 لاتزيد عن 20 شهر/ من75500 وحتي 100000 لاتزيد عن 24 شهر  "
    },
    {
      "line1": "وسائل النقل",
      "line2":
          "التمويل الاول لكل من: - التوكتوك والتروسيكل 25000 / الميكروباص والاجرة والنصف نقل 35000/واللورى والنقل الثقيل 50000"
    },
    {
      "line1": "شركة الضمان ",
      "line2":
          " يلزم الحصول على موافقة الشركة للمبالغ التى تزيد عن 75000 جنيه/ وطبعا فيه نموذج ويرسل معه صورة ضوئية للملف مستوفاه للسيد مدير الائتمان "
    },
    {
      "line1": "غسل الأموال ",
      "line2":
          " يلزم ابلاغ مسئول وحدة غسل الاموال عند التمويل للمبالغ التى تزيد عن 50000 ويلزم توقيع العميل على نموذج اعرف عميلك لكل العملاء كما يلزم ابلاغه بحالات السداد المبكر خلال الاربعة شهور الاولى من الحصول على تمويل  "
    },
    {
      "line1": "الاستعلام الائتمانى ",
      "line2":
          " يشترط ألا يزيد عدد التمويلات من الجهات الاخرى عن 3 جهات /لايتم تمويل العميل المتعثر او المخاطر مع العلم امكانية دراسة حالات المخاطر المرتفعة فيما يتعلق بقرض الغاز والنفقة والبنك الزراعى بشرط اعتماد و موافقة السيد مدير الائتمان"
    },
    {
      "line1": "الضامن",
      "line2": "   الضامن يعامل معاملة العميل عند التجديد حال وجود تأخير ويتم التمويل وفق الدراسة الائتمانية والتعليمات الاداريةالصادرة بتاريخ 20/2/2023 "
    },
    {
      "line1": "الانشطة المنزلية والحرفية",
      "line2":
          "الحد الاقصى للتمويل الاول 20000 ولايزيد فى التجديد عن 35000/ والحد الاقصى المسموح به 3 ملفات شهريا للمشروعات الحرفية لكل مسئول ائتمان "
    },

    {
      "line1": " التجديد ",
      "line2":
          " لايوجد تأخيرات والسداد على مدة اكبر من 50% من مدة التمويل 125% /   لايوجد تأخيرات والسداد على مدة أقل من 50% من مدة التمويل 50 %  /  من يوم وحتى 5 أيام تأخير 100 % /  من 6 أيام وحتى 15 يوم تأخير 75%  /   من 16 يوم وحتى 30 يوم تأخير 50%  / من 31 يوم وحتى 40 يوم تأخير25 % / من 41 يوم وحتى 50 يوم تأخير0 %  (نفس المبلغ)  / من 51 يوم وحتى 60 يوم تأخير (خصم 25%) / أكثر من 60 يوم لايتم التجديد  "
    },

    // {
    //   "line1": " فى النهاية ",
    //   "line2":
    //       "فضلاً وليس أمراً الدعاء للاستاذ وليد جلال استاذنا الفاضل بالرحمة والمغفرة "
    // },
  ];

  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          widthScreen > 600 ? webBackgroundColor : mobileBackgroundColor,
      appBar: widthScreen > 600
          ? null
          : AppBar(
              actions: [
                IconButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                    },
                    icon: const Icon(
                      Icons.logout,
                    )),
              ],
              backgroundColor: mobileBackgroundColor,
              title: const Text(
                "سياسات",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
                // color: primaryColor,
              ),
            ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SingleChildScrollView(scrollDirection: Axis.vertical),
              // const SizedBox(
              //   height: 25,
              // ),
              // ClipRRect(
              //     borderRadius: BorderRadius.circular(45),
              //     child: Image.asset(
              //       "assets/img/w_galal.jpg",
              //       height: 180,
              //       width: 180,
              //       fit: BoxFit.contain,
              //     )),

              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  verse[myIndex]["line1"],
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: "myfont",
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 102, 134, 14),
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  verse[myIndex]["line2"],
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: "myfont",
                    fontWeight: FontWeight.bold,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (myIndex == 0) {
                          myIndex = verse.length - 1;
                        } else {
                          myIndex--;
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 102, 134, 14),
                    child: const Icon(
                      Icons.arrow_left,
                      size: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (myIndex == verse.length - 1) {
                          myIndex = 0;
                        } else {
                          myIndex++;
                        }
                      });
                    },
                    backgroundColor: const Color.fromARGB(255, 102, 134, 14),
                    child: const Icon(
                      Icons.arrow_right,
                      size: 60,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              const AdBanner2(),
            ],
          ),
        ),
      ),
    );
  }
}
