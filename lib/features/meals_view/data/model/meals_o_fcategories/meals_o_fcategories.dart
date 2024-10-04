import 'package:equatable/equatable.dart';
import 'package:recipe_app/features/home/data/model_data/random_recipe_model/meal.dart';

import 'meal.dart';

class MealsOFcategories extends Equatable {
  final List<Meal>? meals;

  const MealsOFcategories({this.meals});

  factory MealsOFcategories.fromJson(Map<String, dynamic> json) {
    return MealsOFcategories(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [meals];
}
