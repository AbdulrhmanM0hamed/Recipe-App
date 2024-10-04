part of 'number_of_recipe_cubit.dart';

sealed class NumberOfRecipeState extends Equatable {
  const NumberOfRecipeState();

  @override
  List<Object> get props => [];
}

final class NumberOfRecipeInitial extends NumberOfRecipeState {}
final class NumberOfRecipeLoadingState extends NumberOfRecipeState {}
final class NumberOfRecipeSuccessState extends NumberOfRecipeState {

final List<NumberOfMeal> number_of_recipe ;

 const NumberOfRecipeSuccessState({required this.number_of_recipe}); 


}
final class NumberOfRecipeFailureState extends NumberOfRecipeState {

final String errMessage ;

 const NumberOfRecipeFailureState({required this.errMessage}); 

}



