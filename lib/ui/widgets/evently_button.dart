import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';
class EventlyButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Widget? icon;
  final VoidCallback onPressed;
  
  const EventlyButton({super.key,
  required this.text,
  this.backgroundColor = AppColors.primary,
    this.textStyle = AppTextStyles.white18Medium,
    this.icon,
    required this.onPressed,
  }
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: .circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(icon != null) icon!,
        SizedBox(width: 8,),
        Text(text, style: textStyle,),
      ],
    ),
    );
  }
}
