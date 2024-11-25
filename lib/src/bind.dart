import 'package:meta/meta_meta.dart';

/// Indicates a class that should be bound by the dart_eval binding
/// generator.
@Target({TargetKind.classType})
class Bind {
  const Bind({this.overrideLibrary, this.implicitSupers = false});

  final String? overrideLibrary;
  final bool implicitSupers;
}

// Indicates the possible types or return types of a method or field.
@Target(
    {TargetKind.method, TargetKind.field, TargetKind.getter, TargetKind.setter})
class UnionOf {
  const UnionOf(this.types);

  final List<Type> types;
}
