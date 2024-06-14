import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/common/widgets/app_text_field.dart';
import 'package:flutter_application_1/app/utils/app_colors.dart';
import 'package:flutter_application_1/app/utils/app_extension.dart';
import 'package:flutter_application_1/app/utils/app_images.dart';
import 'package:flutter_application_1/app/utils/app_text_theme.dart';
import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.realHeaight,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Image.asset(
                  AppImages.loginbg,
                  height: context.realHeaight * .6,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Go ahead and set up\nyour account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 2,
                      ),
                      14.height,
                      const Text(
                        'Sign in-up to enjoy the best managing experience',
                        style: TextStyle(
                          color: Color(0xFF94A3B8),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0.11,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: context.realHeaight * .75,
                  decoration: const BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      // padding: const EdgeInsets.symmetric(horizontal: 16),
                      children: [
                        36.height,
                        SizedBox(
                          height: 52,
                          child: DecoratedBox(
                            decoration: const ShapeDecoration(
                              color: Color(0xffE2E8F0),
                              shape: StadiumBorder(
                                side: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: DecoratedBox(
                                      decoration: const ShapeDecoration(
                                        color: AppColors.kWhite,
                                        shape: StadiumBorder(
                                          side: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      child: Align(
                                        child: Text(
                                          "Login",
                                          style: AppTextThemes.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: DecoratedBox(
                                      decoration: const ShapeDecoration(
                                        color: Color(0xffE2E8F0),
                                        shape: StadiumBorder(
                                          side: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      child: Align(
                                        child: Text(
                                          "Register",
                                          style: AppTextThemes.textTheme.titleSmall?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF64748B),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        30.height,
                        const AppTextField(
                          hintText: "E-mail ID",
                          prefixIconName: AppImages.email,
                        ),
                        16.height,
                        const AppTextField(
                          hintText: "Password",
                          prefixIconName: AppImages.password,
                        ),
                        16.height,
                        const Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: Color(0xFF2563EB),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 0.11,
                            ),
                          ),
                        ),
                        24.height,
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(double.maxFinite, 56),
                            backgroundColor: const Color(0xFF2563EB),
                          ),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: AppTextThemes.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        24.height,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: .5,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFFCBD5E1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Or login with',
                                textAlign: TextAlign.center,
                                style: AppTextThemes.textTheme.labelMedium?.copyWith(
                                  color: const Color(0xFF64748B),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Container(
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: .5,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFFCBD5E1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        24.height,
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 56,
                                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(width: 1, color: Color(0xFFCBD5E1)),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppImages.google,
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Google',
                                      textAlign: TextAlign.center,
                                      style: AppTextThemes.textTheme.titleSmall?.copyWith(
                                        color: const Color(0xFF64748B),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            8.width,
                            Expanded(
                              child: Container(
                                height: 56,
                                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(width: 1, color: Color(0xFFCBD5E1)),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppImages.apple,
                                      height: 20,
                                      width: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Apple',
                                      textAlign: TextAlign.center,
                                      style: AppTextThemes.textTheme.titleSmall?.copyWith(
                                        color: const Color(0xFF64748B),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  a() {
    return const ShapeDecoration(
      color: Color(0xffE2E8F0),
      shape: StadiumBorder(side: BorderSide()),
    );
  }
}
