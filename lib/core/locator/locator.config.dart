// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:marvel_mission_manager/core/locator/firebase_module.dart'
    as _i600;
import 'package:marvel_mission_manager/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i180;
import 'package:marvel_mission_manager/features/auth/data/repositories/auth_repository_impl.dart'
    as _i190;
import 'package:marvel_mission_manager/features/auth/domain/repositories/auth_repository.dart'
    as _i372;
import 'package:marvel_mission_manager/features/auth/domain/usecases/user_login.dart'
    as _i785;
import 'package:marvel_mission_manager/features/auth/presentation/bloc/auth_bloc.dart'
    as _i1015;
import 'package:marvel_mission_manager/features/characters/data/datasources/characters_remote_datasource.dart'
    as _i218;
import 'package:marvel_mission_manager/features/characters/data/datasources/missions_remote_datasource.dart'
    as _i523;
import 'package:marvel_mission_manager/features/characters/data/repositories/characters_repository_impl.dart'
    as _i308;
import 'package:marvel_mission_manager/features/characters/data/repositories/missions_repository_impl.dart'
    as _i900;
import 'package:marvel_mission_manager/features/characters/domain/repositories/characters_repository.dart'
    as _i196;
import 'package:marvel_mission_manager/features/characters/domain/repositories/missions_repository.dart'
    as _i1005;
import 'package:marvel_mission_manager/features/characters/domain/usecases/add_mission.dart'
    as _i847;
import 'package:marvel_mission_manager/features/characters/domain/usecases/delete_mission.dart'
    as _i312;
import 'package:marvel_mission_manager/features/characters/domain/usecases/get_characters.dart'
    as _i18;
import 'package:marvel_mission_manager/features/characters/presentation/bloc/characters_bloc.dart'
    as _i668;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final firebaseModule = _$FirebaseModule();
    gh.singleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.singleton<_i974.FirebaseFirestore>(
      () => firebaseModule.firebaseFirestore,
    );
    gh.factory<_i218.CharactersRemoteDataSource>(
      () => _i218.CharactersRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i180.AuthRemoteDataSource>(
      () => _i180.AuthRemoteDataSourceImpl(gh<_i59.FirebaseAuth>()),
    );
    gh.factory<_i523.MissionsRemoteDataSource>(
      () => _i523.MissionsRemoteDataSourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i372.AuthRepository>(
      () => _i190.AuthRepositoryImpl(gh<_i180.AuthRemoteDataSource>()),
    );
    gh.factory<_i196.CharactersRepository>(
      () => _i308.CharactersRepositoryImpl(
        gh<_i218.CharactersRemoteDataSource>(),
      ),
    );
    gh.factory<_i1005.MissionsRepository>(
      () => _i900.MissionsRepositoryImpl(gh<_i523.MissionsRemoteDataSource>()),
    );
    gh.factory<_i785.UserLogin>(
      () => _i785.UserLogin(gh<_i372.AuthRepository>()),
    );
    gh.factory<_i847.AddMission>(
      () =>
          _i847.AddMission(missionsRepository: gh<_i1005.MissionsRepository>()),
    );
    gh.factory<_i18.GetCharacters>(
      () => _i18.GetCharacters(gh<_i196.CharactersRepository>()),
    );
    gh.factory<_i312.DeleteMission>(
      () => _i312.DeleteMission(gh<_i1005.MissionsRepository>()),
    );
    gh.singleton<_i1015.AuthBloc>(
      () => _i1015.AuthBloc(userLogin: gh<_i785.UserLogin>()),
    );
    gh.singleton<_i668.CharactersBloc>(
      () => _i668.CharactersBloc(
        gh<_i18.GetCharacters>(),
        gh<_i847.AddMission>(),
        gh<_i312.DeleteMission>(),
      ),
    );
    return this;
  }
}

class _$FirebaseModule extends _i600.FirebaseModule {}
