part of '../form.dart';

extension AppDatePickerTypeX on AppDatePickerType {
  bool get isDate => this == AppDatePickerType.date;
  bool get isTime => this == AppDatePickerType.time;
}

enum AppDatePickerType { date, time }

class AppFormDateInput extends StatefulWidget {
  const AppFormDateInput({
    super.key,
    required this.name,
    this.sideInput = false,
    this.helper,
    this.placeholder,
    this.label,
    this.heading,
    this.initialValue,
    this.focusNode,
    this.controller,
    this.onChanged,
    this.validators,
    this.autofillHints,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.format,
    this.state = AppFormState.def,
    this.margin = EdgeInsets.zero,
    this.type = AppDatePickerType.date,
  });

  final String? helper;
  final String name;
  final String? placeholder;
  final String? label;
  final String? heading;
  final bool sideInput;
  final AppFormState state;
  final AppDatePickerType type;

  //
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateFormat? format;

  final EdgeInsets margin;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final void Function(String?)? onChanged;
  final FormFieldValidator<DateTime>? validators;
  final List<String>? autofillHints;

  @override
  State<AppFormDateInput> createState() => AppFormDateInputState();
}

class AppFormDateInputState extends State<AppFormDateInput> {
  late TextEditingController _controller;

  late DateTime initialDate;
  late DateTime firstDate;
  late DateTime lastDate;
  late DateFormat format;

  TimeOfDay timeFromDate(DateTime dateTime) {
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }

  DateTime dateTimeFromTime(TimeOfDay time) {
    return DateTime(
      initialDate.year,
      initialDate.month,
      initialDate.day,
      time.hour,
      time.minute,
    );
  }

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    final form = FormBuilder.of(context);
    if (form == null) return;
    final initialValues = form.initialValue;
    final DateTime? initialValue = initialValues[widget.name];

    final today = DateTime.now().today;
    final defaultInitialDate = DateTime(today.year, today.month, today.day);
    final defaultDateFormat = DateFormat('MM/dd/yyyy');
    final defaultTimeFormat = DateFormat('hh:mm a');
    final dateToRender = initialValue ?? widget.initialDate;
    initialDate = dateToRender ?? defaultInitialDate;
    lastDate = widget.lastDate ?? defaultInitialDate;
    firstDate = widget.firstDate ?? DateTime(1900);
    format =
        widget.format ??
        (widget
                .type
                .isDate //
            ? defaultDateFormat
            : defaultTimeFormat);

    if (dateToRender != null) {
      _controller.text = format.format(dateToRender);
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
      child: FormBuilderField<DateTime>(
        name: widget.name,
        focusNode: widget.focusNode,
        validator: widget.validators,
        autovalidateMode: AutovalidateMode.disabled,
        builder: (fieldState) {
          return Stack(
            children: [
              AppFormTextInputContent(
                state: widget.state,
                fieldState: fieldState,
                helper: widget.helper,
                name: widget.name,
                placeholder: widget.placeholder,
                label: widget.label,
                heading: widget.heading,
                sideInput: widget.sideInput,
                controller: _controller,
                initialValue: widget.initialValue,
                autofillHints: widget.autofillHints,
                suffixIcon:
                    widget.type.isTime ? Iconsax.clock : Iconsax.calendar,
              ),
              Positioned.fill(
                child: GestureDetector(
                  onTap: () async {
                    if (widget.type.isDate) {
                      selectDate(fieldState);
                      return;
                    }

                    selectTime(fieldState);
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

  void selectDate(FormFieldState<DateTime> fieldState) async {
    final date = await showDatePicker(
      context: context,
      lastDate: lastDate,
      firstDate: firstDate,
      initialDate: fieldState.value ?? widget.firstDate ?? initialDate,
      locale: const Locale('en', 'US'),
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.light(primary: AppTheme.c.secondary),
          ),
          child: child!,
        );
      },
    );
    if (date != null) {
      _controller.text = format.format(date);
      fieldState.didChange(date);
    }
  }

  void selectTime(FormFieldState<DateTime> fieldState) async {
    final time = await showTimePicker(
      context: context,
      initialTime: timeFromDate(fieldState.value ?? initialDate),
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.light(
              primary: AppTheme.c.secondary,
              secondary: AppTheme.c.secondary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (time != null) {
      final date = dateTimeFromTime(time);
      _controller.text = format.format(date);
      fieldState.didChange(date);
    }
  }
}
