import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_theta_tutorial/view/image_button.dart';
import 'package:riverpod_theta_tutorial/view/state_button.dart';

import 'providers/camera_providers.dart';
import 'view/info_button.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var responseWidget = ref.watch(responseProvider);
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                  children: const [InfoButton(), StateButton(), ImageButton()]),
            ),
            Expanded(
                flex: 2, child: SingleChildScrollView(child: responseWidget)),
          ],
        ),
      ),
    );
  }
}
