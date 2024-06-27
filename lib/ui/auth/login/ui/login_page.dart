import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/api/base_response/base_response.dart';
import '../../../../core/db/app_db.dart';
import '../../../../core/locator/locator.dart';
import '../../../../data/model/request/login_request_model.dart';
import '../../../../data/model/response/user_profile_response.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../../router/app_router.dart';
import '../../../../values/colors.dart';
import '../../../../values/style.dart';
import '../../../../values/validator.dart';
import '../../../../widget/app_text_filed.dart';
import '../../../../widget/button_widget_inverse.dart';
import '../../../../widget/loading_widget.dart';
import '../../../../widget/show_message.dart';
import '../../store/auth_store.dart';
import '../widget/sign_up_widget.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController mobileController;
  late FocusNode mobileNode;
  late ValueNotifier<bool> showLoading;
  Country _selectedDialogCountry = CountryPickerUtils.getCountryByIsoCode('IN');

  List<ReactionDisposer>? _disposers;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    mobileController = TextEditingController();
    mobileNode = FocusNode();
    showLoading = ValueNotifier<bool>(false);

    addDisposer();
  }

  @override
  void dispose() {
    removeDisposer();
    mobileController.dispose();
    mobileNode.dispose();
    showLoading.dispose();
    super.dispose();
  }

  void addDisposer() {
    _disposers ??= [
      // success reaction
      reaction((_) => authStore.loginResponse,
              (response) {
        print("hello shailesh ${response?.code}");
            showLoading.value = false;
            if (response?.code == 10) {
              var token=authStore.loginResponse?.data?.userDetail.token;
              appDB.token = token!;
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 420.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.imageUnion),fit: BoxFit.cover
                    )
                  ),
                ),


                Positioned(
                    top: 80.h,
                    left: 41.w,
                    right: 41.w,
                    child: Text("Become volunteer & start donations",
                      overflow: TextOverflow.clip
                      ,textAlign: TextAlign.center,style: textRegular.copyWith(
                        color: AppColor.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,

                      ),)
                ),

                Positioned(
                  top: 207.h,
                  left: 48.w,
                  right: 48.w,
                  child: Image(image: AssetImage(
                      Assets.imageYoung
                  )),
                ),



                // ValueListenableBuilder(
                //   valueListenable: showLoading,
                //   builder: (_, bool isLoading, Widget? child) {
                //     return LoadingWidget(
                //       status: isLoading,
                //       child: child!,
                //     );
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 16.0),
                //     child: SingleChildScrollView(
                //       child: Column(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           30.0.verticalSpace,
                //           getHeaderContent(),
                //           getSignInForm(),
                //           30.0.verticalSpace,
                //           SignUpWidget(
                //             fromLogin: true,
                //             onTap: () => locator<AppRouter>()
                //                 .push(const SignUpRoute())
                //                 .then((value) => _formKey.currentState?.reset()),
                //           ),
                //           40.0.verticalSpace,
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
            getSignInForm(),
          ],
        ),
      ),
    );
  }

  Widget getHeaderContent() {
    return Column(
      children: [
        FlutterLogo(
          size: 0.15.sh,
        ),
        10.0.verticalSpace,
        Text(
          S.current.welcomeBack.toUpperCase(),
          style: textBold.copyWith(
            color: AppColor.primaryColor,
            fontSize: 28.spMin,
          ),
        ),
      ],
    );
  }

  Widget getSignInForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.0.verticalSpace,
            Text(
              S.current.mobileNo,
              style: textRegular.copyWith(color: AppColor.grey, fontSize: 12.sp),
            ),
            5.verticalSpace,
            AppTextField(
              filled: true,
              controller: mobileController,
              label: S.current.mobNumber,
              hint: S.of(context).enterNumbers,
              keyboardType: TextInputType.phone,
              validators: mobileValidator,
              focusNode: mobileNode,
              // contentPadding: EdgeInsets.symmetric(),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                LengthLimitingTextInputFormatter(10),
              ],
              prefixIcon: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.r),
                child: GestureDetector(
                  onTap: () async => {
                    Future.delayed(Duration.zero, () {
                      mobileNode.unfocus();
                      mobileNode.canRequestFocus = false;
                    }),
                    await _openCountryPickerDialog(),
                    mobileNode.canRequestFocus = true,
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '+${_selectedDialogCountry.phoneCode}',
                        style: textMedium.copyWith(
                          fontSize: 15.spMin,
                        ),
                      ),
                      5.0.horizontalSpace,
                      Image.asset(
                        Assets.imageArrowDown,
                        color: AppColor.osloGray,
                        height: 8.0,
                        width: 8.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            30.verticalSpace,
            Text(S.current.byContinuingYouAreAgreeingToOutTermsConditionsPrivacy,
              overflow: TextOverflow.clip,textAlign: TextAlign.center,style: textRegular.copyWith(color: AppColor.grey),),
            16.0.verticalSpace,
            AppButtonInverse(

              S.current.logIn.toUpperCase(),
                  () {
                if (_formKey.currentState?.validate() ?? false) {
                  print(mobileController.text);
                  loginAndNavigateToHome();
                }
              },
            ),
          ],
        ),
      ),
    );


  }

  Future<void> loginAndNavigateToHome() async {
    FocusScope.of(context).requestFocus(FocusNode());
    try {
      showLoading.value = true;
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var androidInfo = await deviceInfo.androidInfo;
      //This is just a sample request body, you need to use and edit it as per your API requirement.
      final logInRequest = LoginRequestModel(
        appVersion: androidInfo.version.release,
        countryCode: "+91",
        deviceToken: "0",
       deviceName: androidInfo.brand,
        deviceType: androidInfo.type,
        email: "tom@gmail.com",
        modelName: androidInfo.model,
        osVersion: androidInfo.version.release,
        phone: mobileController.text

      );
      if (Platform.isAndroid) {
        var androidInfo = await deviceInfo.androidInfo;
        logInRequest.deviceType = "A";
      } else if (Platform.isIOS) {
        var iOSInfo = await deviceInfo.iosInfo;
        logInRequest.osVersion = iOSInfo.systemVersion;
        logInRequest.deviceType = "I";
      }
      authStore.login(logInRequest);
    } catch (e, st) {
      showLoading.value = false;
      showMessage(S.of(context).pleaseCheckYourInternetConnection);
      debugPrintStack(stackTrace: st);
    }

  }

  Widget _buildDialogItem(Country country) => Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      const SizedBox(width: 8.0),
      Text("+${country.phoneCode}"),
      const SizedBox(width: 8.0),
      Flexible(child: Text(country.name))
    ],
  );

  Future _openCountryPickerDialog() => showDialog(
    context: context,
    builder: (context) => CountryPickerDialog(
      titlePadding: const EdgeInsets.all(8.0),
      searchCursorColor: Colors.lightBlueAccent,
      searchInputDecoration: InputDecoration(hintText: S.current.search),
      isSearchable: true,
      title: Text(S.current.selectYourPhoneCode),
      onValuePicked: (Country country) =>
          setState(() => _selectedDialogCountry = country),
      itemBuilder: _buildDialogItem,
      priorityList: [
        CountryPickerUtils.getCountryByIsoCode('IN'),
        CountryPickerUtils.getCountryByIsoCode('US'),

      ],
    ),
  );
}