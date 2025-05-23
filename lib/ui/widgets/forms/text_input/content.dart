part of '../form.dart';

class AppFormTextInputContent<V> extends StatefulWidget {
  const AppFormTextInputContent({
    super.key,
    this.helper,
    this.name,
    this.fieldState,
    this.placeholder,
    this.label,
    this.heading,
    this.subHeading,
    this.maxLines,
    this.sideInput = false,
    this.selectInput = false,
    this.state = AppFormState.def,
    this.controller,
    this.initialValue,
    this.contentPadding,
    this.wrapperPadding,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputAction = TextInputAction.done,
    this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.autofillHints,
    this.autofocus = false,
    this.inputFormatters = const [],
    this.onChanged,
    this.onFieldSubmitted,
    this.textCapitalization = TextCapitalization.none,
    this.onTap,
  });

  final String? helper;
  final String? name;
  final String? placeholder;
  final String? label;
  final String? heading;
  final String? subHeading;
  final int? maxLines;
  final bool sideInput;
  final bool selectInput;
  final AppFormState state;
  final TextEditingController? controller;
  final FormFieldState<V>? fieldState;
  final String? initialValue;
  final EdgeInsets? contentPadding;
  final EdgeInsets? wrapperPadding;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final bool readOnly;
  final List<String>? autofillHints;
  final bool autofocus;
  final List<TextInputFormatter> inputFormatters;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTap;

  @override
  State<AppFormTextInputContent> createState() =>
      _AppFormTextInputContentState<V>();
}

class _AppFormTextInputContentState<V>
    extends State<AppFormTextInputContent<V>> {
  late AppFormState state;
  int? maxLines;
  bool obscureText = false;

  @override
  void initState() {
    state = widget.state;
    super.initState();

    obscureText = widget.obscureText;

    if (widget.maxLines != null) {
      maxLines = widget.maxLines;
    } else if (widget.keyboardType == TextInputType.multiline) {
      maxLines = 5;
    } else if (widget.obscureText || widget.maxLines == null) {
      maxLines = 1;
    }
  }

  @override
  void didUpdateWidget(covariant AppFormTextInputContent<V> oldWidget) {
    if (oldWidget.state != widget.state) {
      state = widget.state;
    }
    if (oldWidget.obscureText != widget.obscureText) {
      obscureText = widget.obscureText;
    }
    super.didUpdateWidget(oldWidget);
  }

  void _onFocus(bool flag) {
    if (flag) {
      state = AppFormState.pressed;
    } else {
      state = AppFormState.def;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final defaultPadding = Space.sym(SpaceToken.t12, SpaceToken.t04);

    return Focus(
      onFocusChange: _onFocus,
      child: AppFormBase(
        state: state,
        label: widget.label,
        heading: widget.heading,
        subHeading: widget.subHeading,
        padding: widget.wrapperPadding,
        selectInput: widget.selectInput,
        placeholder: widget.placeholder,
        error: widget.fieldState?.errorText,
        helper: widget.helper,
        readOnly: widget.readOnly,
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        isOnTapAvailable: widget.onTap != null,
        obscureText: widget.obscureText,
        onObscureTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: TextFormField(
          onTap: widget.onTap,
          enabled: !widget.state.isDisabled,
          readOnly: widget.readOnly,
          obscureText: obscureText,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onFieldSubmitted,
          cursorColor: AppTheme.c.secondary,
          controller: widget.controller,
          initialValue: widget.initialValue,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          autofillHints: widget.autofillHints,
          autofocus: widget.autofocus,
          inputFormatters: widget.inputFormatters,
          autovalidateMode: AutovalidateMode.disabled,
          textCapitalization: widget.textCapitalization,
          maxLines: maxLines,
          decoration: InputDecoration(
            prefixIconConstraints: widget.prefixIconConstraints,
            suffixIconConstraints: widget.suffixIconConstraints,
            isDense: true,
            errorText: null,
            contentPadding: widget.contentPadding ?? defaultPadding,
            hintText: widget.placeholder,
            disabledBorder: InputBorder.none,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
