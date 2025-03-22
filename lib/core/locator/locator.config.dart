// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:marvel_mission_manager/core/locator/firebase_module.dart'
    as _i600;
import 'package:marvel_mission_manager/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i180;
import 'package:marvel_mission_manager/features/auth/data/datasources/repositories/auth_repository_impl.dart'
    as _i151;
import 'package:marvel_mission_manager/features/auth/domain/repositories/auth_repository.dart'
    as _i372;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i180.AuthRemoteDataSource>(
      () => _i180.AuthRemoteDataSourceImpl(gh<_i59.FirebaseAuth>()),
    );
    gh.factory<_i372.AuthRepository>(
      () => _i151.AuthRepositoryImpl(gh<_i180.AuthRemoteDataSource>()),
    );
    return this;
  }
}

class _$FirebaseModule extends _i600.FirebaseModule {}
