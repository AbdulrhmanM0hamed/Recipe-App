part of 'categories_cubit.dart';

sealed class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

final class CategoriesInitial extends CategoriesState {}
final class CategoriesLoadingState extends CategoriesState {}
final class CategoriesFailureState extends CategoriesState {
  final String errMessage ;

  const CategoriesFailureState({required this.errMessage}); 

}
final class CategoriesSuccessState extends CategoriesState {

  final List<Category> categories ;

 const CategoriesSuccessState({required this.categories}); 
}




