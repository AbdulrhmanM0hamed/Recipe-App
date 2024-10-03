part of 'random_recipe_cubit.dart';

sealed class RandomRecipeState extends Equatable {
  const RandomRecipeState();

  @override
  List<Object> get props => [];
}

final class RandomRecipeInitial extends RandomRecipeState {}

final class RandomRecipeLoading extends RandomRecipeState {}

final class RandomRecipeSuccess extends RandomRecipeState {
  final List<Meal> meals;

  const RandomRecipeSuccess({required this.meals});
}

final class RandomRecipeFailure extends RandomRecipeState {
  final String errMessage;

  const RandomRecipeFailure({required this.errMessage});
}
