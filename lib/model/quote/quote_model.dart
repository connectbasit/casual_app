import '../../index.dart';
part 'quote_model.freezed.dart';

part 'quote_model.g.dart';

@Freezed()
sealed class QuoteModel with _$QuoteModel {

  factory QuoteModel({
    @Default(0) @JsonKey(name: 'id') int quoteID,
    @Default('') @JsonKey(name: 'quote') String quotation,
    @Default('') @JsonKey(name: 'author') String authorName
}) = _QuoteModel;

  factory QuoteModel.fromJson(Map<String, dynamic> json) => _$QuoteModelFromJson(json);

}