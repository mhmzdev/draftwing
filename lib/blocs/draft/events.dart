part of 'bloc.dart';

sealed class DraftEvent {
  const DraftEvent();
}

// -- events -- //

class DraftDeleteEvent extends DraftEvent {
  final String id;
  const DraftDeleteEvent(this.id);
}

class DraftSaveEvent extends DraftEvent {
  final DraftResponse draft;
  final bool isEdit;
  const DraftSaveEvent(this.draft, {this.isEdit = false});
}

class DraftFetchEvent extends DraftEvent {
  final bool force;
  const DraftFetchEvent({this.force = false});
}

class DraftSetupCountEvent extends DraftEvent {
  const DraftSetupCountEvent();
}

class DraftIncrementCountEvent extends DraftEvent {
  const DraftIncrementCountEvent();
}

class DraftResetSaveEvent extends DraftEvent {
  const DraftResetSaveEvent();
}

class DraftResetEvent extends DraftEvent {
  const DraftResetEvent();
}
