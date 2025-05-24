part of 'form.dart';

class AppFormBase extends StatefulWidget {
  const AppFormBase({
    super.key,
    required this.child,
    required this.state,
    required this.selectInput,
    this.readOnly = false,
    this.label,
    this.heading,
    this.subHeading,
    this.placeholder,
    this.helper,
    this.padding,
    this.error,
    this.prefixIcon,
    this.suffixIcon,
    this.onObscureTap,
    this.obscureText,
    this.isOnTapAvailable = false,
  });

  final AppFormState state;
  final Widget child;
  final String? label;
  final String? heading;
  final String? subHeading;
  final bool selectInput;
  final bool readOnly;
  final String? placeholder;
  final String? helper;
  final EdgeInsets? padding;
  final String? error;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? obscureText;
  final void Function()? onObscureTap;
  final bool isOnTapAvailable;

  @override
  State<AppFormBase> createState() => _AppFormBaseState();
}

class _AppFormBaseState extends State<AppFormBase> {
  bool obscureText = false;
  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final defState = _mapPropsToData()[AppFormState.def]!;
    final data =
        _mapPropsToData()[(widget.readOnly && !widget.isOnTapAvailable)
            ? AppFormState.disabled
            : widget.state] ??
        defState;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.heading != null)
          AppText.b1(widget.heading!)
              .w(500)
              .cl(widget.state.isPressed ? data.border : AppTheme.c.textBody),
        if (widget.subHeading != null)
          AppText.l1(widget.subHeading!).cl(AppTheme.c.textBody),
        if (widget.heading != null || widget.subHeading != null) Space.y.t08,
        AnimatedContainer(
          duration: 100.milliseconds,
          decoration: BoxDecoration(
            color: data.surface,
            borderRadius: 8.radius(),
            border: Border.all(
              width: 1,
              color: widget.error != null ? AppTheme.c.error : data.border,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding:
                    widget.padding ?? Space.sym(SpaceToken.t04, SpaceToken.t08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (widget.label != null) ...[
                      Padding(
                        padding: Space.h.t04,
                        child: AppText.l1(widget.label!).w(500).cl(data.label),
                      ),
                      Space.y.t16,
                    ],
                    Stack(
                      children: [
                        Row(
                          children: [
                            if (widget.prefixIcon != null)
                              Padding(
                                padding: Space.h.t04,
                                child: Icon(
                                  widget.prefixIcon,
                                  color:
                                      widget.state.isPressed
                                          ? data.border
                                          : AppTheme.c.textBody,
                                ),
                              ),
                            Expanded(child: widget.child),
                            if (widget.suffixIcon != null &&
                                widget.obscureText == false)
                              Padding(
                                padding: Space.h.t04,
                                child: Icon(
                                  widget.suffixIcon,
                                  color:
                                      widget.state.isPressed
                                          ? data.border
                                          : AppTheme.c.textBody,
                                ),
                              ),
                            if (widget.onObscureTap != null &&
                                widget.obscureText == true)
                              Padding(
                                padding: Space.h.t04,
                                child: GestureDetector(
                                  onTap: () {
                                    widget.onObscureTap!();
                                    obscureText = !obscureText;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    !obscureText
                                        ? Icons.visibility_off_rounded
                                        : Icons.visibility_rounded,
                                    color:
                                        widget.state.isPressed
                                            ? data.border
                                            : AppTheme.c.textBody,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (widget.selectInput)
                Positioned(
                  top: SpaceToken.t04,
                  bottom: SpaceToken.t04,
                  right: SpaceToken.t12,
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: AppTheme.c.textBody,
                  ),
                ),
            ],
          ),
        ),
        if (widget.helper != null && !widget.error.available) ...[
          Space.y.t08,
          Row(
            children: [
              Icon(
                Iconsax.info_circle_copy,
                color: AppTheme.c.textBody,
                size: 16,
              ),
              Space.x.t04,
              Expanded(
                child: AppText.b2(widget.helper!).cl(AppTheme.c.textBody),
              ),
            ],
          ),
        ],
        Align(
          alignment: Alignment.centerLeft,
          child: AnimatedSwitcher(
            duration: AppProps.medium,
            child:
                widget.error.available
                    ? Padding(
                      padding: Space.t.t08,
                      child: AppText.b2(
                        widget.error!,
                      ).cl(AppTheme.c.error).w(600),
                    )
                    : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
