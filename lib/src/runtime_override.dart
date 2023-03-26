import 'package:meta/meta_meta.dart';

/// Indicates a function that should be treated as a runtime override by the
/// dart_eval compiler.
@Target({TargetKind.function})
class RuntimeOverride {
  final String id;
  final int? version;
  const RuntimeOverride(this.id, {this.version});
}
