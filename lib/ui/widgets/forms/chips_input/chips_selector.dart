part of '../form.dart';

class AppFormMultiChipsSelector<T extends Enum> extends StatelessWidget {
  final String name;
  final List<T> options;
  final List<T>? initialValue;
  final FormFieldValidator<List<T>>? validator;
  final ValueChanged<List<T>?>? onChanged;
  final AutovalidateMode autovalidateMode;
  final String? Function(T)? displayTransformer;

  const AppFormMultiChipsSelector({
    super.key,
    required this.name,
    required this.options,
    this.initialValue,
    this.validator,
    this.onChanged,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.displayTransformer,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<List<T>>(
      name: name,
      initialValue: initialValue,
      validator: validator,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      builder: (field) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: SpaceToken.t08,
              runSpacing: 0,
              children:
                  options.map((option) {
                    final isSelected = field.value?.contains(option) ?? false;
                    final labelColor =
                        isSelected ? AppTheme.c.cardBg : AppTheme.c.textBody;

                    final displayText =
                        displayTransformer?.call(option) ??
                        option.name.titleCase;
                    return ChoiceChip(
                      labelPadding: Space.z,
                      padding: Space.h.t16 + Space.v.t04,
                      side: BorderSide.none,
                      label: AppText.b1(displayText).cl(labelColor),
                      selected: isSelected,
                      selectedColor: AppTheme.c.secondary,
                      backgroundColor:
                          field.hasError
                              ? AppTheme.c.error.withValues(alpha: .12)
                              : AppTheme.c.textBody.withValues(alpha: .12),
                      onSelected: (selected) {
                        final newSelection = List<T>.from(field.value ?? []);
                        if (selected) {
                          newSelection.add(option);
                        } else {
                          newSelection.remove(option);
                        }
                        field.didChange(newSelection);
                      },
                    );
                  }).toList(),
            ),
            if (field.hasError)
              Padding(
                padding: Space.t.t04,
                child: AppText.b2(field.errorText ?? '').cl(AppTheme.c.error),
              ),
          ],
        );
      },
    );
  }
}
