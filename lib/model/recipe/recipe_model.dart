import '../../index.dart';

part 'recipe_model.freezed.dart';
part 'recipe_model.g.dart';


@Freezed()
sealed class RecipeModel  with _$RecipeModel{

  factory RecipeModel({
    @Default('') @JsonKey(name: 'name') String recipeName,
    @Default('') @JsonKey(name: 'image') String recipeImage,
    @Default(0) @JsonKey(name: 'cookTimeMinutes') int cookTime,
    @Default(0) @JsonKey(name: 'servings') int servings,
    @Default(0) @JsonKey(name: 'caloriesPerServing') int calories,
    @Default(0) @JsonKey(name: 'rating') int rating,
    @Default([]) @JsonKey(name: 'ingredients') List ingredient,
}) = _RecipeModel;

  factory RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

}
