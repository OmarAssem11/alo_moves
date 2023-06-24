import 'package:fluttertoast/fluttertoast.dart';
import 'package:alo_moves/ui/resources/theme_manager.dart';

void showToast(String message) => Fluttertoast.showToast(
      msg: message,
      backgroundColor: ColorPalette.black.withOpacity(0.7),
      textColor: ColorPalette.white,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
