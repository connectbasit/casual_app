// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeModel {

@JsonKey(name: 'name') String get recipeName;@JsonKey(name: 'image') String get recipeImage;@JsonKey(name: 'cookTimeMinutes') int get cookTime;@JsonKey(name: 'servings') int get servings;@JsonKey(name: 'caloriesPerServing') int get calories;@JsonKey(name: 'rating') int get rating;@JsonKey(name: 'ingredients') List get ingredient;
/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeModelCopyWith<RecipeModel> get copyWith => _$RecipeModelCopyWithImpl<RecipeModel>(this as RecipeModel, _$identity);

  /// Serializes this RecipeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeModel&&(identical(other.recipeName, recipeName) || other.recipeName == recipeName)&&(identical(other.recipeImage, recipeImage) || other.recipeImage == recipeImage)&&(identical(other.cookTime, cookTime) || other.cookTime == cookTime)&&(identical(other.servings, servings) || other.servings == servings)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.ingredient, ingredient));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipeName,recipeImage,cookTime,servings,calories,rating,const DeepCollectionEquality().hash(ingredient));

@override
String toString() {
  return 'RecipeModel(recipeName: $recipeName, recipeImage: $recipeImage, cookTime: $cookTime, servings: $servings, calories: $calories, rating: $rating, ingredient: $ingredient)';
}


}

/// @nodoc
abstract mixin class $RecipeModelCopyWith<$Res>  {
  factory $RecipeModelCopyWith(RecipeModel value, $Res Function(RecipeModel) _then) = _$RecipeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String recipeName,@JsonKey(name: 'image') String recipeImage,@JsonKey(name: 'cookTimeMinutes') int cookTime,@JsonKey(name: 'servings') int servings,@JsonKey(name: 'caloriesPerServing') int calories,@JsonKey(name: 'rating') int rating,@JsonKey(name: 'ingredients') List ingredient
});




}
/// @nodoc
class _$RecipeModelCopyWithImpl<$Res>
    implements $RecipeModelCopyWith<$Res> {
  _$RecipeModelCopyWithImpl(this._self, this._then);

  final RecipeModel _self;
  final $Res Function(RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recipeName = null,Object? recipeImage = null,Object? cookTime = null,Object? servings = null,Object? calories = null,Object? rating = null,Object? ingredient = null,}) {
  return _then(_self.copyWith(
recipeName: null == recipeName ? _self.recipeName : recipeName // ignore: cast_nullable_to_non_nullable
as String,recipeImage: null == recipeImage ? _self.recipeImage : recipeImage // ignore: cast_nullable_to_non_nullable
as String,cookTime: null == cookTime ? _self.cookTime : cookTime // ignore: cast_nullable_to_non_nullable
as int,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as int,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,ingredient: null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as List,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeModel].
extension RecipeModelPatterns on RecipeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeModel value)  $default,){
final _that = this;
switch (_that) {
case _RecipeModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeModel value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String recipeName, @JsonKey(name: 'image')  String recipeImage, @JsonKey(name: 'cookTimeMinutes')  int cookTime, @JsonKey(name: 'servings')  int servings, @JsonKey(name: 'caloriesPerServing')  int calories, @JsonKey(name: 'rating')  int rating, @JsonKey(name: 'ingredients')  List ingredient)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.recipeName,_that.recipeImage,_that.cookTime,_that.servings,_that.calories,_that.rating,_that.ingredient);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String recipeName, @JsonKey(name: 'image')  String recipeImage, @JsonKey(name: 'cookTimeMinutes')  int cookTime, @JsonKey(name: 'servings')  int servings, @JsonKey(name: 'caloriesPerServing')  int calories, @JsonKey(name: 'rating')  int rating, @JsonKey(name: 'ingredients')  List ingredient)  $default,) {final _that = this;
switch (_that) {
case _RecipeModel():
return $default(_that.recipeName,_that.recipeImage,_that.cookTime,_that.servings,_that.calories,_that.rating,_that.ingredient);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String recipeName, @JsonKey(name: 'image')  String recipeImage, @JsonKey(name: 'cookTimeMinutes')  int cookTime, @JsonKey(name: 'servings')  int servings, @JsonKey(name: 'caloriesPerServing')  int calories, @JsonKey(name: 'rating')  int rating, @JsonKey(name: 'ingredients')  List ingredient)?  $default,) {final _that = this;
switch (_that) {
case _RecipeModel() when $default != null:
return $default(_that.recipeName,_that.recipeImage,_that.cookTime,_that.servings,_that.calories,_that.rating,_that.ingredient);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeModel implements RecipeModel {
   _RecipeModel({@JsonKey(name: 'name') this.recipeName = '', @JsonKey(name: 'image') this.recipeImage = '', @JsonKey(name: 'cookTimeMinutes') this.cookTime = 0, @JsonKey(name: 'servings') this.servings = 0, @JsonKey(name: 'caloriesPerServing') this.calories = 0, @JsonKey(name: 'rating') this.rating = 0, @JsonKey(name: 'ingredients') final  List ingredient = const []}): _ingredient = ingredient;
  factory _RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

@override@JsonKey(name: 'name') final  String recipeName;
@override@JsonKey(name: 'image') final  String recipeImage;
@override@JsonKey(name: 'cookTimeMinutes') final  int cookTime;
@override@JsonKey(name: 'servings') final  int servings;
@override@JsonKey(name: 'caloriesPerServing') final  int calories;
@override@JsonKey(name: 'rating') final  int rating;
 final  List _ingredient;
@override@JsonKey(name: 'ingredients') List get ingredient {
  if (_ingredient is EqualUnmodifiableListView) return _ingredient;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredient);
}


/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeModelCopyWith<_RecipeModel> get copyWith => __$RecipeModelCopyWithImpl<_RecipeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeModel&&(identical(other.recipeName, recipeName) || other.recipeName == recipeName)&&(identical(other.recipeImage, recipeImage) || other.recipeImage == recipeImage)&&(identical(other.cookTime, cookTime) || other.cookTime == cookTime)&&(identical(other.servings, servings) || other.servings == servings)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._ingredient, _ingredient));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recipeName,recipeImage,cookTime,servings,calories,rating,const DeepCollectionEquality().hash(_ingredient));

