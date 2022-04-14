// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageUploadResponse _$ImageUploadResponseFromJson(Map<String, dynamic> json) =>
    ImageUploadResponse(
      name: json['name'] as String?,
      bucket: json['bucket'] as String?,
      generation: json['generation'] as String?,
      metageneration: json['metageneration'] as String?,
      contentType: json['contentType'] as String?,
      timeCreated: json['timeCreated'] as String?,
      updated: json['updated'] as String?,
      storageClass: json['storageClass'] as String?,
      size: json['size'] as String?,
      md5Hash: json['md5Hash'] as String?,
      contentEncoding: json['contentEncoding'] as String?,
      contentDisposition: json['contentDisposition'] as String?,
      crc32c: json['crc32c'] as String?,
      etag: json['etag'] as String?,
      downloadTokens: json['downloadTokens'] as String?,
    );

Map<String, dynamic> _$ImageUploadResponseToJson(
        ImageUploadResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bucket': instance.bucket,
      'generation': instance.generation,
      'metageneration': instance.metageneration,
      'contentType': instance.contentType,
      'timeCreated': instance.timeCreated,
      'updated': instance.updated,
      'storageClass': instance.storageClass,
      'size': instance.size,
      'md5Hash': instance.md5Hash,
      'contentEncoding': instance.contentEncoding,
      'contentDisposition': instance.contentDisposition,
      'crc32c': instance.crc32c,
      'etag': instance.etag,
      'downloadTokens': instance.downloadTokens,
    };
