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
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: -60,
            left: 0,
            right: -10,
            child: Container(
              height: 240.h,
              width: 200.w,
              decoration: BoxDecoration(
                color: AppColor.lightGreen,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
          ),
          Positioned(
            top: 120.h,
            right: -20.w,
            left: 130.w,
            child: Container(
              height: 240.h,
              width: 200.w,
              decoration: BoxDecoration(
                color: AppColor.lightGreen,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
          ),

          Positioned(
            top: 80.h,
            left: 41.w,
            right: 41.w,
            child: Text("Become volunteer & start donations",style: textBold.copyWith(
              color: AppColor.black,

            ),)
          ),

          Positioned(
            top: 185.h,
            left: 48.w,
            right: 48.w,
            child: Image(image: AssetImage(
              Assets.imageYoung
            )),
          ),

          Positioned(
              bottom: 30.h,
              left: 30.w,
              right: 30.w,
              child: getSignInForm()),

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          25.0.verticalSpace,
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
                loginAndNavigateToHome();
              }
            },
          ),
        ],
      ),
    );


  }

  Future<void> loginAndNavigateToHome() async {
    FocusScope.of(context).requestFocus(FocusNode());
    try {
      showLoading.value = true;
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      //This is just a sample request body, you need to use and edit it as per your API requirement.
      var ipAddress = await Ipify.ipv4();
      final logInRequest = LoginRequestModel(
          loginType: "S",
          deviceToken: appDB.fcmToken,
          countryCode: "+91",
          phone: mobileController.text.trim(),
          ip: ipAddress);
      if (Platform.isAndroid) {
        var androidInfo = await deviceInfo.androidInfo;
        logInRequest.uuid = androidInfo.id;
        logInRequest.deviceModel = androidInfo.device;
        logInRequest.deviceType = "A";
      } else if (Platform.isIOS) {
        var iOSInfo = await deviceInfo.iosInfo;
        logInRequest.uuid = iOSInfo.identifierForVendor;
        logInRequest.deviceModel = iOSInfo.name;
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
