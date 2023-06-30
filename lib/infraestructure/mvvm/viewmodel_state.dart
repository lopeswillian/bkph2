import 'package:freezed_annotation/freezed_annotation.dart';

/// A view model state, which is used by [ViewModel]
@immutable
abstract class ViewModelState {
  ///Creates a [ViewModelState]
  const ViewModelState();
}
