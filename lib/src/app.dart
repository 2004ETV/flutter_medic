import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medic/src/config/router/router.dart';
import 'package:flutter_medic/src/config/styles/themes.dart';
import 'package:flutter_medic/src/repositories/analyzes/data/analyzes_repository.dart';
import 'package:flutter_medic/src/repositories/analyzes/data/analyzes_repository_impl.dart';
import 'package:flutter_medic/src/repositories/local_database/data/local_database_repository.dart';
import 'package:flutter_medic/src/repositories/local_database/data/local_database_repository_impl.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:oat_api/oat_api.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AnalyzesRepository>(
          create: (context) => AnalyzesRepositoryImpl(
            oatApi: GetIt.I.get<OatApi>(),
          ),
        ),
        RepositoryProvider<LocalDatabaseRepository>(
          create: (context) => LocalDatabaseRepositoryImpl(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: const [
          FormBuilderLocalizations.delegate,
        ],
        theme: AppThemes.light,
      ),
    );
  }
}
