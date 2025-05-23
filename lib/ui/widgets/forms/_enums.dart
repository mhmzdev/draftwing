part of 'form.dart';

extension AppFormStateExt on AppFormState {
  bool get isDef => this == AppFormState.def;
  bool get isPressed => this == AppFormState.pressed;
  bool get isDisabled => this == AppFormState.disabled;
}

enum AppFormState { def, pressed, disabled }
