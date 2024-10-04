import 'package:equatable/equatable.dart';

class NumberOfMeal extends Equatable {
  final String? strMeal;
  final String? strMealThumb;
  final String? idMeal;

  const NumberOfMeal({this.strMeal, this.strMealThumb, this.idMeal});

  factory NumberOfMeal.fromJson(Map<String, dynamic> json) => NumberOfMeal(
        strMeal: json['strMeal'] as String?,
        strMealThumb: json['strMealThumb'] as String?,
        idMeal: json['idMeal'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'strMeal': strMeal,
        'strMealThumb': strMealThumb,
        'idMeal': idMeal,
      };

  @override
  List<Object?> get props => [strMeal, strMealThumb, idMeal];
}
