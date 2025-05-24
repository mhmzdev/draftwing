part of '../drafts.dart';

class _CardSkeleton extends StatelessWidget {
  const _CardSkeleton();

  Widget _shimmerBox({
    required double height,
    double? width,
    BorderRadius? borderRadius,
    bool hasBorder = false,
    Widget? child,
  }) {
    return Shimmer.fromColors(
      baseColor: AppTheme.c.shadow,
      highlightColor: AppTheme.c.shadow.withValues(alpha: 0.5),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppTheme.c.shadow,
          borderRadius: borderRadius ?? 4.radius(),
          border:
              hasBorder ? Border.all(color: AppTheme.c.shadow, width: 1) : null,
        ),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppProps.cardDec,
      padding: Space.a.t16,
      margin: Space.b.t12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _shimmerBox(height: 20),
                    Space.y.t04,
                    _shimmerBox(height: 20, width: 200),
                  ],
                ),
              ),
              Space.x.t12,
              _shimmerBox(height: 24, width: 80, borderRadius: 16.radius()),
            ],
          ),
          Space.y.t12,
          Wrap(
            spacing: SpaceToken.t08,
            runSpacing: SpaceToken.t08,
            children: List.generate(3, (i) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Shimmer.fromColors(
                    baseColor: AppTheme.c.shadow,
                    highlightColor: AppTheme.c.shadow.withValues(alpha: 0.5),
                    child: Icon(
                      Iconsax.tag_copy,
                      size: 16,
                      color: AppTheme.c.shadow,
                    ),
                  ),
                  Space.x.t04,
                  _shimmerBox(height: 24, width: 60, borderRadius: 16.radius()),
                ],
              );
            }),
          ),
          Space.y.t12,
          Row(
            children: [
              Shimmer.fromColors(
                baseColor: AppTheme.c.shadow,
                highlightColor: AppTheme.c.shadow.withValues(alpha: 0.5),
                child: Icon(
                  Iconsax.calendar,
                  size: 20,
                  color: AppTheme.c.shadow,
                ),
              ),
              Space.x.t04,
              _shimmerBox(height: 20, width: 80),
              Space.x.t12,
              _shimmerBox(height: 24, width: 80, borderRadius: 16.radius()),
            ],
          ),
          Space.y.t12,
          Row(
            children: [
              Expanded(
                child: _shimmerBox(
                  height: 36,
                  borderRadius: 8.radius(),
                  hasBorder: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.open_in_new_rounded,
                        size: 20,
                        color: AppTheme.c.shadow,
                      ),
                      Space.x.t08,
                      Container(
                        width: 40,
                        height: 16,
                        decoration: BoxDecoration(
                          color: AppTheme.c.shadow,
                          borderRadius: 4.radius(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Space.x.t08,
              _shimmerBox(
                height: 36,
                width: 36,
                borderRadius: 8.radius(),
                hasBorder: true,
                child: Icon(
                  Iconsax.trash_copy,
                  size: 20,
                  color: AppTheme.c.shadow,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
