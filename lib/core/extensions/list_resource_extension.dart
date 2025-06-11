import 'package:koshiba_agent_app/logic/models/resource/resource.dart';

extension ListResourceExtension on List<Resource> {
  /// Returns a new list with all [Resource]s that are in progress.
  bool get hasInProgress => any((resource) => resource is ResourceInProgress);
  bool get hasDone => any((resource) => resource is ResourceDone);
  bool get hasError => any((resource) => resource is ResourceError);
}
