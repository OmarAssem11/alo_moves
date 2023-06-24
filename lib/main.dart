import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:alo_moves/di/injection_container.dart';
import 'package:alo_moves/generated/l10n.dart';
import 'package:alo_moves/route_manager.dart';
import 'package:alo_moves/ui/resources/theme_manager.dart';
import 'package:alo_moves/utils/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Bloc.observer = AppBlocObserver();
  runApp(const AloMoves());
}

class AloMoves extends StatelessWidget {
  const AloMoves();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: WidgetsBinding.instance.focusManager.primaryFocus?.unfocus,
      child: MaterialApp.router(
        title: 'AloMoves',
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        theme: getTheme(),
        themeMode: ThemeMode.light,
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: const Locale('en'),
      ),
    );
  }
}
