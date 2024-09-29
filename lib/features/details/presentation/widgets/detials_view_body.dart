import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/core/util/resources/color_manger.dart';
import 'package:recipe_app/core/util/resources/font_manger.dart';
import 'package:recipe_app/core/util/resources/route_manger.dart';
import 'package:recipe_app/core/util/resources/styles_manger.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';

class DetialsViewBody extends StatelessWidget {
  const DetialsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 3.2 / 3,
                    child: SvgPicture.asset(
                      "assets/images/wgba.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 16,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          } else {
                            context.go(RouteManger.homeview);
                          }
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 345,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // هنا يمكنك إضافة المحتوى الحالي...
                    // قسم اسم الوصفة، المكونات، طريقة التحضير، إلخ.
                  ],
                ),
              ),
            ],
          ),
        ),
     
      ],
    ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Choco Macarons",
                          style: getBoldStyle(
                            color: ColorManger.black,
                            fontFamily: FontConstant.montserrat,
                            fontSize: FontSize.size24,
                          )),
                      const Spacer(),
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.5",
                        style: getBoldStyle(
                            color: ColorManger.black,
                            fontFamily: FontConstant.montserrat,
                            fontSize: FontSize.size18),
                      ),
                    ],
                  ),
                  Text("By Rachel William",
                      style: getRegularStyle(
                          fontFamily: FontConstant.montserrat,
                          color: ColorManger.lightGrey,
                          fontSize: FontSize.size14)),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.access_time_rounded, color: ColorManger.lightGrey),
                      const SizedBox(width: 3),
                      Text(
                        "10 mins",
                        style: getRegularStyle(
                            color: ColorManger.lightGrey,
                            fontFamily: FontConstant.montserrat,
                            fontSize: 15),
                      ),
                      const SizedBox(width: 20),
                      Icon(Icons.bar_chart_rounded, color: ColorManger.lightGrey),
                      const SizedBox(width: 3),
                      Text(
                        "Medium",
                        style: getRegularStyle(
                            color: ColorManger.lightGrey,
                            fontFamily: FontConstant.montserrat,
                            fontSize: 15),
                      ),
                      const SizedBox(width: 20),
                      Icon(FontAwesomeIcons.fireFlameCurved, color: ColorManger.lightGrey),
                      const SizedBox(width: 3),
                      Text(
                        "512 cal",
                        style: getRegularStyle(
                            color: ColorManger.lightGrey,
                            fontFamily: FontConstant.montserrat,
                            fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Description",
                    style: getBoldStyle(
                      color: ColorManger.black,
                      fontFamily: FontConstant.montserrat,
                      fontSize: FontSize.size24,
                    ),
                  ),
                  Text(
                    "Chocolate is the best kind of dessert!",
                    style: getRegularStyle(
                        color: ColorManger.lightGrey,
                        fontFamily: FontConstant.montserrat,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Ingredients",
                    style: getBoldStyle(
                      color: ColorManger.black,
                      fontFamily: FontConstant.montserrat,
                      fontSize: FontSize.size24,
                    ),
                  ),
                  // هنا سنضيف المكونات
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("• 500 غرام مكرونة (يفضل النوع القلم أو الشرائط)",
                          style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• ماء للسلق", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• ملعقة كبيرة ملح", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("لتحضير اللحم المفروم:", style: getBoldStyle(
                              color: ColorManger.black,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• 500 غرام لحم مفروم", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• بصلة مفرومة", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• ملعقة صغيرة ملح", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• نصف ملعقة صغيرة فلفل أسود", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• ملعقة صغيرة بهارات مشكلة (اختياري)", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• ملعقة كبيرة زيت أو زبدة", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• 2 فص ثوم مفروم", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• صلصة طماطم (ملعقتان كبيرتان)", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("لتحضير البشاميل:", style: getBoldStyle(
                              color: ColorManger.black,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• 4 ملاعق كبيرة دقيق", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• 4 ملاعق كبيرة زبدة أو زيت", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• 4 أكواب حليب دافئ", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• ملعقة صغيرة ملح", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• ربع ملعقة صغيرة فلفل أبيض", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),
                      Text("• جبن مبشور (اختياري)", style: getRegularStyle(
                              color: ColorManger.lightGrey,
                              fontFamily: FontConstant.montserrat,
                              fontSize: 15)),

                              // إضافة قسم طريقة التحضير
const SizedBox(height: 20),
Text(
  "How to prepare",
  style: getBoldStyle(
    color: ColorManger.black,
    fontFamily: FontConstant.montserrat,
    fontSize: FontSize.size24,
  ),
),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("1. قم بغلي الماء في قدر كبير وأضف الملح.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("2. أضف المكرونة إلى الماء المغلي واطبخها حسب التعليمات الموجودة على العبوة.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("3. في مقلاة، قم بتسخين الزيت وأضف البصل والثوم واطبخهما حتى يصبح البصل شفافاً.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("4. أضف اللحم المفروم واطبخه حتى يتحول لونه إلى البني.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("5. أضف الملح، الفلفل، والبهارات واخلطهم جيدًا.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("6. لتحضير البشاميل، قم بإذابة الزبدة في قدر ثم أضف الدقيق وحرك حتى يصبح لونه ذهبيًا.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("7. أضف الحليب تدريجيًا مع التحريك المستمر لتجنب الكتل.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("8. أضف الملح والفلفل الأبيض واستمر في الطهي حتى يتماسك الخليط.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("9. ضع طبقة من المكرونة في طبق الخبز، ثم أضف خليط اللحم، ثم طبقة أخرى من المكرونة، واغمرها بالبشاميل.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("10. اخبزها في فرن مسخن مسبقًا على درجة حرارة 180 درجة مئوية لمدة 30 دقيقة.", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
    Text("11. قدم الطبق واستمتع!", 
        style: getRegularStyle(
            color: ColorManger.lightGrey,
            fontFamily: FontConstant.montserrat,
            fontSize: 15)),
  ],
),

                    ],
                  ),
                ],
              ),
            )
          ],
       
      ),
    );
  }
}
