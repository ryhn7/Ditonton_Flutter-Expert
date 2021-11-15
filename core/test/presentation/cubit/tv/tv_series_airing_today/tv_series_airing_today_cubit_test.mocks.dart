// Mocks generated by Mockito 5.0.16 from annotations
// in core/test/presentation/cubit/tv/tv_series_airing_today/tv_series_airing_today_cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:core/core.dart' as _i4;
import 'package:core/src/domain/entities/tv/tv.dart' as _i6;
import 'package:core/src/domain/repositories/tv_repository.dart' as _i2;
import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeTVRepository_0 extends _i1.Fake implements _i2.TVRepository {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [GetAiringTodayTVSeries].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAiringTodayTVSeries extends _i1.Mock
    implements _i4.GetAiringTodayTVSeries {
  MockGetAiringTodayTVSeries() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TVRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVRepository_0()) as _i2.TVRepository);
  @override
  _i5.Future<_i3.Either<_i4.Failure, List<_i6.TV>>> execute() =>
      (super.noSuchMethod(Invocation.method(#execute, []),
              returnValue: Future<_i3.Either<_i4.Failure, List<_i6.TV>>>.value(
                  _FakeEither_1<_i4.Failure, List<_i6.TV>>()))
          as _i5.Future<_i3.Either<_i4.Failure, List<_i6.TV>>>);
  @override
  // ignore: unnecessary_overrides
  String toString() => super.toString();
}
