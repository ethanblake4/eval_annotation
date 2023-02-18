import 'package:meta/meta_meta.dart';

@Target({TargetKind.function})
class RuntimeOverride {
  final String id;
  final int? version;
  const RuntimeOverride(this.id, {this.version});
}
