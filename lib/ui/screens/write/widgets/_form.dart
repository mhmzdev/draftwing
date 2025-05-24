part of '../write.dart';

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context);

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
          AppFormSelectInput(
            heading: 'Reading Length',
            name: _FormKeys.readingTime,
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
            heading: 'Additional Notes (Optional)',
            placeholder: 'Enter your additional context...',
            keyboardType: TextInputType.multiline,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.newline,
            maxLines: 8,
            helper:
                'These could be notes, ideas, or any other information that you want to include in the article.',
          ),
          Space.y.t08,
          FormBuilderCheckbox(
            name: _FormKeys.saveDraft,
            title: AppText.b1('Save Draft'),
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
            subtitle: AppText.b2(
              'Save the draft to your dev.to profile',
            ).cl(AppTheme.c.textDim),
            decoration: const InputDecoration.collapsed(hintText: ''),
            controlAffinity: ListTileControlAffinity.trailing,
          ),
          Space.y.t08,
          BlocBuilder<AgentCubit, AgentState>(
            buildWhen:
                (previous, current) =>
                    previous.generateDraft != current.generateDraft,
            builder: (context, state) {
              final loading = state.generateDraft.isLoading;
              return AppButton(
                onPressed: () => screenState.onSubmit(context),
                icon: Iconsax.magic_star_copy,
                label: 'Generate Article',
                mainAxisSize: MainAxisSize.max,
                loading: loading,
              );
            },
          ),
        ],
      ),
    );
  }
}
