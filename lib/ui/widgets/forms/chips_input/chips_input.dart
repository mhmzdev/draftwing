part of '../form.dart';

class AppFormChipsInput<T> extends StatefulWidget {
  const AppFormChipsInput({
    super.key,
    required this.name,
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
    this.inputFormatters,
    this.validators,
    this.autofillHints,
    this.autofocus = false,
    this.state = AppFormState.def,
    this.margin = EdgeInsets.zero,
    required this.valueTransformer,
  });

  final String? helper;
  final String name;
  final String? placeholder;
  final String? label;
  final String? heading;
  final String? subHeading;
  final AppFormState state;
  final EdgeInsets margin;
  final List<T>? initialValue;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final void Function(List<T>?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<List<T>>? validators;
  final List<String>? autofillHints;
  final bool autofocus;
  final String Function(T) valueTransformer;

  @override
  State<AppFormChipsInput<T>> createState() => _AppFormChipsInputState<T>();
}

class _AppFormChipsInputState<T> extends State<AppFormChipsInput<T>> {
  late TextEditingController _controller;
  late List<T> _values;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _values = [];

    final form = FormBuilder.of(context);
    if (form == null) return;
    final initialValues = form.initialValue;
    final List<T>? initialValue =
        initialValues[widget.name] ?? widget.initialValue;
    if (initialValue != null) {
      _values = List.from(initialValue);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addValue(String value) {
    if (value.isEmpty) return;

    final transformedValue = value as T;
    final exists = _values.any(
      (v) =>
          widget.valueTransformer(v) ==
          widget.valueTransformer(transformedValue),
    );
    if (exists) {
      UIFlash.error(context, 'Tag already exists');
      return;
    }

    setState(() {
      _values.add(transformedValue);
      _controller.clear();
    });
  }

  void _removeValue(int index) {
    setState(() {
      _values.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Padding(
      padding: widget.margin,
      child: FormBuilderField<List<T>>(
        name: widget.name,
        validator: widget.validators,
        initialValue: widget.initialValue,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (field) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment:
                    field.hasError
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: AppFormTextInputContent(
                      state: widget.state,
                      fieldState: field,
                      helper: widget.helper,
                      name: widget.name,
                      placeholder: widget.placeholder,
                      label: widget.label,
                      heading: widget.heading,
                      subHeading: widget.subHeading,
                      controller: _controller,
                      autofillHints: widget.autofillHints,
                      autofocus: widget.autofocus,
                      keyboardType: widget.keyboardType,
                      textInputAction: widget.textInputAction,
                      inputFormatters: widget.inputFormatters ?? [],
                      onFieldSubmitted: (value) {
                        _addValue(value);
                        field.didChange(_values);
                      },
                    ),
                  ),
                  Space.x.t08,
                  AppButton(
                    onPressed: () {
                      _addValue(_controller.text);
                      field.didChange(_values);
                    },
                    label: 'Add',
                    style: AppButtonStyle.primary,
                    state: AppButtonState.bordered,
                  ),
                ],
              ),
              if (_values.isNotEmpty) Space.y.t12,
              Wrap(
                spacing: SpaceToken.t08,
                runSpacing: SpaceToken.t08,
                children:
                    _values
                        .map(
                          (value) => AppChip(
                            label: widget.valueTransformer(value),
                            onDeleted: () {
                              _removeValue(_values.indexOf(value));
                              field.didChange(_values);
                              if (widget.onChanged != null) {
                                widget.onChanged!(_values);
                              }
                            },
                          ),
                        )
                        .toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
