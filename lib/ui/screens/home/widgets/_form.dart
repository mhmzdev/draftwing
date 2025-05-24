part of '../home.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppProps.cardDec,
      padding: Space.a.t16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const GradientIcon(Iconsax.bubble),
              Space.x.t08,
              AppText.h2('Generate Article'),
            ],
          ),
          Space.y.t28,
          AppFormTextInput(
            name: _FormKeys.title,
            heading: 'Article Title',
            placeholder: 'Enter your article title...',
            validators: FormBuilderValidators.required(
              errorText: 'Title is required',
            ),
            textCapitalization: TextCapitalization.words,
          ),
          Space.y.t16,
          AppFormChipsInput<String>(
            name: _FormKeys.tags,
            valueTransformer: (value) => value.toLowerCase(),
            heading: 'Tags',
            placeholder: 'Add tags...',
            validators: FormBuilderValidators.required(
              errorText: 'At least one tag is required',
            ),
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
          ),
          Space.y.t16,
          AppFormSelectInput(
            heading: 'Reading Length',
            name: _FormKeys.readingLength,
            data: ReadingLength.values,
            modalLabel: 'Reading Length',
            placeholder: 'Select reading length',
            valueTransformer: (value) => value.parsed,
            validators: FormBuilderValidators.required(
              errorText: 'Reading Length is required',
            ),
            expanded: false,
          ),
          Space.y.t16,
          const AppFormTextInput(
            name: _FormKeys.additionalContext,
            heading: 'Additional Context (Notes)',
            placeholder: 'Enter your additional context...',
            keyboardType: TextInputType.multiline,
            textCapitalization: TextCapitalization.sentences,
            helper:
                'These could be notes, ideas, or any other information that you want to include in the article.',
          ),
          Space.y.t20,
          AppButton(
            onPressed: () {},
            icon: Iconsax.magic_star_copy,
            label: 'Generate Article',
            mainAxisSize: MainAxisSize.max,
          ),
        ],
      ),
    );
  }
}
