import 'package:flutter/material.dart';
import '../models/note.dart';
import '../models/scale.dart';
import '../models/stringed_instrument.dart';

const int _kFretCount = 12;
const double _kDotRadius = 10.0;
const double _kFontSize = 9.0;

class FretboardPainter extends CustomPainter {
  final Scale scale;
  final StringedInstrument instrument;

  FretboardPainter({
    required this.scale,
    required this.instrument,
  });

  // ─── 座標ヘルパー ───────────────────────

  /// フレット番号 → X座標（フレットの中央）
  /// フレット0（開放弦）は左端に少し余白を置く
  double _fretToX(int fret, Size size) {
    // フレット1〜12を等間隔に並べ、フレット0は左端に固定
    const double openStringX = 20.0;
    final double fretAreaWidth = size.width - openStringX;
    if (fret == 0) return openStringX;
    return openStringX + (fret / _kFretCount) * fretAreaWidth;
  }

  /// コースインデックス → Y座標
  /// courseIndex=0が最低音弦（画面下）になるよう反転
  double _courseToY(int courseIndex, Size size) {
    final int n = instrument.courseCount;
    if (n == 1) return size.height / 2;
    final double spacing = size.height / (n - 1);
    // 低音弦（index=0）を下に表示
    return size.height - courseIndex * spacing;
  }

  // ─── 描画メソッド ──────────────────────

  void _drawGrid(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Colors.brown.shade300
      ..strokeWidth = 1.5;

    final nut = Paint()
      ..color = Colors.brown.shade700
      ..strokeWidth = 4.0;

    // 弦（横線）
    for (int c = 0; c < instrument.courseCount; c++) {
      final y = _courseToY(c, size);
      canvas.drawLine(Offset(_fretToX(0, size), y),
          Offset(size.width, y), linePaint);
    }

    // フレット（縦線）
    for (int f = 0; f <= _kFretCount; f++) {
      final x = _fretToX(f, size);
      final paint = f == 0 ? nut : linePaint;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    // フレットマーク（3,5,7,9,12フレット）
    _drawFretMarkers(canvas, size);
  }

  void _drawFretMarkers(Canvas canvas, Size size) {
    const markers = [3, 5, 7, 9, 12];
    final markerPaint = Paint()..color = Colors.grey.shade300;

    for (final fret in markers) {
      final x = (_fretToX(fret - 1, size) + _fretToX(fret, size)) / 2;
      final y = size.height / 2;
      canvas.drawCircle(Offset(x, y), 5, markerPaint);
    }
  }

  void _drawDots(Canvas canvas, Size size) {
    for (int c = 0; c < instrument.courseCount; c++) {
      for (int fret = 0; fret <= _kFretCount; fret++) {
        final noteIdx = instrument.noteAt(c, fret);

        if (!scale.noteIndices.contains(noteIdx)) continue;

        final isRoot = noteIdx == scale.rootIndex;
        final dotPaint = Paint()
          ..color = isRoot ? Colors.red : Colors.black87;

        // 開放弦（fret=0）は弦の左端に表示
        final x = fret == 0
            ? _fretToX(0, size) - _kDotRadius - 2
            : (_fretToX(fret - 1, size) + _fretToX(fret, size)) / 2;
        final y = _courseToY(c, size);

        canvas.drawCircle(Offset(x, y), _kDotRadius, dotPaint);
        _drawNoteLabel(canvas, Offset(x, y), noteIdx, isRoot);
      }
    }
  }

  void _drawNoteLabel(
      Canvas canvas, Offset center, NoteIndex noteIdx, bool isRoot) {
    final label = noteNames[noteIdx];
    final tp = TextPainter(
      text: TextSpan(
        text: label,
        style: TextStyle(
          color: Colors.white,
          fontSize: _kFontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    tp.paint(
      canvas,
      center - Offset(tp.width / 2, tp.height / 2),
    );
  }

  void _drawOpenStringLabels(Canvas canvas, Size size) {
    for (int c = 0; c < instrument.courseCount; c++) {
      final y = _courseToY(c, size);
      final tp = TextPainter(
        text: TextSpan(
          text: instrument.openNoteNameAt(c),
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 10,
          ),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, Offset(2, y - tp.height / 2));
    }
  }

  // ─── CustomPainter オーバーライド ───────

  @override
  void paint(Canvas canvas, Size size) {
    _drawGrid(canvas, size);
    _drawDots(canvas, size);
    _drawOpenStringLabels(canvas, size);
  }

  @override
  bool shouldRepaint(FretboardPainter oldDelegate) {
    return oldDelegate.scale != scale ||
        oldDelegate.instrument != instrument;
  }
}
