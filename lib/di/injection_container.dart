import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:alo_moves/di/injection_container.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
