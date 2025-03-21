import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marvel_mission_manager/core/constants/assets.dart';
import 'package:marvel_mission_manager/core/constants/strings.dart';
import 'package:marvel_mission_manager/core/utils/validators.dart';
import 'package:marvel_mission_manager/core/widgets/app_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 0.95.sw.clamp(0, 500), // 95% of screen width, max 500
                height: 0.4.sh.clamp(0, 550), // 40% of screen height, max 550
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(15).r,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Spacer(flex: 3),
                          TextFormField(
                            controller: _emailController,
                            validator: Validators.isEmpty,
                            decoration: InputDecoration(
                              hintText: Strings.email,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(
                            controller: _passwordController,
                            validator: Validators.isEmpty,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: Strings.password,
                            ),
                          ),
                          Spacer(flex: 2),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: AppButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // TODO: Implement login
                                }
                              },
                              title: Strings.login,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Image.asset(Assets.marvelLogo, height: 40.h),
          ],
        ),
      ),
    );
  }
}
