import 'package:draftwing/blocs/agent/cubit.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/ui/widgets/design/full_screen_loader/paginated_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:configs/configs.dart';
import 'package:draftwing/ui/widgets/core/bottom_bar/bottom_bar.dart';
import 'package:draftwing/ui/widgets/headless/focus_handler.dart';

class Screen extends StatefulWidget {
  const Screen({
    super.key,
    required this.child,
    this.padding = EdgeInsets.zero,
    this.keyboardHandler = false,
    this.renderSettings = true,
    this.bottomBar = false,
    this.resizeToAvoidBottomInset = false,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.scaffoldBackgroundColor,
    this.belowBuilders,
    this.overlayBuilders,
    this.initialFormValue,
    this.formKey,
    this.onBackPressed,
    this.canPop,
    this.appBar,
    this.endDrawer,
    this.drawer,
    this.endDrawerEnableOpenDragGesture = true,
    this.drawerEnableOpenDragGesture = true,
    this.bottomBarHeightChanged,
  });

  final Widget child;
  final EdgeInsets padding;
  final bool keyboardHandler;
  final bool renderSettings;
  final bool bottomBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Color? scaffoldBackgroundColor;
  final List<Widget>? belowBuilders;
  final List<Widget>? overlayBuilders;
  final Map<String, dynamic>? initialFormValue;
  final GlobalKey<FormBuilderState>? formKey;
  final bool resizeToAvoidBottomInset;
  final void Function()? onBackPressed;
  final bool? canPop;
  final PreferredSizeWidget? appBar;
  final Widget? endDrawer;
  final Widget? drawer;
  final bool endDrawerEnableOpenDragGesture;
  final bool drawerEnableOpenDragGesture;

  final void Function(double height)? bottomBarHeightChanged;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final bottomBarKey = GlobalKey();

  double get _getBottomBarHeight {
    try {
      final renderBox =
          bottomBarKey.currentContext?.findRenderObject() as RenderBox?;
      final height = renderBox?.size.height ?? context.bottomSafe();
      return height;
    } catch (e) {
      return context.bottomSafe() + SpaceToken.t32;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.bottomBarHeightChanged?.call(_getBottomBarHeight);
    });
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    var body = widget.child;
    final onWillPop = widget.onBackPressed;
    final canPopValue = widget.canPop ?? true;

    if (widget.formKey != null) {
      body = FormBuilder(
        key: widget.formKey,
        initialValue: widget.initialFormValue ?? {},
        child: body,
      );
    }

    if (widget.keyboardHandler) {
      body = FocusHandler(child: body);
    }

    if (onWillPop != null || !canPopValue) {
      body = PopScope(
        canPop: canPopValue,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop && onWillPop != null) {
            onWillPop();
          }
        },
        child: body,
      );
    }

    body = Padding(padding: widget.padding, child: body);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarBrightness: Brightness.light, // for IOS
        statusBarIconBrightness: Brightness.dark, // for Android
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        backgroundColor: widget.scaffoldBackgroundColor,
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonLocation: widget.floatingActionButtonLocation,
        endDrawerEnableOpenDragGesture: widget.endDrawerEnableOpenDragGesture,
        drawerEnableOpenDragGesture: widget.drawerEnableOpenDragGesture,
        endDrawer: widget.endDrawer,
        drawer: widget.drawer,
        appBar: widget.appBar,
        body: Stack(
          fit: StackFit.expand,
          children: [
            if (widget.belowBuilders != null) ...widget.belowBuilders!,
            Positioned.fill(child: body),
            if (widget.bottomBar)
              Positioned(
                key: bottomBarKey,
                left: 0,
                right: 0,
                bottom: 0,
                child: const BottomBar(),
              ),
            if (widget.overlayBuilders != null) ...widget.overlayBuilders!,
            if (context.currentPath != AppRoutes.write)
              BlocBuilder<AgentCubit, AgentState>(
                buildWhen:
                    (previous, current) =>
                        previous.generateDraft != current.generateDraft,
                builder: (context, state) {
                  final loading = state.generateDraft.isLoading;
                  if (!loading) return const SizedBox.shrink();

                  return FloatingLoader(
                    title: 'Generating article',
                    message: 'You will be navigated to the article soon...',
                    bottom: _getBottomBarHeight + SpaceToken.t12,
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
