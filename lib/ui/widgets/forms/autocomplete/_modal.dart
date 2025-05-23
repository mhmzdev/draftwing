part of '../form.dart';

class AutocompleteModal<V> extends StatefulWidget {
  const AutocompleteModal({
    super.key,
    required this.label,
    required this.options,
    this.onFilterOptions,
    this.filterLabel,
    required this.onRenderOptions,
    this.closeButton = true,
    this.expanded = true,
    this.value,
    this.subLabel,
    this.abortActionButtonLabel,
    this.completeActionButtonLabel,
  });

  final String label;
  final String? subLabel;
  final bool closeButton;
  final bool expanded;
  final V? value;
  final String? filterLabel;
  final List<V> options;
  final String Function(V) onRenderOptions;
  final bool Function(V, String)? onFilterOptions;
  final String? abortActionButtonLabel;
  final String? completeActionButtonLabel;

  @override
  State<AutocompleteModal> createState() => _AutocompleteModalState<V>();
}

class _AutocompleteModalState<V> extends State<AutocompleteModal<V>> {
  String query = '';
  V? _selected;
  final controller = TextEditingController();

  void onChanged(String? text) {
    if (text == null) return;
    setState(() {
      query = text;
    });
  }

  @override
  void initState() {
    _selected = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var filtered = widget.options;

    if (widget.onFilterOptions != null) {
      filtered =
          widget.options
              .where((element) => widget.onFilterOptions!(element, query))
              .toList();
    }

    return AppModalBase(
      expanded: widget.expanded,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Space.y.t16,
          Row(
            children: [
              AppText.h2(widget.label).cl(AppTheme.c.textHeading),
              if (widget.closeButton) ...[
                Space.xm,
                InkResponse(
                  onTap: () => Navigator.pop(context, _selected),
                  child: const Icon(Icons.close),
                ),
              ],
            ],
          ),
          if (widget.subLabel.available) ...[
            Space.y.t04,
            AppText.b2(widget.subLabel!).cl(AppTheme.c.textDim),
          ],
          if (widget.onFilterOptions != null) ...[
            Space.y.t20,
            AppFormTextInputContent(
              placeholder: widget.filterLabel ?? 'Search query',
              onChanged: onChanged,
              controller: controller,
            ),
            Space.y.t20,
          ] else ...[
            Space.y.t16,
          ],
          if (filtered.isEmpty && query.isNotEmpty) ...[
            Space.x.t24,
            AppText.h3(
              'No results found',
              textAlign: TextAlign.center,
            ).cl(AppTheme.c.textHeading),
            Space.y.t24,
            AppButton(
              label: 'Clear query',
              onPressed: () {
                onChanged('');
                controller.clear();
              },
              style: AppButtonStyle.primary,
            ),
          ] else if (filtered.isNotEmpty)
            Expanded(
              /// If the modal is expanded, the list view should be expanded
              /// to take up the remaining space, otherwise it should be
              /// shrink wrapped. And since `shrinkWrap` is performance expensive,
              /// so we only want to use for lesser items.
              flex: widget.expanded ? 1 : 0,
              child: ListView.separated(
                shrinkWrap: !widget.expanded,
                physics:
                    widget.expanded
                        ? const ScrollPhysics()
                        : const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final item = (filtered)[index];
                  return RadioListTile<V>(
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    contentPadding: Space.z,
                    activeColor: AppTheme.c.secondary,
                    title: AppText.b1(widget.onRenderOptions(item)),
                    value: item,
                    groupValue: _selected ?? widget.value,
                    onChanged: (value) {
                      _selected = value;
                      setState(() {});
                    },
                  );
                },
                separatorBuilder: (_, index) => Space.y.t04,
                itemCount: filtered.length,
              ),
            ),
          Space.y.t12,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  label: widget.abortActionButtonLabel ?? 'Clear',
                  onPressed: () {
                    Navigator.pop(context, null);
                  },
                  style: AppButtonStyle.primary,
                  state: AppButtonState.bordered,
                ),
              ),
              Space.x.t16,
              Expanded(
                child: AppButton(
                  state:
                      _selected == null
                          ? AppButtonState.disabled
                          : AppButtonState.plain,
                  label: widget.completeActionButtonLabel ?? 'Select',
                  onPressed: () => Navigator.pop(context, _selected),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
