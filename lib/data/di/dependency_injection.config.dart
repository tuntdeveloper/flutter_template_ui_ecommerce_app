// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;
import 'package:stylish/data/firebase/firebase_remote_datasource.dart' as _i6;
import 'package:stylish/data/local_db/local_db.dart' as _i4;
import 'package:stylish/data/repository/auth_repo.dart' as _i8;
import 'package:stylish/data/repository/chat_session_repo.dart' as _i3;
import 'package:stylish/data/repository/message_repo.dart' as _i5;
import 'package:stylish/data/repository/webrtc_repo.dart' as _i9;
import 'package:stylish/data/webrtc_interactor/webrtc_interactors.dart' as _i10;
import 'package:stylish/screens/auth/bloc/auth_bloc.dart' as _i11;
import 'package:stylish/screens/chat/chat_bloc/chat_bloc.dart' as _i12;
import 'package:stylish/screens/chat/chat_call_bloc/chat_call_bloc.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.ChatSessionDatabaseRepo>(
        () => _i3.ChatSessionDatabaseRepo());
    gh.factory<_i3.ChatSessionFireStoreRepo>(
        () => _i3.ChatSessionFireStoreRepo());
    gh.factory<_i4.LocalDbService>(() => _i4.LocalDbService());
    gh.factory<_i5.MessageDatabaseRepo>(() => _i5.MessageDatabaseRepo());
    gh.factory<_i5.MessageFireStoreRepo>(() => _i5.MessageFireStoreRepo());
    gh.factory<_i6.RemoteDataSource>(() => _i6.RemoteDataSource());
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i8.UserRepo>(() => _i8.UserRepo());
    gh.factory<_i9.WebRtcRepo>(
        () => _i9.WebRtcRepo(gh<_i6.RemoteDataSource>()));
    gh.factory<_i10.WebrtcInteractor>(
        () => _i10.WebrtcInteractor(gh<_i9.WebRtcRepo>()));
    gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(
          gh<_i8.UserRepo>(),
          gh<_i4.LocalDbService>(),
        ));
    gh.factory<_i12.ChatBloc>(() => _i12.ChatBloc(
          gh<_i8.UserRepo>(),
          gh<_i3.ChatSessionFireStoreRepo>(),
          gh<_i5.MessageFireStoreRepo>(),
          gh<_i3.ChatSessionDatabaseRepo>(),
          gh<_i5.MessageDatabaseRepo>(),
        ));
    gh.factory<_i13.ChatCallBloc>(
        () => _i13.ChatCallBloc(gh<_i10.WebrtcInteractor>()));
    return this;
  }
}

class _$RegisterModule extends _i4.RegisterModule {}
