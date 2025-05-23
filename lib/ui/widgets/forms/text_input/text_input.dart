part of '../form.dart';

class AppFormTextInput extends StatefulWidget {
  const AppFormTextInput({
    super.key,
    required this.name,
    this.sideInput = false,
    this.obscureText = false,
    this.disposeController = true,
    this.readOnly = false,
    this.maxLines,
    this.helper,
    this.placeholder,
    this.label,
    this.heading,
    this.subHeading,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.textInputAction = TextInputAction.done,
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.validators,
    this.autofillHints,
    this.autofocus = false,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.suffixIconConstraints,
    this.contentPadding,
    this.wrapperPadding,
    this.state = AppFormState.def,
    this.textCapitalization = TextCapitalization.none,
    this.margin,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onTap,
  });

  //
  final int? maxLines;
  final String? helper;
  final String name;
  final String? placeholder;
  final String? label;
  final String? heading;
  final String? subHeading;
  final bool sideInput;
  final AppFormState state;

  final EdgeInsets? margin;
  final bool obscureText;
  final bool disposeController;
  final bool readOnly;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final void Function(String?)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validators;
  final List<String>? autofillHints;
  final bool autofocus;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final BoxConstraints? prefixIconConstraints;
  final BoxConstraints? suffixIconConstraints;
  final EdgeInsets? contentPadding;
  final EdgeInsets? wrapperPadding;
  final TextCapitalization textCapitalization;
  final AutovalidateMode autovalidateMode;
  final VoidCallback? onTap;

  @override
  State<AppFormTextInput> createState() => AppFormTextInputState();
}

class AppFormTextInputState extends State<AppFormTextInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    final form = FormBuilder.of(context);
    if (form == null) return;
    final initialValues = form.initialValue;
    final initialValue = initialValues[widget.name] ?? widget.initialValue;
    if (initialValue != null) {
      _controller.text = initialValue;
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.disposeController) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: FormBuilderField<String>(
        name: widget.name,
        initialValue: widget.initialValue,
        onReset: () {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            if (!mounted) return;
            _controller.clear();
          });
        },
        onChanged: (value) {
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }

          if (value != null) {
            _controller.value = TextEditingValue(
              text: value,
              selection: _controller.value.selection,
            );
          }
        },
        focusNode: widget.focusNode,
        validator: widget.validators,
        autovalidateMode: widget.autovalidateMode,
        enabled: !widget.state.isDisabled,
        builder: (fieldState) {
          return AppFormTextInputContent(
            onTap: widget.onTap,
            state: widget.state,
            maxLines: widget.maxLines,
            fieldState: fieldState,
            helper: widget.helper,
            name: widget.name,
            textCapitalization: widget.textCapitalization,
            placeholder: widget.placeholder,
            label: widget.label,
            heading: widget.heading,
            subHeading: widget.subHeading,
            obscureText: widget.obscureText,
            readOnly: widget.readOnly,
            sideInput: widget.sideInput,
            controller: _controller,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            prefixIconConstraints: widget.prefixIconConstraints,
            suffixIconConstraints: widget.suffixIconConstraints,
            contentPadding: widget.contentPadding,
            wrapperPadding: widget.wrapperPadding,
            autofillHints: widget.autofillHints,
            autofocus: widget.autofocus,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            inputFormatters: widget.inputFormatters ?? [],
            onChanged: fieldState.didChange,
            onFieldSubmitted: widget.onFieldSubmitted,
          );
        },
      ),
    );
  }
}
