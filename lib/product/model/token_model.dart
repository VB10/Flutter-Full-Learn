import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'token_model.g.dart';

@JsonSerializable()
class TokenModel extends INetworkModel<TokenModel> {
  final String? token;

  TokenModel({this.token});

  @override
  TokenModel fromJson(Map<String, dynamic> json) {
    return _$TokenModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$TokenModelToJson(this);
  }
}
