import 'package:call_and_sms/library/launchers.dart';
import 'package:call_and_sms/library/toasts_popups.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<Launchers>(Launchers.new);
  sl.registerLazySingleton<ToastPopup>(ToastPopup.new);
}
