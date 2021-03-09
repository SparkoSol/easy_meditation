import 'package:flutter/material.dart';

/// A utility to execute asynchronous task with no pain.
///
/// It automates the management waiting dialog each time an asynchronous
/// task is to be executed i.e. showing dialog before execution and closing
/// dialog after successful execution, it also handles errors during execution.
abstract class LazyTaskService {
  static Widget _dialog;

  static set dialog(Widget dialog) => _dialog = dialog;

  /// Executes an asynchronous task.
  ///
  /// [task] is the async task that will be executed, if an error occurs during
  /// the execution than it will be handle the error, depending upon the
  /// provided options, if [dialog] is provided than the default-dialog will be
  /// overridden by it.
  ///
  /// If [throwError] is set to `true` than the error will be rethrown so, that
  /// user can handle the error more specifically.
  ///
  /// [errorBuilder] will be opened, if provided, whenever an error occurs.
  static Future<T> execute<T>(
    BuildContext context,
    _LazyTask task, {
    Widget dialog,
    bool throwError = false,
    _ErrorBuilder errorBuilder,
  }) async {
    if (dialog == null) dialog = _dialog;
    if (dialog == null) throw 'No LoadingDialog was registered';

    T data;
    showDialog(context: context, builder: (context) => dialog);
    try {
      data = await task();
      Navigator.of(context).pop();
    } catch (e) {
      Navigator.of(context).pop();
      if (errorBuilder != null) {
        showDialog(context: context, builder: (context) => errorBuilder(e));
      }

      if (throwError) rethrow;
    }

    return data;
  }
}

typedef _ErrorBuilder = Widget Function(dynamic);
typedef _LazyTask<T> = Future<T> Function();
