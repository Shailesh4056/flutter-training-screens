// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStoreBase, Store {
  late final _$loginResponseAtom =
      Atom(name: '_AuthStoreBase.loginResponse', context: context);

  @override
  BaseResponse<HomeRequestModel?>? get loginResponse {
    _$loginResponseAtom.reportRead();
    return super.loginResponse;
  }

  @override
  set loginResponse(BaseResponse<HomeRequestModel?>? value) {
    _$loginResponseAtom.reportWrite(value, super.loginResponse, () {
      super.loginResponse = value;
    });
  }

  late final _$subcategoryResponseAtom =
      Atom(name: '_AuthStoreBase.subcategoryResponse', context: context);

  @override
  CategoryResponse? get subcategoryResponse {
    _$subcategoryResponseAtom.reportRead();
    return super.subcategoryResponse;
  }

  @override
  set subcategoryResponse(CategoryResponse? value) {
    _$subcategoryResponseAtom.reportWrite(value, super.subcategoryResponse, () {
      super.subcategoryResponse = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_AuthStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$logoutResponseAtom =
      Atom(name: '_AuthStoreBase.logoutResponse', context: context);

  @override
  BaseResponse<dynamic>? get logoutResponse {
    _$logoutResponseAtom.reportRead();
    return super.logoutResponse;
  }

  @override
  set logoutResponse(BaseResponse<dynamic>? value) {
    _$logoutResponseAtom.reportWrite(value, super.logoutResponse, () {
      super.logoutResponse = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_AuthStoreBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_AuthStoreBase.login', context: context);

  @override
  Future<dynamic> login(Map<String, dynamic> data) {
    return _$loginAsyncAction.run(() => super.login(data));
  }

  late final _$subCategoryAsyncAction =
      AsyncAction('_AuthStoreBase.subCategory', context: context);

  @override
  Future<dynamic> subCategory(Map<String, dynamic> data) {
    return _$subCategoryAsyncAction.run(() => super.subCategory(data));
  }

  late final _$logoutAsyncAction =
      AsyncAction('_AuthStoreBase.logout', context: context);

  @override
  Future<dynamic> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
loginResponse: ${loginResponse},
subcategoryResponse: ${subcategoryResponse},
isLoading: ${isLoading},
logoutResponse: ${logoutResponse},
errorMessage: ${errorMessage}
    ''';
  }
}
