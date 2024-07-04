import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/api/base_response/base_response.dart';
import '../../../../core/db/app_db.dart';
import '../../../../data/model/response/user_profile_response.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../../../../values/colors.dart';
import '../../../../values/style.dart';
import '../../../../values/validator.dart';
import '../../../../widget/app_text_filed.dart';
import '../../../../widget/button_widget_inverse.dart';
import '../../../../widget/show_message.dart';
import '../../store/auth_store.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage>
    with SingleTickerProviderStateMixin {
  late GlobalKey<FormState> _formKey;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late FocusNode emailNode;
  late FocusNode passwordNode;
  late ValueNotifier<bool> showLoading;
  late TabController tabController;

  List<ReactionDisposer>? _disposers;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    tabController = TabController(length: 2, vsync: this);
    emailController = TextEditingController();
    passwordController = TextEditingController();
    emailNode = FocusNode();
    passwordNode = FocusNode();
    showLoading = ValueNotifier<bool>(false);

    addDisposer();
  }

  @override
  void dispose() {
    removeDisposer();
    emailController.dispose();
    passwordController.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    showLoading.dispose();
    super.dispose();
  }

  void addDisposer() {
    _disposers ??= [
      // success reaction
      reaction((_) => authStore.loginResponse,
              (BaseResponse<UserData?>? response) {
            showLoading.value = false;
            if (response?.code == "1") {
              showMessage(response?.message ?? "");
              appRouter.replaceAll([const HomeRoute()]);
              appDB.isLogin = true;
            }
          }),
      // error reaction
      reaction((_) => authStore.errorMessage, (String? errorMessage) {
        showLoading.value = false;
        if (errorMessage != null) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(errorMessage)));
        }
      }),
    ];
  }

  void removeDisposer() {
    if (_disposers == null) return;
    for (final element in _disposers!) {
      element.reaction.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: AppColor.black),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: AppColor.white,
        title: Text(
          "Forgot Password",
          style: textMedium.copyWith(fontSize: 20.spMin, color: AppColor.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              0.verticalSpace,
              Image(
                image: AssetImage(Assets.imageMessage),
                height: 130.h,
                width: 116.w,
              ),
              24.verticalSpace,
              Text(
                "Enter your email address or mobile number we'll send you a link to reset password.",
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                style: textRegular.copyWith(
                    fontSize: 14.spMin, color: AppColor.santasGray),
              ),
              15.verticalSpace,
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                padding: EdgeInsets.symmetric(horizontal: 90.r),
                dividerColor: AppColor.neonPink,
                indicatorColor: AppColor.neonPink,
                labelColor: AppColor.neonPink,
                controller: tabController,
                tabs: [
                  Tab(
                    child: Text(
                      "Email",
                      style: textRegular.copyWith(
                          fontSize: 14.spMin, color: AppColor.santasGray),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Mobile",
                      style: textRegular.copyWith(
                          fontSize: 14.spMin, color: AppColor.santasGray),
                    ),
                  ),
                ],
              ),
              15.verticalSpace,
              SizedBox(
                height: MediaQuery.of(context).size.height*0.6, // Set a height for the TabBarView
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Column(
                      children: [
                        AppTextField(
                          controller: emailController,
                          label: S.current.email,
                          hint: S.current.email,
                          keyboardType: TextInputType.emailAddress,
                          validators: emailValidator,
                          focusNode: emailNode,
                        ),
                        10.verticalSpace,
                        SizedBox(
                          width: 1.sw,
                          child: AppButtonInverse(
                            "Submit",
                                () {
                              showDialog(context: context, builder: (context) {
                                return AlertDialog(
                                  content: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 0.r),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Image(
                                          image: AssetImage(Assets.imageAlertImage),
                                          height: 102.h,
                                          width: 142.w,
                                        ),
                                        24.verticalSpace,
                                        Text("Check Your Email",style: textMedium.copyWith(
                                          fontSize: 25.spMin,
                                          color: AppColor.black
                                        ),),
                                        10.verticalSpace,
                                        Text(
                                          "We have sent instructions on how to reset the password..",
                                          overflow: TextOverflow.clip,
                                          textAlign: TextAlign.center,
                                          style: textRegular.copyWith(
                                              fontSize: 14.spMin, color: AppColor.santasGray),
                                        ),
                                        15.verticalSpace,
                                        SizedBox(
                                          width: 1.sw,
                                          child: AppButtonInverse(
                                            "Ok",
                                            buttonColor: AppColor.black,
                                              (){
                                              appRouter.pop();
                                              }
                                          )
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },);
                                },
                            buttonColor: AppColor.black,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        AppTextField(
                          controller: emailController,
                          hint: "Phone",
                          keyboardType: TextInputType.emailAddress,
                          validators: emailValidator,
                          focusNode: emailNode, label: '',
                        ),
                        10.verticalSpace,
                        SizedBox(
                          width: 1.sw,
                          child: AppButtonInverse(
                            "Get OTP",
                                () {},
                            buttonColor: AppColor.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              15.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
