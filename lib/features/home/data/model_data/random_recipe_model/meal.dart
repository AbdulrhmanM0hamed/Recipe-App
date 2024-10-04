import 'package:equatable/equatable.dart';

class MealRandom extends Equatable {
  final String? idMeal;
  final String? strMeal;
  final dynamic strDrinkAlternate;
  final String strCategory;
  final String? strArea;
  final String strInstructions;
  final String strMealThumb;
  final String? strTags;
  final String strYoutube;
  final List<String?> ingredients; 
  final List<String?> measures; 
  final String? strSource;
  final dynamic strImageSource;
  final dynamic strCreativeCommonsConfirmed;
  final dynamic dateModified;

  const MealRandom({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    required this.strCategory,
    this.strArea,
    required this.strInstructions,
    required this.strMealThumb,
    this.strTags,
    required this.strYoutube,
    required this.ingredients,
    required this.measures,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  factory MealRandom.fromJson(Map<String, dynamic> json) {
    List<String?> ingredients = [];
    List<String?> measures = [];

    for (int i = 1; i <= 20; i++) {
      ingredients.add(json['strIngredient$i'] as String?);
      measures.add(json['strMeasure$i'] as String?);
    }

    return MealRandom(
      idMeal: json['idMeal'] as String?,
      strMeal: json['strMeal'] as String?,
      strDrinkAlternate: json['strDrinkAlternate'] as dynamic,
      strCategory: json['strCategory'] as String,
      strArea: json['strArea'] as String?,
      strInstructions: json['strInstructions'] as String,
      strMealThumb: json['strMealThumb'] as String,
      strTags: json['strTags'] as String?,
      strYoutube: json['strYoutube'] as String,
      ingredients: ingredients,
      measures: measures,
      strSource: json['strSource'] as String?,
      strImageSource: json['strImageSource'] as dynamic,
      strCreativeCommonsConfirmed:
          json['strCreativeCommonsConfirmed'] as dynamic,
      dateModified: json['dateModified'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['idMeal'] = idMeal;
    data['strMeal'] = strMeal;
    data['strDrinkAlternate'] = strDrinkAlternate;
    data['strCategory'] = strCategory;
    data['strArea'] = strArea;
    data['strInstructions'] = strInstructions;
    data['strMealThumb'] = strMealThumb;
    data['strTags'] = strTags;
    data['strYoutube'] = strYoutube;

    for (int i = 0; i < ingredients.length; i++) {
      data['strIngredient${i + 1}'] = ingredients[i];
      data['strMeasure${i + 1}'] = measures[i];
    }

    data['strSource'] = strSource;
    data['strImageSource'] = strImageSource;
    data['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    data['dateModified'] = dateModified;

    return data;
  }

  @override
  List<Object?> get props => [
        idMeal,
        strMeal,
        strDrinkAlternate,
        strCategory,
        strArea,
        strInstructions,
        strMealThumb,
        strTags,
        strYoutube,
        ingredients,
        measures,
        strSource,
        strImageSource,
        strCreativeCommonsConfirmed,
        dateModified,
      ];
}
