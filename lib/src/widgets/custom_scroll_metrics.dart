// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

// does this file checkin?

/// An immutable snapshot of values associated with a [Scrollable] viewport.
///
/// For details, see [ScrollMetrics], which defines this object's interfaces.
///
/// {@tool dartpad}
/// This sample shows how a [ScrollMetricsNotification] is dispatched when
/// the [ScrollMetrics] changed as a result of resizing the [Viewport].
/// Press the floating action button to increase the scrollable window's size.
///
/// ** See code in examples/api/lib/widgets/scroll_position/scroll_metrics_notification.0.dart **
/// {@end-tool}
class CustomFixedScrollMetrics with ScrollMetrics {
  /// Creates an immutable snapshot of values associated with a [Scrollable] viewport.
  CustomFixedScrollMetrics({
    required double? minScrollExtent,
    required double? maxScrollExtent,
    required double? pixels,
    required double? viewportDimension,
    required this.axisDirection,
    required this.devicePixelRatio
  }) : _minScrollExtent = minScrollExtent,
       _maxScrollExtent = maxScrollExtent,
       _pixels = pixels,
       _viewportDimension = viewportDimension;

  @override
  double get minScrollExtent => _minScrollExtent!;
  final double? _minScrollExtent;

  @override
  double get maxScrollExtent => _maxScrollExtent!;
  final double? _maxScrollExtent;

  @override
  bool get hasContentDimensions => _minScrollExtent != null && _maxScrollExtent != null;

  @override
  double get pixels => _pixels!;
  final double? _pixels;

  @override
  bool get hasPixels => _pixels != null;

  @override
  double get viewportDimension => _viewportDimension!;
  final double? _viewportDimension;

  @override
  bool get hasViewportDimension => _viewportDimension != null;

  @override
  final AxisDirection axisDirection;

  @override
  final double devicePixelRatio;

  @override
  String toString() {
    return '${objectRuntimeType(this, 'CustomFixedScrollMetrics')}(${extentBefore.toStringAsFixed(1)}..[${extentInside.toStringAsFixed(1)}]..${extentAfter.toStringAsFixed(1)})';
  }
}