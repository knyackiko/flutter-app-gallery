// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_License _$$_LicenseFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_License',
      json,
      ($checkedConvert) {
        final val = _$_License(
          key: $checkedConvert('key', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          spdxId: $checkedConvert('spdx_id', (v) => v as String?),
          url: $checkedConvert('url', (v) => v as String?),
          nodeId: $checkedConvert('node_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'spdxId': 'spdx_id', 'nodeId': 'node_id'},
    );

Map<String, dynamic> _$$_LicenseToJson(_$_License instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url,
      'node_id': instance.nodeId,
    };
