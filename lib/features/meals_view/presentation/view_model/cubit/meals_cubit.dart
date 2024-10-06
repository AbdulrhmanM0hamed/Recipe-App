import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';
import 'package:recipe_app/features/meals_view/data/repo/meals_repo.dart';

part 'meals_state.dart';

class MealsCubit extends Cubit<MealsState> {
  MealsCubit(this.mealsRepo) : super(MealsInitial());
 
final MealsRepo mealsRepo ; 

Future <void> fetchedMeals(String search ) async {

  emit(MealsLoadingState()) ;

  var result = await mealsRepo.fetchMeals( search ) ;

  result.fold((failure){

    emit(MealsFailureState(errMessage: failure.errMessage)) ;


  }, (meals){
    emit(MealsSuccessState(meals: meals)) ;
  }) ;

}


}
