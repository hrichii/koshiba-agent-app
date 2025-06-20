// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transcriptionUseCaseHash() =>
    r'3834afb06743d0932ae03ba7d2b72d39e72521f0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TranscriptionUseCase
    extends BuildlessAutoDisposeStreamNotifier<List<TranscriptionItem>> {
  late final String meetingId;

  Stream<List<TranscriptionItem>> build(String meetingId);
}

/// See also [TranscriptionUseCase].
@ProviderFor(TranscriptionUseCase)
const transcriptionUseCaseProvider = TranscriptionUseCaseFamily();

/// See also [TranscriptionUseCase].
class TranscriptionUseCaseFamily
    extends Family<AsyncValue<List<TranscriptionItem>>> {
  /// See also [TranscriptionUseCase].
  const TranscriptionUseCaseFamily();

  /// See also [TranscriptionUseCase].
  TranscriptionUseCaseProvider call(String meetingId) {
    return TranscriptionUseCaseProvider(meetingId);
  }

  @override
  TranscriptionUseCaseProvider getProviderOverride(
    covariant TranscriptionUseCaseProvider provider,
  ) {
    return call(provider.meetingId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'transcriptionUseCaseProvider';
}

/// See also [TranscriptionUseCase].
class TranscriptionUseCaseProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          TranscriptionUseCase,
          List<TranscriptionItem>
        > {
  /// See also [TranscriptionUseCase].
  TranscriptionUseCaseProvider(String meetingId)
    : this._internal(
        () => TranscriptionUseCase()..meetingId = meetingId,
        from: transcriptionUseCaseProvider,
        name: r'transcriptionUseCaseProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$transcriptionUseCaseHash,
        dependencies: TranscriptionUseCaseFamily._dependencies,
        allTransitiveDependencies:
            TranscriptionUseCaseFamily._allTransitiveDependencies,
        meetingId: meetingId,
      );

  TranscriptionUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.meetingId,
  }) : super.internal();

  final String meetingId;

  @override
  Stream<List<TranscriptionItem>> runNotifierBuild(
    covariant TranscriptionUseCase notifier,
  ) {
    return notifier.build(meetingId);
  }

  @override
  Override overrideWith(TranscriptionUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: TranscriptionUseCaseProvider._internal(
        () => create()..meetingId = meetingId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        meetingId: meetingId,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<
    TranscriptionUseCase,
    List<TranscriptionItem>
  >
  createElement() {
    return _TranscriptionUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TranscriptionUseCaseProvider &&
        other.meetingId == meetingId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, meetingId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TranscriptionUseCaseRef
    on AutoDisposeStreamNotifierProviderRef<List<TranscriptionItem>> {
  /// The parameter `meetingId` of this provider.
  String get meetingId;
}

class _TranscriptionUseCaseProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          TranscriptionUseCase,
          List<TranscriptionItem>
        >
    with TranscriptionUseCaseRef {
  _TranscriptionUseCaseProviderElement(super.provider);

  @override
  String get meetingId => (origin as TranscriptionUseCaseProvider).meetingId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
