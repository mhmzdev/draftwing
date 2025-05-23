part of '../form.dart';

class AppFormSelectInput<V> extends StatefulWidget {
  const AppFormSelectInput({
    super.key,
    this.helper,
    required this.name,
    required this.data,
    required this.modalLabel,
    this.label,
    this.filterLabel,
    this.subHeading,
    this.heading,
    required this.valueTransformer,
    this.onFilterOptions,
    this.placeholder,
    this.state = AppFormState.def,
    this.margin = EdgeInsets.zero,
    this.initialValue,
    this.focusNode,
    this.controller,
    this.onChanged,
    this.onChangedText,
    this.validators,
    this.autofillHints,
    this.closeButton = true,
    this.expanded = true,
    this.modalSubLabel,
    this.abortActionButtonLabel,
    this.completeActionButtonLabel,
  });

  final String? helper;
  final String name;
  final String? placeholder;
  final String? label;
  final String? filterLabel;
  final String? subHeading;
  final String? heading;
  final bool closeButton;
  final bool expanded;
  final String modalLabel;
  final String? modalSubLabel;
  final String? abortActionButtonLabel;
  final String? completeActionButtonLabel;
  final AppFormState state;

  //
  final List<V> data;
  final String Function(V) valueTransformer;
  final bool Function(V, String)? onFilterOptions;

  final EdgeInsets margin;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final void Function(V?)? onChanged;
  final void Function(String?)? onChangedText;
  final FormFieldValidator<V>? validators;
  final List<String>? autofillHints;

  @override
  State<AppFormSelectInput> createState() => _AppFormSelectInputState<V>();
}

class _AppFormSelectInputState<V> extends State<AppFormSelectInput<V>> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    final form = FormBuilder.of(context);
    if (form == null) return;
    final initialValues = form.initialValue;
    final V? initialValue = initialValues[widget.name];

    if (initialValue != null) {
      _controller.text = widget.valueTransformer(initialValue);
    }
    if (!mounted) return;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin,
      child: FormBuilderField<V>(
        name: widget.name,
        focusNode: widget.focusNode,
        validator: widget.validators,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (fieldState) {
          return Stack(
            children: [
              AppFormTextInputContent(
                selectInput: true,
                state: widget.state,
                fieldState: fieldState,
                helper: widget.helper,
                name: widget.name,
                heading: widget.heading,
                subHeading: widget.subHeading,
                placeholder: widget.placeholder,
                label: widget.label,
                controller: _controller,
                initialValue: widget.initialValue,
                autofillHints: widget.autofillHints,
              ),
              Positioned.fill(
                child: GestureDetector(
                  onTap: () async {
                    final data = await showModalBottomSheet<V>(
                      context: context,
                      enableDrag: false,
                      isDismissible: false, // don't dismiss on tap
                      isScrollControlled: true,
                      useSafeArea: true,
                      backgroundColor: Colors.transparent,
                      builder: (_) {
                        return AutocompleteModal(
                          value: fieldState.value,
                          options: widget.data,
                          expanded: widget.expanded,
                          closeButton: widget.closeButton,
                          label: widget.modalLabel,
                          subLabel: widget.modalSubLabel,
                          filterLabel: widget.filterLabel,
                          onFilterOptions: widget.onFilterOptions,
                          onRenderOptions: widget.valueTransformer,
                          abortActionButtonLabel: widget.abortActionButtonLabel,
                          completeActionButtonLabel:
                              widget.completeActionButtonLabel,
                        );
                      },
                    );

                    /// If [data] is not null, update the controller text
                    /// case for first time selection only
                    if (data != null) {
                      _controller.text = widget.valueTransformer(data);
                      fieldState.didChange(data);
                      if (widget.onChangedText != null) {
                        widget.onChangedText!(widget.valueTransformer(data));
                      }
                      if (widget.onChanged != null) {
                        widget.onChanged!(data);
                      }
                    }

                    /// `clear` function setup
                    if (data == null && fieldState.value != null) {
                      _controller.clear();
                      fieldState.didChange(null);
                      if (widget.onChangedText != null) {
                        widget.onChangedText!('');
                      }
                      if (widget.onChanged != null) {
                        widget.onChanged!(null);
                      }
                    }
                  },
                  child: Container(color: Colors.transparent),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
