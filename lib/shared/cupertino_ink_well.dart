// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CupertinoInkWell extends StatefulWidget {
  const CupertinoInkWell({
    required this.onPressed,
    required this.child,
    super.key,
  });

  final VoidCallback? onPressed;

  final Widget child;

  bool get enabled => onPressed != null;

  @override
  State<CupertinoInkWell> createState() => _CupertinoInkWellState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(FlagProperty('enabled', value: enabled, ifFalse: 'disabled'));
  }
}

class _CupertinoInkWellState extends State<CupertinoInkWell>
    with SingleTickerProviderStateMixin {
  static const Duration kFadeOutDuration = Duration(milliseconds: 120);
  static const Duration kFadeInDuration = Duration(milliseconds: 180);
  final Tween<double> _opacityTween = Tween<double>(begin: 1);

  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      value: 0,
      vsync: this,
    );
    _opacityAnimation = _animationController
        .drive(CurveTween(curve: Curves.decelerate))
        .drive(_opacityTween);
    _setTween();
  }

  @override
  void didUpdateWidget(CupertinoInkWell old) {
    super.didUpdateWidget(old);
    _setTween();
  }

  void _setTween() {
    _opacityTween.end = 0.7;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  bool _buttonHeldDown = false;

  void _handleTapDown(TapDownDetails event) {
    if (!_buttonHeldDown) {
      _buttonHeldDown = true;
      _animate();
    }
  }

  void _handleTapUp(TapUpDetails event) {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _handleTapCancel() {
    if (_buttonHeldDown) {
      _buttonHeldDown = false;
      _animate();
    }
  }

  void _animate() {
    if (_animationController.isAnimating) {
      return;
    }
    final wasHeldDown = _buttonHeldDown;
    _buttonHeldDown
        ? _animationController.animateTo(
            1,
            duration: kFadeOutDuration,
            curve: Curves.easeInOutCubicEmphasized,
          )
        : _animationController
            .animateTo(
            0,
            duration: kFadeInDuration,
            curve: Curves.easeOutCubic,
          )
            .then<void>((void value) {
            if (mounted && wasHeldDown != _buttonHeldDown) {
              _animate();
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled;

    return MouseRegion(
      cursor: enabled && kIsWeb ? SystemMouseCursors.click : MouseCursor.defer,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: enabled ? _handleTapDown : null,
        onTapUp: enabled ? _handleTapUp : null,
        onTapCancel: enabled ? _handleTapCancel : null,
        onTap: widget.onPressed,
        child: Semantics(
          button: true,
          child: FadeTransition(
            opacity: _opacityAnimation,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
