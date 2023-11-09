import 'package:fellow4u/components/clippart_header.dart';
import 'package:fellow4u/configs/app_routes.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckMailPage extends StatelessWidget {
  const CheckMailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPathHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 33),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Check Mail',
                      style: AppText.heading1,
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      "Please check your email for the instructions on how to reset your password.",
                      style: AppText.body1.copyWith(color: AppColors.black),
                    ),
                    SizedBox(
                      height: 38,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 20,
            ),
            SvgPicture.asset('assets/svgs/envelope.svg'),
          ]),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Back to',
                style: AppText.caption.copyWith(color: AppColors.gray),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(AppRoutes.login);
                  },
                  child: Text(
                    'Sign In',
                    style: AppText.caption.copyWith(color: AppColors.primary),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
