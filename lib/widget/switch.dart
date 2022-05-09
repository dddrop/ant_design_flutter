import 'package:ant_design_flutter/antdf.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Switch extends StatefulWidget {
  const Switch({
    Key? key,
    this.autoFocus = false,
    this.checkedChildren,
    this.controller,
    this.disabled = false,
    this.loading = false,
    this.size = AntSize.medium,
    this.uncheckedChildren,
    this.onChange,
    this.onClick,
  }) : super(key: key);

  final bool autoFocus;
  final Widget? checkedChildren;
  final SwitchController? controller;
  final bool disabled;
  final bool loading;
  final AntSize size;
  final Widget? uncheckedChildren;
  final void Function(bool checked)? onChange;
  final void Function(bool checked)? onClick;

  @override
  State<Switch> createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool checked = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      checked = widget.controller?.checked ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = widget.size == AntSize.small ? 16 : 22;
    double width = widget.size == AntSize.small ? 12 : 18;

    Widget left = const SizedBox();
    if (checked) {
      left = widget.checkedChildren ?? SizedBox(width: width + 2);
    }

    Widget loading = SpinKitFadingCircle(color: Colors.blue_3, size: width - 2);

    Widget circle = Container(
      child: widget.loading ? loading : null,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      height: width,
      width: width,
    );

    Widget right = widget.uncheckedChildren ?? SizedBox(width: width + 2);
    if (checked) {
      right = const SizedBox();
    }

    Color color = widget.loading ? Colors.gray_3 : Colors.gray_5;
    if (checked) {
      color = widget.loading ? Colors.blue_3 : Colors.blue_6;
    }

    return MouseRegion(
      child: GestureDetector(
        child: Container(
          child: Row(
            children: [left, circle, right],
            mainAxisSize: MainAxisSize.min,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: color,
          ),
          height: height,
          padding: const EdgeInsets.all(2),
        ),
        onTap: _handleTap,
      ),
      cursor: widget.disabled || widget.loading
          ? SystemMouseCursors.forbidden
          : SystemMouseCursors.click,
    );
  }

  void _handleTap() {
    if (!widget.disabled && !widget.loading) {
      widget.controller?.checked = !checked;
      widget.onChange?.call(!checked);
      widget.onClick?.call(!checked);
      setState(() {
        checked = !checked;
      });
    }
  }
}

class SwitchController extends ChangeNotifier {
  bool checked = false;
}
