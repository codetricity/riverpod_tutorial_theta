import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../providers/camera_providers.dart';

class StateButton extends ConsumerWidget {
  const StateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () async {
        var response = await http
            .post(Uri.parse('https://fake-theta.vercel.app/osc/state'));
        final responseMap = jsonDecode(response.body);
        const encoder = JsonEncoder.withIndent('  ');
        final formattedResponse = encoder.convert(responseMap);
        ref.read(responseProvider.notifier).state = Text(formattedResponse);
      },
      child: const Text('state'),
    );
  }
}
