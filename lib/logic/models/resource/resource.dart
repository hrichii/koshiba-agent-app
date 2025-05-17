import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:koshiba_agent_app/logic/enums/app_message_code.dart';

part 'resource.freezed.dart';
part 'resource.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class Resource<S> with _$Resource<S> {
  const Resource._();
  const factory Resource.done({required S value}) = ResourceDone<S>;
  const factory Resource.inProgress() = ResourceInProgress<S>;
  const factory Resource.error({required AppMessageCode value}) =
      ResourceError<S>;

  factory Resource.fromJson(
    Map<String, dynamic> json,
    S Function(Object?) fromJsonS,
  ) =>
      _$ResourceFromJson(json, fromJsonS);
}
