import 'package:fellow4u/components/button.dart';
import 'package:fellow4u/components/clippart_header.dart';
import 'package:fellow4u/components/input_text_with_title.dart';
import 'package:fellow4u/configs/app_routes.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';

class ForGotPage extends StatelessWidget {
  const ForGotPage({super.key});

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
                      'Forgot Password',
                      style: AppText.heading1,
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Text(
                      'Input your email, we will send you an instruction to reset your password.',
                      style: AppText.body1.copyWith(color: AppColors.black),
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    InputTextWithTitle(
                      title: 'Email',
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Button(
                  text: 'SEND',
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.checkmail);
                  }),
            ],
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
