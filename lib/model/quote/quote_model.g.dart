// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) => _QuoteModel(
  quoteID: (json['id'] as num?)?.toInt() ?? 0,
  quotation: json['quote'] as String? ?? '',
  authorName: json['author'] as String? ?? '',
);

Map<String, dynamic> _$QuoteModelToJson(_QuoteModel instance) =>
    <String, dynamic>{
      'id': instance.quoteID,
      'quote': instance.quotation,
      'author': instance.authorName,
    };
