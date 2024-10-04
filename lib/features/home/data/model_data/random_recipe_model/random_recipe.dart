import 'package:equatable/equatable.dart';

import 'meal.dart';

class RandomRecipe extends Equatable {
  final List<MealRandom>? meals;

  const RandomRecipe({this.meals});

  factory RandomRecipe.fromJson(Map<String, dynamic> json) => RandomRecipe(
        meals: (json['meals'] as List<dynamic>?)
            ?.map((e) => MealRandom.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [meals];
}
