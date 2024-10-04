part of 'meals_cubit.dart';

sealed class MealsState extends Equatable {
  const MealsState();

  @override
  List<Object> get props => [];
}

final class MealsInitial extends MealsState {}
final class MealsLoadingState extends MealsState {}
final class MealsSuccessState extends MealsState {

 final List<Meals> meal ;

  const MealsSuccessState({required this.meal}); 


}
final class MealsFailureState extends MealsState {
  
final  String errMessage ; 
  const MealsFailureState({required this.errMessage});
  
  }




