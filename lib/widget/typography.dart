import 'package:flutter/widgets.dart';

class TypographyText extends StatefulWidget {
  const TypographyText({
    Key? key,
    required this.child,
    this.code = false,
    this.copyable,
    this.delete = false,
    this.disable = false,
    this.editable,
    this.ellipsis,
    this.keyboard = false,
    this.mark = false,
    this.onClick,
    this.strong = false,
    this.italic = false,
    this.type = TypographyType.secondary,
    this.underline = false,
  }) : super(key: key);

  final Widget child;
  final bool code;
  final TypographyCopyable? copyable;
  final bool delete;
  final bool disable;
  final TypographyEditable? editable;
  final TypographyEllipsis? ellipsis;
  final bool keyboard;
  final bool mark;
  final void Function()? onClick;
  final bool strong;
  final bool italic;
  final TypographyType type;
  final bool underline;

  @override
  State<TypographyText> createState() => _TypographyTextState();
}

class _TypographyTextState extends State<TypographyText> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TypographyTitle extends StatefulWidget {
  const TypographyTitle({
    Key? key,
    required this.child,
    this.code = false,
    this.copyable,
    this.delete = false,
    this.disable = false,
    this.editable,
    this.ellipsis,
    this.level = 1,
    this.mark = false,
    this.onClick,
    this.strong = false,
    this.italic = false,
    this.type = TypographyType.secondary,
    this.underline = false,
  }) : super(key: key);

  final Widget child;
  final bool code;
  final TypographyCopyable? copyable;
  final bool delete;
  final bool disable;
  final TypographyEditable? editable;
  final TypographyEllipsis? ellipsis;
  final int level;
  final bool mark;
  final void Function()? onClick;
  final bool strong;
  final bool italic;
  final TypographyType type;
  final bool underline;

  @override
  State<TypographyTitle> createState() => _TypographyTitleState();
}

class _TypographyTitleState extends State<TypographyTitle> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TypographyParagraph extends StatefulWidget {
  const TypographyParagraph({
    Key? key,
    required this.child,
    this.code = false,
    this.copyable,
    this.delete = false,
    this.disable = false,
    this.editable,
    this.ellipsis,
    this.keyboard = false,
    this.mark = false,
    this.onClick,
    this.strong = false,
    this.italic = false,
    this.type = TypographyType.secondary,
    this.underline = false,
  }) : super(key: key);

  final Widget child;
  final bool code;
  final TypographyCopyable? copyable;
  final bool delete;
  final bool disable;
  final TypographyEditable? editable;
  final TypographyEllipsis? ellipsis;
  final bool keyboard;
  final bool mark;
  final void Function()? onClick;
  final bool strong;
  final bool italic;
  final TypographyType type;
  final bool underline;

  @override
  State<TypographyParagraph> createState() => _TypographyParagraphState();
}

class _TypographyParagraphState extends State<TypographyParagraph> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TypographyCopyable {
  TypographyCopyable({
    this.icon,
    required this.text,
    this.tooltips,
    required this.onCopy,
  })  : assert(icon == null || icon.length == 2),
        assert(tooltips == null || tooltips.length == 2);

  List<Widget>? icon;
  String text;
  List<Widget>? tooltips;
  void Function() onCopy;
}

class TypographyEditable {
  TypographyEditable({
    this.autoSize,
    this.editing = false,
    this.icon,
    this.maxLength,
    this.tooltip,
    this.onCancel,
    this.onChange,
    this.onEnd,
    this.onStart,
    this.triggerType = TypographyEditableTriggerType.icon,
    this.enterIcon,
  });

  TypographyAutoSize? autoSize;
  bool editing;
  Widget? icon;
  int? maxLength;
  Widget? tooltip;
  void Function()? onCancel;
  void Function()? onChange;
  void Function()? onEnd;
  void Function()? onStart;
  TypographyEditableTriggerType triggerType;
  Widget? enterIcon;
}

class TypographyAutoSize {
  TypographyAutoSize({
    required this.minRows,
    required this.maxRows,
  });

  int minRows;
  int maxRows;
}

class TypographyEllipsis {
  TypographyEllipsis({
    this.expandable = false,
    required this.rows,
    this.suffix,
    this.symbol,
    this.tooltip,
    this.onEllipsis,
    this.onExpand,
  });

  bool expandable;
  int rows;
  String? suffix;
  Widget? symbol;
  Widget? tooltip;
  void Function(TypographyEllipsis ellipsis)? onEllipsis;
  void Function()? onExpand;
}

enum TypographyType { secondary, success, warning, danger }
enum TypographyEditableTriggerType { icon, text, both }
