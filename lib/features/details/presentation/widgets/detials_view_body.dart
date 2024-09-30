import 'package:flutter/material.dart';
import 'package:recipe_app/core/util/resources/values_manger.dart';
import 'package:recipe_app/features/details/presentation/widgets/custom_head_details_view.dart';
import 'package:recipe_app/features/details/presentation/widgets/info_about_recipe.dart';
import 'package:recipe_app/features/details/presentation/widgets/outline_details_view.dart';
import 'package:recipe_app/features/details/presentation/widgets/recipe_name_with_rate.dart';
import 'package:recipe_app/features/details/presentation/widgets/subtile_details_view.dart';

class DetialsViewBody extends StatelessWidget {
  const DetialsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeadDetialsView(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeNameWithRate(),
                InfoAboutRecipe(),
                SizedBox(height: 20),
                OutlineDetailsView(title: "Description"),
                SubtileDetialsView(
                  subtile: "subtile",
                ),
                SizedBox(height: 20),
                OutlineDetailsView(title: "Ingredients"),
                SubtileDetialsView(
                  subtile: "subtile",
                ),
                SizedBox(height: 10),
                OutlineDetailsView(title: "How To Prepare"),
                SubtileDetialsView(
                  subtile: """
  1. تحضير المكرونة:
  في وعاء كبير، ضعي الماء على النار حتى يغلي وأضيفي الملح.
  أضيفي المكرونة واتركيها تسلق حتى تصبح نصف ناضجة، ثم صفيها وضعيها جانباً.
  
  2. تحضير اللحم المفروم:
  في مقلاة، سخني الزيت أو الزبدة وأضيفي البصل المفروم حتى يذبل.
  أضيفي الثوم المفروم ثم اللحم المفروم، وقلبي جيدًا حتى ينضج اللحم.
  أضيفي الملح، الفلفل الأسود، والبهارات، وقلبي حتى تتجانس المكونات.
  أضيفي صلصة الطماطم واتركي الخليط على نار هادئة لمدة 10 دقائق حتى تتشرب النكهات.
  
  3. تحضير البشاميل:
  في قدر متوسط، سخني الزبدة حتى تذوب ثم أضيفي الدقيق وقلبيه حتى يتحمص قليلاً ويصبح ذهبي اللون.
  أضيفي الحليب تدريجيًا مع التحريك المستمر حتى يصبح المزيج متجانسًا وسميكًا.
  أضيفي الملح والفلفل الأبيض، ويمكنك إضافة الجبن المبشور للحصول على نكهة غنية.
  
  4. التجميع:
  في صينية فرن، ضعي نصف كمية المكرونة المسلوقة.
  أضيفي طبقة من خليط اللحم المفروم بالتساوي.
  ضعي فوقها باقي كمية المكرونة.
  اسكبي البشاميل فوق المكرونة بحيث يغطي السطح بالكامل.
  يمكنك رش المزيد من الجبن المبشور على الوجه إذا رغبتِ.
  
  5. الخبز:
  سخني الفرن مسبقاً على درجة حرارة 180 درجة مئوية.
  أدخلي الصينية في الفرن واتركيها لمدة 30-40 دقيقة حتى يتحمر الوجه ويصبح ذهبيًا.
  
  6. التقديم:
  اتركي المكرونة تبرد قليلاً قبل التقديم لتتماسك.
  قسميها إلى قطع وقدميها مع سلطة خضراء أو خبز.
  
  وبذلك تكون قد حضرت وجبة مكرونة بالبشاميل شهية في البيت!
  """,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}




