// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'application/auth/authentication_bloc/authentication_bloc.dart';
import 'infastructure/core/auth_modules_injection.dart';
import 'infastructure/auth/auth_repository.dart';
import 'domain/auth/i_auth_repository.dart';
import 'domain/products/i_proudct_repository.dart';
import 'domain/reviews/i_reviews_repository.dart';
import 'application/auth/sign_in_bloc/sign_in_bloc.dart';
import 'domain/core/network/network_info.dart';
import 'infastructure/products/product_repository.dart';
import 'application/product_search/product_search_bloc.dart';
import 'application/product_search_form/product_search_form_bloc.dart';
import 'application/product_watch/product_watcher_bloc.dart';
import 'infastructure/reviews/reviews_repository.dart';
import 'application/reviews_action/reviews_action_bloc.dart';
import 'application/reviews_watcher/reviews_watcher_bloc.dart';
import 'application/auth/sign_up_bloc/sign_up_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final authInjectableModule = _$AuthInjectableModule();
  gh.lazySingleton<Client>(() => authInjectableModule.httpClient);
  gh.lazySingleton<DataConnectionChecker>(
      () => authInjectableModule.dataConnectionChecker);
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(get<DataConnectionChecker>()));
  final sharedPreferences = await authInjectableModule.sharedPreferences;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<IAuthRepository>(() => AuthRepository(
        get<Client>(),
        get<NetworkInfo>(),
        get<SharedPreferences>(),
      ));
  gh.lazySingleton<IProductRepository>(() => ProductRepository(
        get<Client>(),
        get<NetworkInfo>(),
        get<SharedPreferences>(),
      ));
  gh.lazySingleton<IReviewRepository>(() => ReviewRepository(
        get<Client>(),
        get<NetworkInfo>(),
        get<SharedPreferences>(),
      ));
  gh.factory<LogInBloc>(
      () => LogInBloc(get<IAuthRepository>(), get<SharedPreferences>()));
  gh.factory<ProductSearchBloc>(
      () => ProductSearchBloc(get<IProductRepository>()));
  gh.factory<ProductSearchFormBloc>(
      () => ProductSearchFormBloc(get<IProductRepository>()));
  gh.factory<ProductWatcherBloc>(() =>
      ProductWatcherBloc(get<IProductRepository>(), get<SharedPreferences>()));
  gh.factory<ReviewsActionBloc>(
      () => ReviewsActionBloc(get<IReviewRepository>()));
  gh.factory<ReviewsWatcherBloc>(
      () => ReviewsWatcherBloc(get<IReviewRepository>()));
  gh.factory<SignUpBloc>(
      () => SignUpBloc(get<IAuthRepository>(), get<SharedPreferences>()));
  gh.factory<AuthBloc>(
      () => AuthBloc(get<IAuthRepository>(), get<SharedPreferences>()));
  return get;
}

class _$AuthInjectableModule extends AuthInjectableModule {}
