import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wear_me_flutter/app.dart';
import 'package:device_preview/device_preview.dart';

//Enable this function when running using the web
void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const App(),
      ),
    );
  
//Enable this function when running on an emulator or real device
// void main() {
//   runApp(const App());
// }
