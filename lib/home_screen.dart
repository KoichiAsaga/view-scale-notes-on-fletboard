import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/scale_provider.dart';
import '../widgets/fretboard_widget.dart';
import '../widgets/scale_selector.dart';
import '../widgets/tuning_editor.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scale = ref.watch(scaleProvider);
    final instrument = ref.watch(instrumentProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fretboard Scale Viewer'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── フレットボード ────────────
            FretboardWidget(scale: scale, instrument: instrument),

            const Divider(height: 24),

            // ── スケール選択 ──────────────
            ScaleSelector(),

            const Divider(height: 24),

            // ── チューニング編集 ──────────
            TuningEditor(),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
