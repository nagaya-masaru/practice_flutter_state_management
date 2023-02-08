// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xxx_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_XxxPageState _$$_XxxPageStateFromJson(Map<String, dynamic> json) =>
    _$_XxxPageState(
      name: json['name'] as String? ?? '',
      count: json['count'] as int? ?? 0,
      isLoading: json['isLoading'] as bool? ?? false,
      musicVolume: (json['musicVolume'] as num?)?.toDouble() ?? 0.0,
      timerCount: json['timerCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_XxxPageStateToJson(_$_XxxPageState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
      'isLoading': instance.isLoading,
      'musicVolume': instance.musicVolume,
      'timerCount': instance.timerCount,
    };
