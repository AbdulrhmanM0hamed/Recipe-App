import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/repo/home_repo.dart';

part 'random_recipe_state.dart';

class RandomRecipeCubit extends Cubit<RandomRecipeState> {
  RandomRecipeCubit(this.homeRepo) : super(RandomRecipeInitial());

  final HomeRepo homeRepo;
  final int numberOfMeals = 5; // تحديد عدد الوجبات المطلوب

  Future<void> fetchRandomRecipe() async {
    emit(RandomRecipeLoading());

    List<Meal> meals = []; // قائمة لحفظ الوجبات

    try {
      // حلقة لجلب 5 وجبات عشوائية
      for (int i = 0; i < numberOfMeals; i++) {
        var result = await homeRepo.fetchRandomRecipe();

        result.fold(
          (failure) {
            // في حالة وجود خطأ، يظهر الرسالة
            emit(RandomRecipeFailure(errMessage: failure.errMessage));
            return; // الخروج من الحلقة عند وجود خطأ
          },
          (fetchedMeals) {
            meals.addAll(fetchedMeals); // إضافة كل الوجبات من القائمة إلى قائمة الوجبات
          },
        );
      }

      // إذا تم جلب جميع الوجبات بنجاح، يتم إرسال الحالة مع الوجبات
      emit(RandomRecipeSuccess(meals: meals));
    } catch (e) {
      emit(RandomRecipeFailure(errMessage: e.toString()));
    }
  }
}
