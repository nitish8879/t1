import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utils/app_colors.dart';

abstract class AppTextThemes {
  static const TextStyle _displayLarge = TextStyle(
    fontSize: 56,
    height: 64 / 56,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(56),
    ],
  );
  static const TextStyle _displayMedium = TextStyle(
    fontSize: 45,
    height: 52 / 45,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(45),
    ],
  );
  static const TextStyle _displaySmall = TextStyle(
    fontSize: 36,
    height: 44 / 36,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(36),
    ],
  );
  static const TextStyle _headlineLarge = TextStyle(
    fontSize: 32,
    height: 40 / 32,
    fontWeight: FontWeight.w500,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(32),
    ],
  );
  static const TextStyle _headlineMedium = TextStyle(
    fontSize: 28,
    height: 36 / 28,
    fontWeight: FontWeight.w500,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(28),
    ],
  );
  static const TextStyle _headlineSmall = TextStyle(
    fontSize: 24,
    height: 32 / 24,
    fontWeight: FontWeight.w500,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(24),
    ],
  );
  static const TextStyle _titleLarge = TextStyle(
    fontSize: 20,
    height: 28 / 20,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(20),
    ],
  );
  static const TextStyle _titleMedium = TextStyle(
    fontSize: 16,
    height: 24 / 15,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(15),
    ],
  );
  static const TextStyle _titleSmall = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(14),
    ],
  );
  static const TextStyle _labelLarge = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w300,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(14),
    ],
  );
  static const TextStyle _labelMedium = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w300,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(12),
    ],
  );
  static const TextStyle _labelSmall = TextStyle(
    fontSize: 11,
    height: 16 / 11,
    fontWeight: FontWeight.w300,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(11),
    ],
  );
  static const TextStyle _bodyLarge = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(16),
    ],
  );
  static const TextStyle _bodyMedium = TextStyle(
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(14),
    ],
  );
  static const TextStyle _bodySmall = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
    color: AppColors.kBlack900,
    fontVariations: [
      FontVariation.opticalSize(12),
    ],
  );
  static const textTheme = TextTheme(
    displayLarge: _displayLarge,
    displayMedium: _displayMedium,
    displaySmall: _displaySmall,
    titleLarge: _titleLarge,
    titleMedium: _titleMedium,
    titleSmall: _titleSmall,
    labelLarge: _labelLarge,
    labelMedium: _labelMedium,
    labelSmall: _labelSmall,
    bodyLarge: _bodyLarge,
    bodyMedium: _bodyMedium,
    bodySmall: _bodySmall,
    headlineLarge: _headlineLarge,
    headlineMedium: _headlineMedium,
    headlineSmall: _headlineSmall,
  );
}
