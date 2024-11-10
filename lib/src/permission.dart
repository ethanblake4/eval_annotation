// Indicates the possible types or return types of a method or field.
import 'package:meta/meta_meta.dart';

@Target({TargetKind.method})
class AssertPermission {
  const AssertPermission(this.name, {this.constData, this.paramData});

  final String name;
  final Object? constData;
  final String? paramData;
}
