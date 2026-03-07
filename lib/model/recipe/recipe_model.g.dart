// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecipeModel _$RecipeModelFromJson(Map<String, dynamic> json) => _RecipeModel(
  recipeName: json['name'] as String? ?? '',
  recipeImage: json['image'] as String? ?? '',
  cookTime: (json['cookTimeMinutes'] as num?)?.toInt() ?? 0,
  servings: (json['servings'] as num?)?.toInt() ?? 0,
  calories: (json['caloriesPerServing'] as num?)?.toInt() ?? 0,
  rating: (json['rating'] as num?)?.toInt() ?? 0,
  ingredient: json['ingredients'] as List<dynamic>? ?? const [],
);

Map<String, dynamic> _$RecipeModelToJson(_RecipeModel instance) =>
    <String, dynamic>{
      'name': instance.recipeName,
      'image': instance.recipeImage,
      'cookTimeMinutes': instance.cookTime,
      'servings': instance.servings,
      'caloriesPerServing': instance.calories,
      'rating': instance.rating,
      'ingredients': instance.ingredient,
    };
