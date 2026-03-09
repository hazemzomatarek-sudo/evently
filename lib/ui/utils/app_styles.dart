import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract final class AppTextStyles {
  static TextStyle blue24SemiBold = TextStyle(color: AppColors.primary, fontSize: 24, fontWeight: FontWeight.w600);
  static TextStyle grey14Regular = TextStyle(color: AppColors.grey, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle blue14SemiBold = TextStyle(color: AppColors.primary, fontSize: 14, fontWeight: FontWeight.w600);
  static TextStyle blue14Regular = TextStyle(color: AppColors.primary, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle blue18Medium = TextStyle(color: AppColors.primary, fontSize: 18, fontWeight: FontWeight.w500);
  static const TextStyle white18Medium = const TextStyle(color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle black16Medium = TextStyle(color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w500);
  static TextStyle black14Medium = TextStyle(color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w500);
  static TextStyle black20Medium = TextStyle(color: AppColors.black, fontSize: 20, fontWeight: FontWeight.w600);
  static TextStyle black12Regular = TextStyle(color: AppColors.black, fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle grey12Regular = TextStyle(color: AppColors.grey, fontSize: 12, fontWeight: FontWeight.w400);

}