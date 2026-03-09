import 'package:evently/ui/screens/login/login_screen.dart';
import 'package:evently/ui/utils/app_assets.dart';
import 'package:evently/ui/utils/app_colors.dart';
import 'package:evently/ui/utils/app_styles.dart';
import 'package:evently/ui/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_routes.dart';
import '../../widgets/evently_button.dart';
import '../login/login_screen.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backGround,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.eventlyLogo,),
              SizedBox(height: 48,),
              Text("Create your account",style: AppTextStyles.blue24SemiBold,
              ),
              SizedBox(height: 24,),
              AppTextField(hintText: "Enter your name",
                prefixIcon: SvgPicture.asset(AppAssets.icPersonSvg),),
              SizedBox(height: 16),
              AppTextField(hintText: "Enter your email",
                prefixIcon: SvgPicture.asset(AppAssets.icEmailSvg),),
              SizedBox(height: 16,),
              AppTextField(hintText: "Enter your password",
                  suffixIcon: SvgPicture.asset(AppAssets.icEyesSvg),
                  prefixIcon: SvgPicture.asset(AppAssets.icLockSvg),
                  isPasswordField: true),
              SizedBox(height: 16,),
              AppTextField(hintText: "Confirm your password",
                suffixIcon: SvgPicture.asset(AppAssets.icEyesSvg),
                prefixIcon: SvgPicture.asset(AppAssets.icLockSvg),
              ),

              SizedBox(height: 52),
              EventlyButton(text: "Sign up", onPressed: (){}),
              SizedBox(height: 24),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: AppTextStyles.grey14Regular,),
                    Text("Login",style: AppTextStyles.blue14SemiBold,)
                  ],
                ),
              ),
              SizedBox(height: 32,),
              Text("Or",textAlign: TextAlign.center,style: AppTextStyles.blue18Medium,),
              SizedBox(height: 24,),
              EventlyButton(text: "Sign up with Google",
                textStyle: AppTextStyles.blue18Medium,
                icon:Icon(Icons.g_mobiledata_rounded) , onPressed: (){}, backgroundColor: AppColors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
