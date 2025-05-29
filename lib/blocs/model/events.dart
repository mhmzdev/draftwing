part of 'bloc.dart';

sealed class ModelEvent {
  const ModelEvent();
}
// --- events --- //

class ModelGenerateDraftEvent extends ModelEvent {
  final Map<String, dynamic> payload;
  const ModelGenerateDraftEvent({required this.payload});
}

class ModelResetEvent extends ModelEvent {
  const ModelResetEvent();
}
