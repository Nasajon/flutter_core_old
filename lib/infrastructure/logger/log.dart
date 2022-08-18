import 'dart:io';

import 'package:flutter_dependencies/flutter_dependencies.dart';

///
/// App logging and analytics utils.
///
abstract class Log {
  static final _logger = Logger(
      // printer: _AppPrinter(),
      );

  static bool _isTest() {
    return Platform.environment.containsKey('FLUTTER_TEST');
  }

  /// Info level
  static void i(Object? message, [dynamic data]) {
    if (!_isTest()) {
      _logger.i(message, data);
    }
  }

  /// Debug level
  static void d(Object? message, [dynamic data]) {
    if (!_isTest()) {
      _logger.d(message, data);
    }
  }

  /// Warning level
  static void w(Object? message, [dynamic data]) {
    if (!_isTest()) {
      _logger.w(message, data);
    }
  }

  /// Error level
  static void e(Object? message, [dynamic error, StackTrace? stackTrace]) {
    if (!_isTest()) {
      _logger.e(message, error, stackTrace);
    }
  }

  // TODO: ativar a funcionalidade com o crashlyctics
  ///
  /// Register error to Crashlytics
  ///
  // static void registerError(dynamic exception, {StackTrace? stack}) async {
  //   if (_isTest()) {
  //     return;
  //   }

  //   e(exception);
  //   await FirebaseCrashlytics.instance.recordError(exception, stack);
  // }

  // /// Register app events in [AnalyticsClient]
  // static Future<void> analyticsEvent(
  //   AnalyticsEvent event, {
  //   Map<String, dynamic>? arguments,
  // }) async {
  //   if (_isTest()) {
  //     return;
  //   }

  //   final analytics = DM.get<AnalyticsClient>();
  //   final newEvent = event.copyWith(customArguments: arguments);
  //   await analytics.logEvent(newEvent.name, params: newEvent.arguments);
  //   d('Analytics event', {
  //     'name': newEvent.name,
  //     'arguments': newEvent.arguments,
  //   });
  // }

  // /// Log a raw event
  // static Future<void> analyticsRawEvent(RawAnalyticsEvent event) async {
  //   if (_isTest()) {
  //     return;
  //   }

  //   final analytics = DM.get<AnalyticsClient>();
  //   await analytics.logEvent(event.name, params: event.arguments);
  //   d('Analytics event', {'name': event.name, 'arguments': event.arguments});
  // }

  // /// Register current user ID in [AnalyticsClient]
  // static Future<void> analyticsUserId(String? userId) async {
  //   if (_isTest()) {
  //     return;
  //   }

  //   final analytics = DM.get<AnalyticsClient>();
  //   await analytics.setUserId(userId);
  // }

  // /// Register current user data in [AnalyticsClient]
  // static Future<void> analyticsUserData(Map<String, dynamic> data) async {
  //   if (_isTest()) {
  //     return;
  //   }

  //   final analytics = DM.get<AnalyticsClient>();
  //   await analytics.setUserData(data);
  // }

  // /// Create route observer with [AnalyticsClient]
  // static RouteObserver analyticsObserver() {
  //   final analytics = DM.get<AnalyticsClient>();
  //   return analytics.routeObserver();
  // }
}
