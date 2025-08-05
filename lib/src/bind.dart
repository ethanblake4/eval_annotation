import 'package:meta/meta_meta.dart';

/// Indicates a class that should be bound by the dart_eval binding
/// generator.
@Target({TargetKind.classType, TargetKind.enumType})
class Bind {
  const Bind({
    this.wrap,
    this.bridge,
    this.overrideLibrary,
    this.implicitSupers = false,
  });

  /// If true, generate a wrapper class for this type.
  final bool? wrap;

  /// If true, generate a bridge class for this type.
  final bool? bridge;

  /// Override the library where this type is defined.
  final String? overrideLibrary;

  /// Whether to implicitly bind supertype methods and fields into the generated bindings for
  /// this type.
  final bool implicitSupers;
}

// Indicates the possible types or return types of a method or field.
// Using this allows the binding generator to wrap the type in a specialized
// manner, rather than falling back to a generic wrapper such as $Object.
@Target(
    {TargetKind.method, TargetKind.field, TargetKind.getter, TargetKind.setter})
class UnionOf {
  const UnionOf(this.types);

  final List<Type> types;
}
