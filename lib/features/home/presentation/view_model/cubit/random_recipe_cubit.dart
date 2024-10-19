import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/home/data/random_recipe_model/meal.dart';
import 'package:recipe_app/features/home/data/random_recipe_model/repo/home_repo.dart';

part 'random_recipe_state.dart';

class RandomRecipeCubit extends Cubit<RandomRecipeState> {
  RandomRecipeCubit(this.homeRepo) : super(RandomRecipeInitial());

  final HomeRepo homeRepo;
  final int numberOfMeals = 5; 

  Future<void> fetchRandomRecipe() async {
    emit(RandomRecipeLoading());

    List<Meal> meals = []; 

    try {
    
      for (int i = 0; i < numberOfMeals; i++) {
        var result = await homeRepo.fetchRandomRecipe();

        result.fold(
          (failure) {
                        emit(RandomRecipeFailure(errMessage: failure.errMessage));
            return;
          },
          (fetchedMeals) {
            meals.addAll(
                fetchedMeals);
          },
        );
      }

      
      emit(RandomRecipeSuccess(meals: meals));
    } catch (e) {
      emit(RandomRecipeFailure(errMessage: e.toString()));
    }
  }
}
