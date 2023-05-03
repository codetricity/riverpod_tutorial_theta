import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';
import '../providers/camera_providers.dart';

class ImageButton extends ConsumerWidget {
  const ImageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () async {
        ref.read(responseProvider.notifier).state = Image.network(
            'https://codetricity.github.io/fake-storage/files/100RICOH/thumb/R0010002.JPG');
      },
      child: const Text('image'),
    );
  }
}
