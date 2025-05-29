part of '../preview.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);

    return Screen(
      formKey: screenState.formKey,
      initialFormValue: _FormData.initialValues(screenState.draft.toJson()),
      keyboardHandler: true,
      resizeToAvoidBottomInset: true,
      overlayBuilders: const [_SaveDraftListener()],
      child: SafeArea(
        child: Padding(
          padding: Space.a.t16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _Header(),
              Row(
                children: [
                  const CopyGuidelinesButton(),
                  AppButton(
                    onPressed: () => screenState.onCopy(context),
                    label: 'Copy',
                    icon: Iconsax.copy_copy,
                    size: AppButtonSize.small,
                    radius: AppButtonRadius.capsule,
                    state: AppButtonState.bordered,
                  ),
                  Space.x.t12,
                  AppButton(
                    onPressed: () => screenState.onSave(context),
                    label: 'Save',
                    icon: Iconsax.document_download_copy,
                    size: AppButtonSize.small,
                    radius: AppButtonRadius.capsule,
                    state: AppButtonState.bordered,
                  ),
                  Space.x.t12,
                  Expanded(
                    child: AppButton(
                      onPressed: () {
                        final form = screenState.formKey.currentState!;
                        final isValid = form.saveAndValidate();
                        if (!isValid) return;

                        final data = form.value;
                        final title = data[_FormKeys.title] as String;
                        final body = data[_FormKeys.bodyMarkdown] as String;

                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          useSafeArea: true,
                          builder:
                              (context) => MarkdownPreviewModal(
                                title: title,
                                body: body,
                              ),
                        );
                      },
                      label: 'Preview',
                      icon: Iconsax.eye_copy,
                      size: AppButtonSize.small,
                      radius: AppButtonRadius.capsule,
                    ),
                  ),
                ],
              ),
              Space.y.t16,
              FormBuilderTextField(
                name: _FormKeys.title,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Article Title',
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 2,
                style: AppText.h1('').style!,
              ),
              Space.y.t08,
              AppText.b1(
                '#${screenState.draft.tags.join(', #')}',
              ).cl(AppTheme.c.textDim),
              Divider(height: SpaceToken.t20),
              Expanded(
                child: FormBuilderTextField(
                  name: _FormKeys.bodyMarkdown,
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Article Body',
                  ),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  style: AppText.h3('').style!,
                  maxLines: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
