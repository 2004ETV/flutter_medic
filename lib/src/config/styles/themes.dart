import 'package:flutter/material.dart';
import 'package:flutter_medic/src/config/styles/colors.dart';
import 'package:flutter_medic/src/config/styles/dimensions.dart';
import 'package:flutter_medic/src/config/styles/typography.dart';

abstract class AppThemes {
  const AppThemes._();

  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.blueCrayola,
      unselectedItemColor: Colors.black.withOpacity(.4),
      selectedLabelStyle: AppTypography.sfProDisplayRegular12,
      unselectedLabelStyle: AppTypography.sfProDisplayRegular12,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTypography.sfProDisplayRegular15.copyWith(
        color: Colors.black,
      ),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(
          AppColors.blueCrayola,
        ),
        elevation: MaterialStatePropertyAll(0),
        textStyle: MaterialStatePropertyAll(
          AppTypography.sfProDisplayMedium20,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: const MaterialStatePropertyAll(
          AppTypography.sfProDisplaySemiBold17,
        ),
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.blueCrayola.withOpacity(.4);
          }

          return AppColors.blueCrayola;
        }),
        foregroundColor: const MaterialStatePropertyAll(
          Colors.white,
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size.fromHeight(0),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppDimensions.small,
            ),
          ),
        ),
        elevation: const MaterialStatePropertyAll(0),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        textStyle: const MaterialStatePropertyAll(
          AppTypography.sfProDisplayMedium17,
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Colors.white,
        ),
        foregroundColor: const MaterialStatePropertyAll(
          Colors.black,
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size.fromHeight(0),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppDimensions.small,
            ),
          ),
        ),
        elevation: const MaterialStatePropertyAll(0),
        side: MaterialStatePropertyAll(
          BorderSide(
            color: Colors.black.withOpacity(.12),
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppTypography.sfProDisplayRegular15.copyWith(
        color: Colors.black.withOpacity(.4),
      ),
      filled: true,
      fillColor: AppColors.cultured,
      contentPadding: const EdgeInsets.all(14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(.12),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(.12),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(.12),
        ),
      ),
      prefixIconColor: Colors.black.withOpacity(.4),
    ),
  );
}