@override
String toString() {
  return 'RecipeModel(recipeName: $recipeName, recipeImage: $recipeImage, cookTime: $cookTime, servings: $servings, calories: $calories, rating: $rating, ingredient: $ingredient)';
}


}

/// @nodoc
abstract mixin class _$RecipeModelCopyWith<$Res> implements $RecipeModelCopyWith<$Res> {
  factory _$RecipeModelCopyWith(_RecipeModel value, $Res Function(_RecipeModel) _then) = __$RecipeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String recipeName,@JsonKey(name: 'image') String recipeImage,@JsonKey(name: 'cookTimeMinutes') int cookTime,@JsonKey(name: 'servings') int servings,@JsonKey(name: 'caloriesPerServing') int calories,@JsonKey(name: 'rating') int rating,@JsonKey(name: 'ingredients') List ingredient
});




}
/// @nodoc
class __$RecipeModelCopyWithImpl<$Res>
    implements _$RecipeModelCopyWith<$Res> {
  __$RecipeModelCopyWithImpl(this._self, this._then);

  final _RecipeModel _self;
  final $Res Function(_RecipeModel) _then;

/// Create a copy of RecipeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recipeName = null,Object? recipeImage = null,Object? cookTime = null,Object? servings = null,Object? calories = null,Object? rating = null,Object? ingredient = null,}) {
  return _then(_RecipeModel(
recipeName: null == recipeName ? _self.recipeName : recipeName // ignore: cast_nullable_to_non_nullable
as String,recipeImage: null == recipeImage ? _self.recipeImage : recipeImage // ignore: cast_nullable_to_non_nullable
as String,cookTime: null == cookTime ? _self.cookTime : cookTime // ignore: cast_nullable_to_non_nullable
as int,servings: null == servings ? _self.servings : servings // ignore: cast_nullable_to_non_nullable
as int,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,ingredient: null == ingredient ? _self._ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as List,
  ));
}


}

// dart format on
