import 'package:flutter/material.dart';

import '../_commons/theming/app_color.dart';

class LoadingWidget extends StatefulWidget {
  final double? height;
  final Color? color;

  const LoadingWidget({super.key, this.height, this.color});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: SizedBox(
        height: widget.height ?? 70,
        child: Center(
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation<Color>(
              widget.color ?? AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
