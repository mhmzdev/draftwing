part of '../home.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppProps.cardDec,
      padding: Space.a.t12,
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
        ],
      ),
    );
  }
}
