import 'package:flutter/widgets.dart';

import '../../flutter_core.dart';

/// An abstract class to inject a [ViewModel] into a page/widget
/// and dispose the [ViewModel] when the widget is disposed.
///
/// IMPORTANT: [ViewState] should only be used by the feature's main page.
/// If used in an internal widget, may cause unexpected errors.
///
/// See also:
///
///  * [View], which attaches the [ViewModel] and does not disposes it.
///  The disposal is done when the Module is disposed.
abstract class ViewState<S extends StatefulWidget, M extends ViewModel>
    extends State<S> with View<M> {
  @override
  void dispose() {
    super.dispose();
    final isDisposed = DM.dispose<M>();
    if (isDisposed) {
      return;
    }
    viewModel.dispose();
  }
}
