// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import '../../api/endpoints.dart';
import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;

part 'api_oas3.swagger.chopper.dart';
part 'api_oas3.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ApiOas3 extends ChopperService {
  static ApiOas3 create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      // client.services = [_ApiOas3]
      return _$ApiOas3(client);
    }

    final newClient = ChopperClient(
        services: [_$ApiOas3()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$ApiOas3(newClient);
  }

  ///Login
  Future<chopper.Response<Token>> apiV1AuthLoginPost(
      {required BodyLoginApiV1AuthLoginPost? body}) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _apiV1AuthLoginPost(body: body);
  }

  ///Login
  @Post(
    path: '/api/v1/auth/login',
    optionalBody: true,
  )
  Future<chopper.Response<Token>> _apiV1AuthLoginPost(
      {@Body() required BodyLoginApiV1AuthLoginPost? body});

  ///Logout
  Future<chopper.Response> apiV1AuthLogoutGet() {
    return _apiV1AuthLogoutGet();
  }

  ///Logout
  @Get(path: '/api/v1/auth/logout')
  Future<chopper.Response> _apiV1AuthLogoutGet();

  ///Verify Account
  ///@param token
  Future<chopper.Response<UserDetails>> apiV1AuthVerificationGet(
      {required String? token}) {
    generatedMapping.putIfAbsent(
        UserDetails, () => UserDetails.fromJsonFactory);

    return _apiV1AuthVerificationGet(token: token);
  }

  ///Verify Account
  ///@param token
  @Get(path: '/api/v1/auth/verification')
  Future<chopper.Response<UserDetails>> _apiV1AuthVerificationGet(
      {@Query('token') required String? token});

  ///Request Verification
  Future<chopper.Response> apiV1AuthVerificationRequestPost(
      {required RequestVerification? body}) {
    return _apiV1AuthVerificationRequestPost(body: body);
  }

  ///Request Verification
  @Post(
    path: '/api/v1/auth/verification/request',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AuthVerificationRequestPost(
      {@Body() required RequestVerification? body});

  ///Reset Password
  Future<chopper.Response> apiV1AuthPasswordResetPost(
      {required PasswordReset? body}) {
    return _apiV1AuthPasswordResetPost(body: body);
  }

  ///Reset Password
  @Post(
    path: '/api/v1/auth/password/reset',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AuthPasswordResetPost(
      {@Body() required PasswordReset? body});

  ///Confirm Password Reset
  ///@param token
  Future<chopper.Response> apiV1AuthPasswordResetConfirmGet(
      {required String? token}) {
    return _apiV1AuthPasswordResetConfirmGet(token: token);
  }

  ///Confirm Password Reset
  ///@param token
  @Get(path: '/api/v1/auth/password/reset/confirm')
  Future<chopper.Response> _apiV1AuthPasswordResetConfirmGet(
      {@Query('token') required String? token});

  ///Change Password
  Future<chopper.Response<Token>> apiV1AuthPasswordChangePut(
      {required TokenPasswordChange? body}) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _apiV1AuthPasswordChangePut(body: body);
  }

  ///Change Password
  @Put(
    path: '/api/v1/auth/password/change',
    optionalBody: true,
  )
  Future<chopper.Response<Token>> _apiV1AuthPasswordChangePut(
      {@Body() required TokenPasswordChange? body});

  ///Change Password
  Future<chopper.Response<Token>> apiV1AuthPasswordChangePost(
      {required PasswordChange? body}) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _apiV1AuthPasswordChangePost(body: body);
  }

  ///Change Password
  @Post(
    path: '/api/v1/auth/password/change',
    optionalBody: true,
  )
  Future<chopper.Response<Token>> _apiV1AuthPasswordChangePost(
      {@Body() required PasswordChange? body});

  ///Login With Token
  ///@param token
  Future<chopper.Response<Token>> apiV1AuthTokenLoginGet(
      {required String? token}) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _apiV1AuthTokenLoginGet(token: token);
  }

  ///Login With Token
  ///@param token
  @Get(path: '/api/v1/auth/token_login')
  Future<chopper.Response<Token>> _apiV1AuthTokenLoginGet(
      {@Query('token') required String? token});

  ///Login With Email
  ///@param email
  Future<chopper.Response> apiV1AuthEmailLoginPost({required String? email}) {
    return _apiV1AuthEmailLoginPost(email: email);
  }

  ///Login With Email
  ///@param email
  @Post(
    path: '/api/v1/auth/email_login',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AuthEmailLoginPost(
      {@Query('email') required String? email});

  ///Signup Admin
  Future<chopper.Response<UserDetails>> apiV1AdminSignupPost(
      {required AdminRegister? body}) {
    generatedMapping.putIfAbsent(
        UserDetails, () => UserDetails.fromJsonFactory);

    return _apiV1AdminSignupPost(body: body);
  }

  ///Signup Admin
  @Post(
    path: '/api/v1/admin/signup',
    optionalBody: true,
  )
  Future<chopper.Response<UserDetails>> _apiV1AdminSignupPost(
      {@Body() required AdminRegister? body});

  ///Get Logged In User
  Future<chopper.Response<UserDetails>> apiV1AdminMeGet() {
    generatedMapping.putIfAbsent(
        UserDetails, () => UserDetails.fromJsonFactory);

    return _apiV1AdminMeGet();
  }

  ///Get Logged In User
  @Get(path: '/api/v1/admin/me')
  Future<chopper.Response<UserDetails>> _apiV1AdminMeGet();

  ///Update Admin
  Future<chopper.Response<UserDetails>> apiV1AdminUpdatePatch(
      {required AdminEdit? body}) {
    generatedMapping.putIfAbsent(
        UserDetails, () => UserDetails.fromJsonFactory);

    return _apiV1AdminUpdatePatch(body: body);
  }

  ///Update Admin
  @Patch(
    path: '/api/v1/admin/update',
    optionalBody: true,
  )
  Future<chopper.Response<UserDetails>> _apiV1AdminUpdatePatch(
      {@Body() required AdminEdit? body});

  ///All System Users
  Future<chopper.Response<List<UserDetails>>> apiV1AdminUsersGet() {
    generatedMapping.putIfAbsent(
        UserDetails, () => UserDetails.fromJsonFactory);

    return _apiV1AdminUsersGet();
  }

  ///All System Users
  @Get(path: '/api/v1/admin/users')
  Future<chopper.Response<List<UserDetails>>> _apiV1AdminUsersGet();

  ///User Details
  ///@param user_id
  Future<chopper.Response<UserDetails>> apiV1AdminUserUserIdGet(
      {required int? userId}) {
    generatedMapping.putIfAbsent(
        UserDetails, () => UserDetails.fromJsonFactory);

    return _apiV1AdminUserUserIdGet(userId: userId);
  }

  ///User Details
  ///@param user_id
  @Get(path: '/api/v1/admin/user/{user_id}')
  Future<chopper.Response<UserDetails>> _apiV1AdminUserUserIdGet(
      {@Path('user_id') required int? userId});

  ///All System Businesses
  Future<chopper.Response<List<BusinessDetails>>> apiV1AdminBusinessesGet() {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1AdminBusinessesGet();
  }

  ///All System Businesses
  @Get(path: '/api/v1/admin/businesses')
  Future<chopper.Response<List<BusinessDetails>>> _apiV1AdminBusinessesGet();

  ///Shutdown Business
  Future<chopper.Response> apiV1AdminBusinessShutdownPatch(
      {required BusinessShutdown? body}) {
    return _apiV1AdminBusinessShutdownPatch(body: body);
  }

  ///Shutdown Business
  @Patch(
    path: '/api/v1/admin/business/shutdown',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AdminBusinessShutdownPatch(
      {@Body() required BusinessShutdown? body});

  ///Delete Any Business
  Future<chopper.Response<Status>> apiV1AdminBusinessDeleteDelete(
      {required BusinessDelete? body}) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiV1AdminBusinessDeleteDelete(body: body);
  }

  ///Delete Any Business
  @Delete(path: '/api/v1/admin/business/delete')
  Future<chopper.Response<Status>> _apiV1AdminBusinessDeleteDelete(
      {@Body() required BusinessDelete? body});

  ///Any Business Update
  ///@param business_id
  Future<chopper.Response<BusinessDetails>>
      apiV1AdminBusinessUpdateBusinessIdPut({
    required int? businessId,
    required BusinessEdit? body,
  }) {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1AdminBusinessUpdateBusinessIdPut(
        businessId: businessId, body: body);
  }

  ///Any Business Update
  ///@param business_id
  @Put(
    path: '/api/v1/admin/business/update/{business_id}',
    optionalBody: true,
  )
  Future<chopper.Response<BusinessDetails>>
      _apiV1AdminBusinessUpdateBusinessIdPut({
    @Path('business_id') required int? businessId,
    @Body() required BusinessEdit? body,
  });

  ///Suspend Business
  ///@param business_id
  Future<chopper.Response<BusinessDetails>> apiV1AdminBusinessSuspendPatch(
      {required int? businessId}) {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1AdminBusinessSuspendPatch(businessId: businessId);
  }

  ///Suspend Business
  ///@param business_id
  @Patch(
    path: '/api/v1/admin/business/suspend',
    optionalBody: true,
  )
  Future<chopper.Response<BusinessDetails>> _apiV1AdminBusinessSuspendPatch(
      {@Query('business_id') required int? businessId});

  ///Lift A Business Suspention
  ///@param business_id
  Future<chopper.Response<BusinessDetails>>
      apiV1AdminBusinessLiftSuspensionPatch({required int? businessId}) {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1AdminBusinessLiftSuspensionPatch(businessId: businessId);
  }

  ///Lift A Business Suspention
  ///@param business_id
  @Patch(
    path: '/api/v1/admin/business/lift_suspension',
    optionalBody: true,
  )
  Future<chopper.Response<BusinessDetails>>
      _apiV1AdminBusinessLiftSuspensionPatch(
          {@Query('business_id') required int? businessId});

  ///Any Business Details
  ///@param business_id
  Future<chopper.Response<BusinessDetails>> apiV1AdminBusinessBusinessIdGet(
      {required int? businessId}) {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1AdminBusinessBusinessIdGet(businessId: businessId);
  }

  ///Any Business Details
  ///@param business_id
  @Get(path: '/api/v1/admin/business/{business_id}')
  Future<chopper.Response<BusinessDetails>> _apiV1AdminBusinessBusinessIdGet(
      {@Path('business_id') required int? businessId});

  ///All System Customers
  ///@param marketing
  ///@param agency_id
  ///@param verified
  ///@param manufacturer
  ///@param city
  ///@param date
  Future<chopper.Response<List<CustomerDetails>>> apiV1AdminCustomersGet({
    bool? marketing,
    String? agencyId,
    bool? verified,
    String? manufacturer,
    String? city,
    String? date,
  }) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1AdminCustomersGet(
        marketing: marketing,
        agencyId: agencyId,
        verified: verified,
        manufacturer: manufacturer,
        city: city,
        date: date);
  }

  ///All System Customers
  ///@param marketing
  ///@param agency_id
  ///@param verified
  ///@param manufacturer
  ///@param city
  ///@param date
  @Get(path: '/api/v1/admin/customers')
  Future<chopper.Response<List<CustomerDetails>>> _apiV1AdminCustomersGet({
    @Query('marketing') bool? marketing,
    @Query('agency_id') String? agencyId,
    @Query('verified') bool? verified,
    @Query('manufacturer') String? manufacturer,
    @Query('city') String? city,
    @Query('date') String? date,
  });

  ///Get Any Customer Details
  ///@param customer_id
  Future<chopper.Response<CustomerDetails>> apiV1AdminCustomerCustomerIdGet(
      {required int? customerId}) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1AdminCustomerCustomerIdGet(customerId: customerId);
  }

  ///Get Any Customer Details
  ///@param customer_id
  @Get(path: '/api/v1/admin/customer/{customer_id}')
  Future<chopper.Response<CustomerDetails>> _apiV1AdminCustomerCustomerIdGet(
      {@Path('customer_id') required int? customerId});

  ///Any Customer Update
  ///@param customer_id
  Future<chopper.Response<CustomerDetails>>
      apiV1AdminCustomerUpdateCustomerIdPut({
    required int? customerId,
    required CustomerEdit? body,
  }) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1AdminCustomerUpdateCustomerIdPut(
        customerId: customerId, body: body);
  }

  ///Any Customer Update
  ///@param customer_id
  @Put(
    path: '/api/v1/admin/customer/update/{customer_id}',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerDetails>>
      _apiV1AdminCustomerUpdateCustomerIdPut({
    @Path('customer_id') required int? customerId,
    @Body() required CustomerEdit? body,
  });

  ///Import Customers
  Future<chopper.Response> apiV1AdminCustomersImportPost(
      {required AdminCustomerImport? body}) {
    return _apiV1AdminCustomersImportPost(body: body);
  }

  ///Import Customers
  @Post(
    path: '/api/v1/admin/customers/import',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AdminCustomersImportPost(
      {@Body() required AdminCustomerImport? body});

  ///Delete Any Customer
  Future<chopper.Response<Status>> apiV1AdminCustomerDeleteDelete(
      {required CustomerDelete? body}) {
    generatedMapping.putIfAbsent(Status, () => Status.fromJsonFactory);

    return _apiV1AdminCustomerDeleteDelete(body: body);
  }

  ///Delete Any Customer
  @Delete(path: '/api/v1/admin/customer/delete')
  Future<chopper.Response<Status>> _apiV1AdminCustomerDeleteDelete(
      {@Body() required CustomerDelete? body});

  ///Clean Database
  Future<chopper.Response> apiV1AdminClearDatabasePost() {
    return _apiV1AdminClearDatabasePost();
  }

  ///Clean Database
  @Post(
    path: '/api/v1/admin/clear_database',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AdminClearDatabasePost();

  ///Signup Customer
  Future<chopper.Response<Token>> apiV1CustomerSignupPost(
      {required CustomerRegister? body}) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _apiV1CustomerSignupPost(body: body);
  }

  ///Signup Customer
  @Post(
    path: '/api/v1/customer/signup',
    optionalBody: true,
  )
  Future<chopper.Response<Token>> _apiV1CustomerSignupPost(
      {@Body() required CustomerRegister? body});

  ///Customer Details
  Future<chopper.Response<CustomerDetails>> apiV1CustomerMeGet() {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1CustomerMeGet();
  }

  ///Customer Details
  @Get(path: '/api/v1/customer/me')
  Future<chopper.Response<CustomerDetails>> _apiV1CustomerMeGet();

  ///Customer Update
  Future<chopper.Response<CustomerDetails>> apiV1CustomerUpdateMePut(
      {required CustomerEdit? body}) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1CustomerUpdateMePut(body: body);
  }

  ///Customer Update
  @Put(
    path: '/api/v1/customer/update/me',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerDetails>> _apiV1CustomerUpdateMePut(
      {@Body() required CustomerEdit? body});

  ///Signup Business
  Future<chopper.Response<Token>> apiV1BusinessSignupPost(
      {required BusinessRegister? body}) {
    generatedMapping.putIfAbsent(Token, () => Token.fromJsonFactory);

    return _apiV1BusinessSignupPost(body: body);
  }

  ///Signup Business
  @Post(
    path: '/api/v1/business/signup',
    optionalBody: true,
  )
  Future<chopper.Response<Token>> _apiV1BusinessSignupPost(
      {@Body() required BusinessRegister? body});

  ///Signup My Customer
  Future<chopper.Response<CustomerDetails>> apiV1BusinessCustomerSignupPost(
      {required BusinessCustomerRegister? body}) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1BusinessCustomerSignupPost(body: body);
  }

  ///Signup My Customer
  @Post(
    path: '/api/v1/business/customer/signup',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerDetails>> _apiV1BusinessCustomerSignupPost(
      {@Body() required BusinessCustomerRegister? body});

  ///Customer Update
  ///@param customer_id
  Future<chopper.Response<CustomerDetails>>
      apiV1BusinessCustomerUpdateCustomerIdPut({
    required int? customerId,
    required CustomerEdit? body,
  }) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1BusinessCustomerUpdateCustomerIdPut(
        customerId: customerId, body: body);
  }

  ///Customer Update
  ///@param customer_id
  @Put(
    path: '/api/v1/business/customer/update/{customer_id}',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerDetails>>
      _apiV1BusinessCustomerUpdateCustomerIdPut({
    @Path('customer_id') required int? customerId,
    @Body() required CustomerEdit? body,
  });

  ///Suspend Customer
  ///@param customer_id
  Future<chopper.Response<CustomerDetails>> apiV1BusinessCustomerSuspendPatch(
      {required int? customerId}) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1BusinessCustomerSuspendPatch(customerId: customerId);
  }

  ///Suspend Customer
  ///@param customer_id
  @Patch(
    path: '/api/v1/business/customer/suspend',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerDetails>> _apiV1BusinessCustomerSuspendPatch(
      {@Query('customer_id') required int? customerId});

  ///Verify A Customer
  ///@param customer_id
  Future<chopper.Response<CustomerDetails>> apiV1BusinessCustomerVerifyPatch(
      {required int? customerId}) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1BusinessCustomerVerifyPatch(customerId: customerId);
  }

  ///Verify A Customer
  ///@param customer_id
  @Patch(
    path: '/api/v1/business/customer/verify',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerDetails>> _apiV1BusinessCustomerVerifyPatch(
      {@Query('customer_id') required int? customerId});

  ///Lift Customer Suspension
  ///@param customer_id
  Future<chopper.Response<CustomerDetails>>
      apiV1BusinessCustomerLiftSuspensionPatch({required int? customerId}) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1BusinessCustomerLiftSuspensionPatch(customerId: customerId);
  }

  ///Lift Customer Suspension
  ///@param customer_id
  @Patch(
    path: '/api/v1/business/customer/lift_suspension',
    optionalBody: true,
  )
  Future<chopper.Response<CustomerDetails>>
      _apiV1BusinessCustomerLiftSuspensionPatch(
          {@Query('customer_id') required int? customerId});

  ///All Business Customers
  ///@param marketing
  ///@param agency_id
  ///@param verified
  ///@param manufacturer
  ///@param city
  ///@param date
  Future<chopper.Response<List<CustomerDetails>>> apiV1BusinessCustomersGet({
    bool? marketing,
    String? agencyId,
    bool? verified,
    String? manufacturer,
    String? city,
    String? date,
  }) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1BusinessCustomersGet(
        marketing: marketing,
        agencyId: agencyId,
        verified: verified,
        manufacturer: manufacturer,
        city: city,
        date: date);
  }

  ///All Business Customers
  ///@param marketing
  ///@param agency_id
  ///@param verified
  ///@param manufacturer
  ///@param city
  ///@param date
  @Get(path: '/api/v1/business/customers')
  Future<chopper.Response<List<CustomerDetails>>> _apiV1BusinessCustomersGet({
    @Query('marketing') bool? marketing,
    @Query('agency_id') String? agencyId,
    @Query('verified') bool? verified,
    @Query('manufacturer') String? manufacturer,
    @Query('city') String? city,
    @Query('date') String? date,
  });

  ///Business Customer Details
  ///@param customer_id
  Future<chopper.Response<CustomerDetails>> apiV1BusinessCustomersCustomerIdGet(
      {required int? customerId}) {
    generatedMapping.putIfAbsent(
        CustomerDetails, () => CustomerDetails.fromJsonFactory);

    return _apiV1BusinessCustomersCustomerIdGet(customerId: customerId);
  }

  ///Business Customer Details
  ///@param customer_id
  @Get(path: '/api/v1/business/customers/{customer_id}')
  Future<chopper.Response<CustomerDetails>>
      _apiV1BusinessCustomersCustomerIdGet(
          {@Path('customer_id') required int? customerId});

  ///My Business Details
  Future<chopper.Response<BusinessDetails>> apiV1BusinessMeGet() {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1BusinessMeGet();
  }

  ///My Business Details
  @Get(path: '/api/v1/business/me')
  Future<chopper.Response<BusinessDetails>> _apiV1BusinessMeGet();

  ///My Business Details
  ///@param business_id
  Future<chopper.Response<BusinessDetails>> apiV1BusinessBusinessIdGet(
      {required int? businessId}) {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1BusinessBusinessIdGet(businessId: businessId);
  }

  ///My Business Details
  ///@param business_id
  @Get(path: '/api/v1/business/{business_id}')
  Future<chopper.Response<BusinessDetails>> _apiV1BusinessBusinessIdGet(
      {@Path('business_id') required int? businessId});

  ///My Business Update
  Future<chopper.Response<BusinessDetails>> apiV1BusinessUpdateMePut(
      {required BusinessEdit? body}) {
    generatedMapping.putIfAbsent(
        BusinessDetails, () => BusinessDetails.fromJsonFactory);

    return _apiV1BusinessUpdateMePut(body: body);
  }

  ///My Business Update
  @Put(
    path: '/api/v1/business/update/me',
    optionalBody: true,
  )
  Future<chopper.Response<BusinessDetails>> _apiV1BusinessUpdateMePut(
      {@Body() required BusinessEdit? body});

  ///Import Customers
  Future<chopper.Response> apiV1BusinessCustomersImportPost(
      {required List<CustomerImport>? body}) {
    return _apiV1BusinessCustomersImportPost(body: body);
  }

  ///Import Customers
  @Post(
    path: '/api/v1/business/customers/import',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1BusinessCustomersImportPost(
      {@Body() required List<CustomerImport>? body});

  ///Create Plan
  Future<chopper.Response> apiV1PlanCreatePost({required PlanCreate? body}) {
    return _apiV1PlanCreatePost(body: body);
  }

  ///Create Plan
  @Post(
    path: '/api/v1/plan/create',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1PlanCreatePost(
      {@Body() required PlanCreate? body});

  ///All Plans
  Future<chopper.Response> apiV1PlansGet() {
    return _apiV1PlansGet();
  }

  ///All Plans
  @Get(path: '/api/v1/plans')
  Future<chopper.Response> _apiV1PlansGet();

  ///Single Plan
  ///@param plan_id
  Future<chopper.Response> apiV1PlanPlanIdGet({required int? planId}) {
    return _apiV1PlanPlanIdGet(planId: planId);
  }

  ///Single Plan
  ///@param plan_id
  @Get(path: '/api/v1/plan/{plan_id}')
  Future<chopper.Response> _apiV1PlanPlanIdGet(
      {@Path('plan_id') required int? planId});

  ///Update Plan
  ///@param plan_id
  Future<chopper.Response> apiV1PlanUpdatePlanIdPut({
    required int? planId,
    required PlanEdit? body,
  }) {
    return _apiV1PlanUpdatePlanIdPut(planId: planId, body: body);
  }

  ///Update Plan
  ///@param plan_id
  @Put(
    path: '/api/v1/plan/update/{plan_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1PlanUpdatePlanIdPut({
    @Path('plan_id') required int? planId,
    @Body() required PlanEdit? body,
  });

  ///Deactivate Plan
  ///@param plan_id
  Future<chopper.Response> apiV1PlanDeactivatePatch({required int? planId}) {
    return _apiV1PlanDeactivatePatch(planId: planId);
  }

  ///Deactivate Plan
  ///@param plan_id
  @Patch(
    path: '/api/v1/plan/deactivate',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1PlanDeactivatePatch(
      {@Query('plan_id') required int? planId});

  ///Subscribe To Plan
  Future<chopper.Response> apiV1SubscriptionSubscribePost(
      {required ClientSubscribe? body}) {
    return _apiV1SubscriptionSubscribePost(body: body);
  }

  ///Subscribe To Plan
  @Post(
    path: '/api/v1/subscription/subscribe',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1SubscriptionSubscribePost(
      {@Body() required ClientSubscribe? body});

  ///All Subscriptions
  ///@param site_id
  ///@param cancelled
  Future<chopper.Response> apiV1SubscriptionsGet({
    int? siteId,
    bool? cancelled,
  }) {
    return _apiV1SubscriptionsGet(siteId: siteId, cancelled: cancelled);
  }

  ///All Subscriptions
  ///@param site_id
  ///@param cancelled
  @Get(path: '/api/v1/subscriptions')
  Future<chopper.Response> _apiV1SubscriptionsGet({
    @Query('site_id') int? siteId,
    @Query('cancelled') bool? cancelled,
  });

  ///Cancel Subscription
  ///@param subscription_id
  Future<chopper.Response> apiV1SubscriptionCancelPost(
      {required int? subscriptionId}) {
    return _apiV1SubscriptionCancelPost(subscriptionId: subscriptionId);
  }

  ///Cancel Subscription
  ///@param subscription_id
  @Post(
    path: '/api/v1/subscription/cancel',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1SubscriptionCancelPost(
      {@Query('subscription_id') required int? subscriptionId});

  ///All Subscriptions
  ///@param subscription_id
  Future<chopper.Response> apiV1SubscriptionSubscriptionIdGet(
      {required int? subscriptionId}) {
    return _apiV1SubscriptionSubscriptionIdGet(subscriptionId: subscriptionId);
  }

  ///All Subscriptions
  ///@param subscription_id
  @Get(path: '/api/v1/subscription/{subscription_id}')
  Future<chopper.Response> _apiV1SubscriptionSubscriptionIdGet(
      {@Path('subscription_id') required int? subscriptionId});

  ///Pay Subscription
  ///@param subscription_id
  Future<chopper.Response> apiV1PaymentPaySubscriptionGet(
      {required int? subscriptionId}) {
    return _apiV1PaymentPaySubscriptionGet(subscriptionId: subscriptionId);
  }

  ///Pay Subscription
  ///@param subscription_id
  @Get(path: '/api/v1/payment/pay_subscription')
  Future<chopper.Response> _apiV1PaymentPaySubscriptionGet(
      {@Query('subscription_id') required int? subscriptionId});

  ///Payment Webhook
  Future<chopper.Response> apiV1PaymentWebhookPost({required Object? body}) {
    return _apiV1PaymentWebhookPost(body: body);
  }

  ///Payment Webhook
  @Post(
    path: '/api/v1/payment/webhook',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1PaymentWebhookPost(
      {@Body() required Object? body});

  ///Add Payment Method
  Future<chopper.Response<Object>> apiV1PaymentMethodAddPost(
      {required CreateCardPayment? body}) {
    return _apiV1PaymentMethodAddPost(body: body);
  }

  ///Add Payment Method
  @Post(
    path: '/api/v1/payment/method/add',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _apiV1PaymentMethodAddPost(
      {@Body() required CreateCardPayment? body});

  ///Set Default Payment Method
  ///@param stripe_payment_method_id
  Future<chopper.Response<Object>> apiV1PaymentMethodDefaultPost(
      {required String? stripePaymentMethodId}) {
    return _apiV1PaymentMethodDefaultPost(
        stripePaymentMethodId: stripePaymentMethodId);
  }

  ///Set Default Payment Method
  ///@param stripe_payment_method_id
  @Post(
    path: '/api/v1/payment/method/default',
    optionalBody: true,
  )
  Future<chopper.Response<Object>> _apiV1PaymentMethodDefaultPost(
      {@Query('stripe_payment_method_id')
          required String? stripePaymentMethodId});

  ///Get Payment Methods
  Future<chopper.Response<List<Object>>> apiV1PaymentMethodsGet() {
    return _apiV1PaymentMethodsGet();
  }

  ///Get Payment Methods
  @Get(path: '/api/v1/payment/methods')
  Future<chopper.Response<List<Object>>> _apiV1PaymentMethodsGet();

  ///Get Payment Method
  ///@param stripe_payment_method_id
  Future<chopper.Response<Object>> apiV1PaymentMethodStripePaymentMethodIdGet(
      {required String? stripePaymentMethodId}) {
    return _apiV1PaymentMethodStripePaymentMethodIdGet(
        stripePaymentMethodId: stripePaymentMethodId);
  }

  ///Get Payment Method
  ///@param stripe_payment_method_id
  @Get(path: '/api/v1/payment/method/{stripe_payment_method_id}')
  Future<chopper.Response<Object>> _apiV1PaymentMethodStripePaymentMethodIdGet(
      {@Path('stripe_payment_method_id')
          required String? stripePaymentMethodId});

  ///Update Payment Method
  ///@param stripe_payment_method_id
  Future<chopper.Response<Object>>
      apiV1PaymentMethodUpdateStripePaymentMethodIdPut({
    required String? stripePaymentMethodId,
    required CardPaymentInfo? body,
  }) {
    return _apiV1PaymentMethodUpdateStripePaymentMethodIdPut(
        stripePaymentMethodId: stripePaymentMethodId, body: body);
  }

  ///Update Payment Method
  ///@param stripe_payment_method_id
  @Put(
    path: '/api/v1/payment/method/update/{stripe_payment_method_id}',
    optionalBody: true,
  )
  Future<chopper.Response<Object>>
      _apiV1PaymentMethodUpdateStripePaymentMethodIdPut({
    @Path('stripe_payment_method_id') required String? stripePaymentMethodId,
    @Body() required CardPaymentInfo? body,
  });

  ///Delete Payment Method
  ///@param stripe_payment_method_id
  Future<chopper.Response> apiV1PaymentMethodsDeleteStripePaymentMethodIdDelete(
      {required String? stripePaymentMethodId}) {
    return _apiV1PaymentMethodsDeleteStripePaymentMethodIdDelete(
        stripePaymentMethodId: stripePaymentMethodId);
  }

  ///Delete Payment Method
  ///@param stripe_payment_method_id
  @Delete(path: '/api/v1/payment/methods/delete/{stripe_payment_method_id}')
  Future<chopper.Response>
      _apiV1PaymentMethodsDeleteStripePaymentMethodIdDelete(
          {@Path('stripe_payment_method_id')
              required String? stripePaymentMethodId});

  ///Create Invoice
  ///@param customer_id
  Future<chopper.Response> apiV1PaymentInvoiceCreatePost(
      {required Object? customerId}) {
    return _apiV1PaymentInvoiceCreatePost(customerId: customerId);
  }

  ///Create Invoice
  ///@param customer_id
  @Post(
    path: '/api/v1/payment/invoice/create',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1PaymentInvoiceCreatePost(
      {@Query('customer_id') required Object? customerId});

  ///All Invoices
  ///@param customer_id
  Future<chopper.Response> apiV1PaymentInvoicesGet({int? customerId}) {
    return _apiV1PaymentInvoicesGet(customerId: customerId);
  }

  ///All Invoices
  ///@param customer_id
  @Get(path: '/api/v1/payment/invoices')
  Future<chopper.Response> _apiV1PaymentInvoicesGet(
      {@Query('customer_id') int? customerId});

  ///Pay Invoice
  ///@param stripe_invoice_id
  Future<chopper.Response> apiV1PaymentInvoicePayGet(
      {required String? stripeInvoiceId}) {
    return _apiV1PaymentInvoicePayGet(stripeInvoiceId: stripeInvoiceId);
  }

  ///Pay Invoice
  ///@param stripe_invoice_id
  @Get(path: '/api/v1/payment/invoice/pay')
  Future<chopper.Response> _apiV1PaymentInvoicePayGet(
      {@Query('stripe_invoice_id') required String? stripeInvoiceId});

  ///Transactions
  ///@param last_transaction_id
  ///@param customer_id
  Future<chopper.Response> apiV1PaymentTransactionsGet({
    String? lastTransactionId,
    int? customerId,
  }) {
    return _apiV1PaymentTransactionsGet(
        lastTransactionId: lastTransactionId, customerId: customerId);
  }

  ///Transactions
  ///@param last_transaction_id
  ///@param customer_id
  @Get(path: '/api/v1/payment/transactions')
  Future<chopper.Response> _apiV1PaymentTransactionsGet({
    @Query('last_transaction_id') String? lastTransactionId,
    @Query('customer_id') int? customerId,
  });

  ///Single Customer Billings
  ///@param customer_id
  Future<chopper.Response> apiV1BillingCustomerIdGet(
      {required Object? customerId}) {
    return _apiV1BillingCustomerIdGet(customerId: customerId);
  }

  ///Single Customer Billings
  ///@param customer_id
  @Get(path: '/api/v1/billing/{customer_id}')
  Future<chopper.Response> _apiV1BillingCustomerIdGet(
      {@Path('customer_id') required Object? customerId});

  ///All Billings
  ///@param site_id
  Future<chopper.Response> apiV1BillingsGet({int? siteId}) {
    return _apiV1BillingsGet(siteId: siteId);
  }

  ///All Billings
  ///@param site_id
  @Get(path: '/api/v1/billings')
  Future<chopper.Response> _apiV1BillingsGet({@Query('site_id') int? siteId});

  ///Create Fees
  Future<chopper.Response<FeesOut>> apiV1FeeAddPost({required FeesIn? body}) {
    generatedMapping.putIfAbsent(FeesOut, () => FeesOut.fromJsonFactory);

    return _apiV1FeeAddPost(body: body);
  }

  ///Create Fees
  @Post(
    path: '/api/v1/fee/add',
    optionalBody: true,
  )
  Future<chopper.Response<FeesOut>> _apiV1FeeAddPost(
      {@Body() required FeesIn? body});

  ///Get All Fees
  Future<chopper.Response<List<FeesOut>>> apiV1FeesGet() {
    generatedMapping.putIfAbsent(FeesOut, () => FeesOut.fromJsonFactory);

    return _apiV1FeesGet();
  }

  ///Get All Fees
  @Get(path: '/api/v1/fees')
  Future<chopper.Response<List<FeesOut>>> _apiV1FeesGet();

  ///Get Single Fee
  ///@param fee_id
  Future<chopper.Response<FeesOut>> apiV1FeeFeeIdGet({required int? feeId}) {
    generatedMapping.putIfAbsent(FeesOut, () => FeesOut.fromJsonFactory);

    return _apiV1FeeFeeIdGet(feeId: feeId);
  }

  ///Get Single Fee
  ///@param fee_id
  @Get(path: '/api/v1/fee/{fee_id}')
  Future<chopper.Response<FeesOut>> _apiV1FeeFeeIdGet(
      {@Path('fee_id') required int? feeId});

  ///Update Fees
  ///@param fee_id
  Future<chopper.Response<FeesOut>> apiV1FeeUpdateFeeIdPatch({
    required int? feeId,
    required FeesUpdate? body,
  }) {
    generatedMapping.putIfAbsent(FeesOut, () => FeesOut.fromJsonFactory);

    return _apiV1FeeUpdateFeeIdPatch(feeId: feeId, body: body);
  }

  ///Update Fees
  ///@param fee_id
  @Patch(
    path: '/api/v1/fee/update/{fee_id}',
    optionalBody: true,
  )
  Future<chopper.Response<FeesOut>> _apiV1FeeUpdateFeeIdPatch({
    @Path('fee_id') required int? feeId,
    @Body() required FeesUpdate? body,
  });

  ///Delete Fees
  ///@param fee_id
  Future<chopper.Response> apiV1FeeDeleteDelete({required int? feeId}) {
    return _apiV1FeeDeleteDelete(feeId: feeId);
  }

  ///Delete Fees
  ///@param fee_id
  @Delete(path: '/api/v1/fee/delete')
  Future<chopper.Response> _apiV1FeeDeleteDelete(
      {@Query('fee_id') required int? feeId});

  ///Create Coupon
  Future<chopper.Response<CouponOut>> apiV1CouponAddPost(
      {required CouponIn? body}) {
    generatedMapping.putIfAbsent(CouponOut, () => CouponOut.fromJsonFactory);

    return _apiV1CouponAddPost(body: body);
  }

  ///Create Coupon
  @Post(
    path: '/api/v1/coupon/add',
    optionalBody: true,
  )
  Future<chopper.Response<CouponOut>> _apiV1CouponAddPost(
      {@Body() required CouponIn? body});

  ///Get Coupons
  Future<chopper.Response<List<CouponOut>>> apiV1CouponsGet() {
    generatedMapping.putIfAbsent(CouponOut, () => CouponOut.fromJsonFactory);

    return _apiV1CouponsGet();
  }

  ///Get Coupons
  @Get(path: '/api/v1/coupons')
  Future<chopper.Response<List<CouponOut>>> _apiV1CouponsGet();

  ///Update Coupon
  ///@param coupon_id
  Future<chopper.Response> apiV1CouponUpdateCouponIdPatch({
    required int? couponId,
    required CouponEdit? body,
  }) {
    return _apiV1CouponUpdateCouponIdPatch(couponId: couponId, body: body);
  }

  ///Update Coupon
  ///@param coupon_id
  @Patch(
    path: '/api/v1/coupon/update/{coupon_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1CouponUpdateCouponIdPatch({
    @Path('coupon_id') required int? couponId,
    @Body() required CouponEdit? body,
  });

  ///Deactivate Coupon
  ///@param coupon_id
  Future<chopper.Response> apiV1CouponDeactivateCouponIdPost(
      {required int? couponId}) {
    return _apiV1CouponDeactivateCouponIdPost(couponId: couponId);
  }

  ///Deactivate Coupon
  ///@param coupon_id
  @Post(
    path: '/api/v1/coupon/deactivate/{coupon_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1CouponDeactivateCouponIdPost(
      {@Path('coupon_id') required int? couponId});

  ///Get Coupon
  ///@param coupon_id
  Future<chopper.Response<CouponOut>> apiV1CouponCouponIdGet(
      {required int? couponId}) {
    generatedMapping.putIfAbsent(CouponOut, () => CouponOut.fromJsonFactory);

    return _apiV1CouponCouponIdGet(couponId: couponId);
  }

  ///Get Coupon
  ///@param coupon_id
  @Get(path: '/api/v1/coupon/{coupon_id}')
  Future<chopper.Response<CouponOut>> _apiV1CouponCouponIdGet(
      {@Path('coupon_id') required int? couponId});

  ///Get Contract Customer
  ///@param customeID
  ///@param contractID
  Future<chopper.Response> apiV1ContractGetContractCusCustomeIDGet({
    required int? customeID,
    int? contractID,
  }) {
    return _apiV1ContractGetContractCusCustomeIDGet(
        customeID: customeID, contractID: contractID);
  }

  ///Get Contract Customer
  ///@param customeID
  ///@param contractID
  @Get(path: '/api/v1/contract/get_contract_cus/{customeID}')
  Future<chopper.Response> _apiV1ContractGetContractCusCustomeIDGet({
    @Path('customeID') required int? customeID,
    @Query('contractID') int? contractID,
  });

  ///Get Contract Business
  ///@param businessID
  ///@param contractID
  Future<chopper.Response> apiV1ContractGetContractBusBusinessIDGet({
    required int? businessID,
    int? contractID,
  }) {
    return _apiV1ContractGetContractBusBusinessIDGet(
        businessID: businessID, contractID: contractID);
  }

  ///Get Contract Business
  ///@param businessID
  ///@param contractID
  @Get(path: '/api/v1/contract/get_contract_bus/{businessID}')
  Future<chopper.Response> _apiV1ContractGetContractBusBusinessIDGet({
    @Path('businessID') required int? businessID,
    @Query('contractID') int? contractID,
  });

  ///Get Contract Admin
  ///@param ContractID
  Future<chopper.Response> apiV1ContractGetContractGet({int? contractID}) {
    return _apiV1ContractGetContractGet(contractID: contractID);
  }

  ///Get Contract Admin
  ///@param ContractID
  @Get(path: '/api/v1/contract/get_contract')
  Future<chopper.Response> _apiV1ContractGetContractGet(
      {@Query('ContractID') int? contractID});

  ///Get Signed Contract
  ///@param contractID
  Future<chopper.Response> apiV1ContractGetSignedContractUrlConPatch(
      {required String? contractID}) {
    return _apiV1ContractGetSignedContractUrlConPatch(contractID: contractID);
  }

  ///Get Signed Contract
  ///@param contractID
  @Patch(
    path: '/api/v1/contract/get_signed_contract/{url_con}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1ContractGetSignedContractUrlConPatch(
      {@Query('contractID') required String? contractID});

  ///Upload Signed Contract
  Future<chopper.Response> apiV1ContractUploadSignedContractPost(
      {required BodyUploadSignedContractApiV1ContractUploadSignedContractPost
          body}) {
    return _apiV1ContractUploadSignedContractPost(body: body);
  }

  ///Upload Signed Contract
  @Post(
    path: '/api/v1/contract/upload_signed_contract',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1ContractUploadSignedContractPost(
      {@Part()
          required BodyUploadSignedContractApiV1ContractUploadSignedContractPost
              body});

  ///Businesscontracttemplate
  Future<chopper.Response> apiV1ContractBusinessContractTemplatePost(
      {required BusinessContractTemplate? body}) {
    return _apiV1ContractBusinessContractTemplatePost(body: body);
  }

  ///Businesscontracttemplate
  @Post(
    path: '/api/v1/contract/businessContractTemplate',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1ContractBusinessContractTemplatePost(
      {@Body() required BusinessContractTemplate? body});

  ///Add Agency
  Future<chopper.Response<AgencyOut>> apiV1AgencyAddPost(
      {required AgencyIn? body}) {
    generatedMapping.putIfAbsent(AgencyOut, () => AgencyOut.fromJsonFactory);

    return _apiV1AgencyAddPost(body: body);
  }

  ///Add Agency
  @Post(
    path: '/api/v1/agency/add',
    optionalBody: true,
  )
  Future<chopper.Response<AgencyOut>> _apiV1AgencyAddPost(
      {@Body() required AgencyIn? body});

  ///Get An Agency
  ///@param agency_id
  Future<chopper.Response<AgencyOut>> apiV1AgencyAgencyIdGet(
      {required int? agencyId}) {
    generatedMapping.putIfAbsent(AgencyOut, () => AgencyOut.fromJsonFactory);

    return _apiV1AgencyAgencyIdGet(agencyId: agencyId);
  }

  ///Get An Agency
  ///@param agency_id
  @Get(path: '/api/v1/agency/{agency_id}')
  Future<chopper.Response<AgencyOut>> _apiV1AgencyAgencyIdGet(
      {@Path('agency_id') required int? agencyId});

  ///Update An Agency
  ///@param agency_id
  Future<chopper.Response<AgencyOut>> apiV1AgencyUpdateAgencyIdPut({
    required int? agencyId,
    required UpdateAgency? body,
  }) {
    generatedMapping.putIfAbsent(AgencyOut, () => AgencyOut.fromJsonFactory);

    return _apiV1AgencyUpdateAgencyIdPut(agencyId: agencyId, body: body);
  }

  ///Update An Agency
  ///@param agency_id
  @Put(
    path: '/api/v1/agency/update/{agency_id}',
    optionalBody: true,
  )
  Future<chopper.Response<AgencyOut>> _apiV1AgencyUpdateAgencyIdPut({
    @Path('agency_id') required int? agencyId,
    @Body() required UpdateAgency? body,
  });

  ///Delete An Agency
  ///@param agency_id
  Future<chopper.Response<RequestResponse>> apiV1AgencyDeleteAgencyIdDelete(
      {required int? agencyId}) {
    generatedMapping.putIfAbsent(
        RequestResponse, () => RequestResponse.fromJsonFactory);

    return _apiV1AgencyDeleteAgencyIdDelete(agencyId: agencyId);
  }

  ///Delete An Agency
  ///@param agency_id
  @Delete(path: '/api/v1/agency/delete/{agency_id}')
  Future<chopper.Response<RequestResponse>> _apiV1AgencyDeleteAgencyIdDelete(
      {@Path('agency_id') required int? agencyId});

  ///Export All Users
  Future<chopper.Response> apiV1ExportUsersGet() {
    return _apiV1ExportUsersGet();
  }

  ///Export All Users
  @Get(path: '/api/v1/export/users')
  Future<chopper.Response> _apiV1ExportUsersGet();

  ///Export All Customers
  Future<chopper.Response> apiV1ExportCustomersGet() {
    return _apiV1ExportCustomersGet();
  }

  ///Export All Customers
  @Get(path: '/api/v1/export/customers')
  Future<chopper.Response> _apiV1ExportCustomersGet();

  ///Export All Businesses
  Future<chopper.Response> apiV1ExportBusinessesGet() {
    return _apiV1ExportBusinessesGet();
  }

  ///Export All Businesses
  @Get(path: '/api/v1/export/businesses')
  Future<chopper.Response> _apiV1ExportBusinessesGet();

  ///Add Request
  Future<chopper.Response> apiV1RequestAddPost({required RequestIn? body}) {
    return _apiV1RequestAddPost(body: body);
  }

  ///Add Request
  @Post(
    path: '/api/v1/request/add',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1RequestAddPost(
      {@Body() required RequestIn? body});

  ///Get All Request
  Future<chopper.Response> apiV1RequestsGet() {
    return _apiV1RequestsGet();
  }

  ///Get All Request
  @Get(path: '/api/v1/requests')
  Future<chopper.Response> _apiV1RequestsGet();

  ///Get Subscription Logs
  ///@param start_date
  ///@param end_date
  Future<chopper.Response> apiV1LogsSubscriptionsGet({
    String? startDate,
    String? endDate,
  }) {
    return _apiV1LogsSubscriptionsGet(startDate: startDate, endDate: endDate);
  }

  ///Get Subscription Logs
  ///@param start_date
  ///@param end_date
  @Get(path: '/api/v1/logs/subscriptions')
  Future<chopper.Response> _apiV1LogsSubscriptionsGet({
    @Query('start_date') String? startDate,
    @Query('end_date') String? endDate,
  });

  ///Get Payment Logs
  ///@param start_date
  ///@param end_date
  Future<chopper.Response> apiV1LogsPaymentsGet({
    String? startDate,
    String? endDate,
  }) {
    return _apiV1LogsPaymentsGet(startDate: startDate, endDate: endDate);
  }

  ///Get Payment Logs
  ///@param start_date
  ///@param end_date
  @Get(path: '/api/v1/logs/payments')
  Future<chopper.Response> _apiV1LogsPaymentsGet({
    @Query('start_date') String? startDate,
    @Query('end_date') String? endDate,
  });

  ///Get Invoice Logs
  ///@param start_date
  ///@param end_date
  Future<chopper.Response> apiV1LogsInvoiceGet({
    String? startDate,
    String? endDate,
  }) {
    return _apiV1LogsInvoiceGet(startDate: startDate, endDate: endDate);
  }

  ///Get Invoice Logs
  ///@param start_date
  ///@param end_date
  @Get(path: '/api/v1/logs/invoice')
  Future<chopper.Response> _apiV1LogsInvoiceGet({
    @Query('start_date') String? startDate,
    @Query('end_date') String? endDate,
  });

  ///Get Contract Logs
  ///@param start_date
  ///@param end_date
  Future<chopper.Response> apiV1LogsContractGet({
    String? startDate,
    String? endDate,
  }) {
    return _apiV1LogsContractGet(startDate: startDate, endDate: endDate);
  }

  ///Get Contract Logs
  ///@param start_date
  ///@param end_date
  @Get(path: '/api/v1/logs/contract')
  Future<chopper.Response> _apiV1LogsContractGet({
    @Query('start_date') String? startDate,
    @Query('end_date') String? endDate,
  });

  ///Uploaded File
  ///@param user_id
  Future<chopper.Response> apiV1UploadFilesUploadedFilesPost({
    required int? userId,
    required BodyUploadedFileApiV1UploadFilesUploadedFilesPost body,
  }) {
    return _apiV1UploadFilesUploadedFilesPost(userId: userId, body: body);
  }

  ///Uploaded File
  ///@param user_id
  @Post(
    path: '/api/v1/uploadFiles/uploaded_files',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1UploadFilesUploadedFilesPost({
    @Query('user_id') required int? userId,
    @Part() required BodyUploadedFileApiV1UploadFilesUploadedFilesPost body,
  });

  ///Delete File
  ///@param fileID
  Future<chopper.Response> apiV1UploadFilesDeleteFileUserIDDelete(
      {required int? fileID}) {
    return _apiV1UploadFilesDeleteFileUserIDDelete(fileID: fileID);
  }

  ///Delete File
  ///@param fileID
  @Delete(path: '/api/v1/uploadFiles/delete_file/{userID}')
  Future<chopper.Response> _apiV1UploadFilesDeleteFileUserIDDelete(
      {@Query('fileID') required int? fileID});

  ///Get All Files
  ///@param userID
  ///@param fileID
  Future<chopper.Response> apiV1UploadFilesGetFilesUserIDGet({
    required int? userID,
    int? fileID,
  }) {
    return _apiV1UploadFilesGetFilesUserIDGet(userID: userID, fileID: fileID);
  }

  ///Get All Files
  ///@param userID
  ///@param fileID
  @Get(path: '/api/v1/uploadFiles/get_files/{userID}')
  Future<chopper.Response> _apiV1UploadFilesGetFilesUserIDGet({
    @Path('userID') required int? userID,
    @Query('fileID') int? fileID,
  });

  ///Edit Bus Files
  ///@param fileID
  ///@param userID
  Future<chopper.Response> apiV1UploadFilesEditFilePost({
    required String? fileID,
    required String? userID,
    required BodyEditBusFilesApiV1UploadFilesEditFilePost body,
  }) {
    return _apiV1UploadFilesEditFilePost(
        fileID: fileID, userID: userID, body: body);
  }

  ///Edit Bus Files
  ///@param fileID
  ///@param userID
  @Post(
    path: '/api/v1/uploadFiles/edit_file',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1UploadFilesEditFilePost({
    @Query('fileID') required String? fileID,
    @Query('userID') required String? userID,
    @Part() required BodyEditBusFilesApiV1UploadFilesEditFilePost body,
  });

  ///Added Sharewith Bus
  ///@param fileID
  ///@param userID
  ///@param sharewith
  Future<chopper.Response> apiV1UploadFilesAddSharewithFilePost({
    required String? fileID,
    required String? userID,
    required String? sharewith,
  }) {
    return _apiV1UploadFilesAddSharewithFilePost(
        fileID: fileID, userID: userID, sharewith: sharewith);
  }

  ///Added Sharewith Bus
  ///@param fileID
  ///@param userID
  ///@param sharewith
  @Post(
    path: '/api/v1/uploadFiles/add_sharewith_file',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1UploadFilesAddSharewithFilePost({
    @Query('fileID') required String? fileID,
    @Query('userID') required String? userID,
    @Query('sharewith') required String? sharewith,
  });

  ///Add Addons
  Future<chopper.Response> apiV1AddonAddPost({required AddonsIn? body}) {
    return _apiV1AddonAddPost(body: body);
  }

  ///Add Addons
  @Post(
    path: '/api/v1/addon/add',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AddonAddPost(
      {@Body() required AddonsIn? body});

  ///Get All Addons
  ///@param plan_id
  Future<chopper.Response> apiV1AddonsGet({int? planId}) {
    return _apiV1AddonsGet(planId: planId);
  }

  ///Get All Addons
  ///@param plan_id
  @Get(path: '/api/v1/addons')
  Future<chopper.Response> _apiV1AddonsGet({@Query('plan_id') int? planId});

  ///Get Single Addon
  ///@param addon_id
  Future<chopper.Response> apiV1AddonAddonIdGet({required int? addonId}) {
    return _apiV1AddonAddonIdGet(addonId: addonId);
  }

  ///Get Single Addon
  ///@param addon_id
  @Get(path: '/api/v1/addon/{addon_id}')
  Future<chopper.Response> _apiV1AddonAddonIdGet(
      {@Path('addon_id') required int? addonId});

  ///Update An Addons
  ///@param addon_id
  Future<chopper.Response> apiV1AddonUpdateAddonIdPut({
    required int? addonId,
    required AddonUpdate? body,
  }) {
    return _apiV1AddonUpdateAddonIdPut(addonId: addonId, body: body);
  }

  ///Update An Addons
  ///@param addon_id
  @Put(
    path: '/api/v1/addon/update/{addon_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AddonUpdateAddonIdPut({
    @Path('addon_id') required int? addonId,
    @Body() required AddonUpdate? body,
  });

  ///Delete An Addons
  ///@param addon_id
  Future<chopper.Response<RequestResponse>> apiV1AddonDeleteAddonIdDelete(
      {required int? addonId}) {
    generatedMapping.putIfAbsent(
        RequestResponse, () => RequestResponse.fromJsonFactory);

    return _apiV1AddonDeleteAddonIdDelete(addonId: addonId);
  }

  ///Delete An Addons
  ///@param addon_id
  @Delete(path: '/api/v1/addon/delete/{addon_id}')
  Future<chopper.Response<RequestResponse>> _apiV1AddonDeleteAddonIdDelete(
      {@Path('addon_id') required int? addonId});

  ///Add A Site
  Future<chopper.Response> apiV1SiteAddPost({required SiteIn? body}) {
    return _apiV1SiteAddPost(body: body);
  }

  ///Add A Site
  @Post(
    path: '/api/v1/site/add',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1SiteAddPost({@Body() required SiteIn? body});

  ///Get All Site
  Future<chopper.Response<List<SiteOut>>> apiV1SitesGet() {
    generatedMapping.putIfAbsent(SiteOut, () => SiteOut.fromJsonFactory);

    return _apiV1SitesGet();
  }

  ///Get All Site
  @Get(path: '/api/v1/sites')
  Future<chopper.Response<List<SiteOut>>> _apiV1SitesGet();

  ///Get A Site
  ///@param site_id
  Future<chopper.Response<SiteOut>> apiV1SiteSiteIdGet({required int? siteId}) {
    generatedMapping.putIfAbsent(SiteOut, () => SiteOut.fromJsonFactory);

    return _apiV1SiteSiteIdGet(siteId: siteId);
  }

  ///Get A Site
  ///@param site_id
  @Get(path: '/api/v1/site/{site_id}')
  Future<chopper.Response<SiteOut>> _apiV1SiteSiteIdGet(
      {@Path('site_id') required int? siteId});

  ///Update A Site
  ///@param site_id
  Future<chopper.Response> apiV1SiteUpdateSiteIdPatch({
    required int? siteId,
    required SiteEdit? body,
  }) {
    return _apiV1SiteUpdateSiteIdPatch(siteId: siteId, body: body);
  }

  ///Update A Site
  ///@param site_id
  @Patch(
    path: '/api/v1/site/update/{site_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1SiteUpdateSiteIdPatch({
    @Path('site_id') required int? siteId,
    @Body() required SiteEdit? body,
  });

  ///Deactivate A Site
  ///@param site_id
  Future<chopper.Response> apiV1SiteDeactivateSiteIdPatch(
      {required int? siteId}) {
    return _apiV1SiteDeactivateSiteIdPatch(siteId: siteId);
  }

  ///Deactivate A Site
  ///@param site_id
  @Patch(
    path: '/api/v1/site/deactivate/{site_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1SiteDeactivateSiteIdPatch(
      {@Path('site_id') required int? siteId});

  ///Reactivate A Site
  ///@param site_id
  Future<chopper.Response> apiV1SiteReactivateSiteIdPatch(
      {required int? siteId}) {
    return _apiV1SiteReactivateSiteIdPatch(siteId: siteId);
  }

  ///Reactivate A Site
  ///@param site_id
  @Patch(
    path: '/api/v1/site/reactivate/{site_id}',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1SiteReactivateSiteIdPatch(
      {@Path('site_id') required int? siteId});

  ///Add An About
  Future<chopper.Response> apiV1AboutAddPost({required AddAbout? body}) {
    return _apiV1AboutAddPost(body: body);
  }

  ///Add An About
  @Post(
    path: '/api/v1/about/add',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AboutAddPost(
      {@Body() required AddAbout? body});

  ///Get An About
  Future<chopper.Response> apiV1AboutGetGet() {
    return _apiV1AboutGetGet();
  }

  ///Get An About
  @Get(path: '/api/v1/about/get')
  Future<chopper.Response> _apiV1AboutGetGet();

  ///Update An About
  Future<chopper.Response> apiV1AboutUpdatePatch({required AddAbout? body}) {
    return _apiV1AboutUpdatePatch(body: body);
  }

  ///Update An About
  @Patch(
    path: '/api/v1/about/update',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AboutUpdatePatch(
      {@Body() required AddAbout? body});

  ///Root
  Future<chopper.Response> apiV1Get() {
    return _apiV1Get();
  }

  ///Root
  @Get(path: '/api/v1')
  Future<chopper.Response> _apiV1Get();

  ///Task Example
  Future<chopper.Response> apiV1TaskGet() {
    return _apiV1TaskGet();
  }

  ///Task Example
  @Get(path: '/api/v1/task')
  Future<chopper.Response> _apiV1TaskGet();

  ///Create Super User
  Future<chopper.Response> apiV1AuthPyliAdminGet() {
    return _apiV1AuthPyliAdminGet();
  }

  ///Create Super User
  @Get(path: '/api/v1/auth/pyli_admin')
  Future<chopper.Response> _apiV1AuthPyliAdminGet();

  ///Get All Agencies
  Future<chopper.Response<List<AgencyOut>>> apiV1AgencyGet() {
    generatedMapping.putIfAbsent(AgencyOut, () => AgencyOut.fromJsonFactory);

    return _apiV1AgencyGet();
  }

  ///Get All Agencies
  @Get(path: '/api/v1/agency')
  Future<chopper.Response<List<AgencyOut>>> _apiV1AgencyGet();

  ///Clean Database
  Future<chopper.Response> apiV1AuthLearDatabaseNoAuthPost() {
    return _apiV1AuthLearDatabaseNoAuthPost();
  }

  ///Clean Database
  @Post(
    path: '/api/v1/auth/lear_database_no_auth',
    optionalBody: true,
  )
  Future<chopper.Response> _apiV1AuthLearDatabaseNoAuthPost();

  ///Send Email
  ///@param email
  Future<chopper.Response> apiSendGet({required String? email}) {
    return _apiSendGet(email: email);
  }

  ///Send Email
  ///@param email
  @Get(path: '/api/send')
  Future<chopper.Response> _apiSendGet(
      {@Query('email') required String? email});
}

@JsonSerializable(explicitToJson: true)
class AddAbout {
  AddAbout({
    this.email,
    this.number,
    this.address,
    this.facebook,
    this.twitter,
    this.instagram,
    this.logo,
    this.termsAndCondition,
  });

  factory AddAbout.fromJson(Map<String, dynamic> json) =>
      _$AddAboutFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'number')
  final String? number;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'facebook')
  final String? facebook;
  @JsonKey(name: 'twitter')
  final String? twitter;
  @JsonKey(name: 'instagram')
  final String? instagram;
  @JsonKey(name: 'logo')
  final String? logo;
  @JsonKey(name: 'terms_and_condition')
  final String? termsAndCondition;
  static const fromJsonFactory = _$AddAboutFromJson;
  static const toJsonFactory = _$AddAboutToJson;
  Map<String, dynamic> toJson() => _$AddAboutToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddAbout &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.facebook, facebook) ||
                const DeepCollectionEquality()
                    .equals(other.facebook, facebook)) &&
            (identical(other.twitter, twitter) ||
                const DeepCollectionEquality()
                    .equals(other.twitter, twitter)) &&
            (identical(other.instagram, instagram) ||
                const DeepCollectionEquality()
                    .equals(other.instagram, instagram)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.termsAndCondition, termsAndCondition) ||
                const DeepCollectionEquality()
                    .equals(other.termsAndCondition, termsAndCondition)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(facebook) ^
      const DeepCollectionEquality().hash(twitter) ^
      const DeepCollectionEquality().hash(instagram) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(termsAndCondition) ^
      runtimeType.hashCode;
}

extension $AddAboutExtension on AddAbout {
  AddAbout copyWith(
      {String? email,
      String? number,
      String? address,
      String? facebook,
      String? twitter,
      String? instagram,
      String? logo,
      String? termsAndCondition}) {
    return AddAbout(
        email: email ?? this.email,
        number: number ?? this.number,
        address: address ?? this.address,
        facebook: facebook ?? this.facebook,
        twitter: twitter ?? this.twitter,
        instagram: instagram ?? this.instagram,
        logo: logo ?? this.logo,
        termsAndCondition: termsAndCondition ?? this.termsAndCondition);
  }

  AddAbout copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<String?>? number,
      Wrapped<String?>? address,
      Wrapped<String?>? facebook,
      Wrapped<String?>? twitter,
      Wrapped<String?>? instagram,
      Wrapped<String?>? logo,
      Wrapped<String?>? termsAndCondition}) {
    return AddAbout(
        email: (email != null ? email.value : this.email),
        number: (number != null ? number.value : this.number),
        address: (address != null ? address.value : this.address),
        facebook: (facebook != null ? facebook.value : this.facebook),
        twitter: (twitter != null ? twitter.value : this.twitter),
        instagram: (instagram != null ? instagram.value : this.instagram),
        logo: (logo != null ? logo.value : this.logo),
        termsAndCondition: (termsAndCondition != null
            ? termsAndCondition.value
            : this.termsAndCondition));
  }
}

@JsonSerializable(explicitToJson: true)
class AddonUpdate {
  AddonUpdate({
    this.name,
    this.cost,
    this.picture,
    this.autoRenewal,
    this.visibility,
    this.required,
  });

  factory AddonUpdate.fromJson(Map<String, dynamic> json) =>
      _$AddonUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'cost')
  final double? cost;
  @JsonKey(name: 'picture')
  final String? picture;
  @JsonKey(name: 'auto_renewal')
  final bool? autoRenewal;
  @JsonKey(name: 'visibility')
  final bool? visibility;
  @JsonKey(name: 'required')
  final bool? required;
  static const fromJsonFactory = _$AddonUpdateFromJson;
  static const toJsonFactory = _$AddonUpdateToJson;
  Map<String, dynamic> toJson() => _$AddonUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddonUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.autoRenewal, autoRenewal) ||
                const DeepCollectionEquality()
                    .equals(other.autoRenewal, autoRenewal)) &&
            (identical(other.visibility, visibility) ||
                const DeepCollectionEquality()
                    .equals(other.visibility, visibility)) &&
            (identical(other.required, required) ||
                const DeepCollectionEquality()
                    .equals(other.required, required)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(autoRenewal) ^
      const DeepCollectionEquality().hash(visibility) ^
      const DeepCollectionEquality().hash(required) ^
      runtimeType.hashCode;
}

extension $AddonUpdateExtension on AddonUpdate {
  AddonUpdate copyWith(
      {String? name,
      double? cost,
      String? picture,
      bool? autoRenewal,
      bool? visibility,
      bool? required}) {
    return AddonUpdate(
        name: name ?? this.name,
        cost: cost ?? this.cost,
        picture: picture ?? this.picture,
        autoRenewal: autoRenewal ?? this.autoRenewal,
        visibility: visibility ?? this.visibility,
        required: required ?? this.required);
  }

  AddonUpdate copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<double?>? cost,
      Wrapped<String?>? picture,
      Wrapped<bool?>? autoRenewal,
      Wrapped<bool?>? visibility,
      Wrapped<bool?>? required}) {
    return AddonUpdate(
        name: (name != null ? name.value : this.name),
        cost: (cost != null ? cost.value : this.cost),
        picture: (picture != null ? picture.value : this.picture),
        autoRenewal:
            (autoRenewal != null ? autoRenewal.value : this.autoRenewal),
        visibility: (visibility != null ? visibility.value : this.visibility),
        required: (required != null ? required.value : this.required));
  }
}

@JsonSerializable(explicitToJson: true)
class AddonsIn {
  AddonsIn({
    required this.planId,
    required this.name,
    required this.cost,
    required this.picture,
    required this.autoRenewal,
    required this.visibility,
    required this.required,
  });

  factory AddonsIn.fromJson(Map<String, dynamic> json) =>
      _$AddonsInFromJson(json);

  @JsonKey(name: 'plan_id')
  final int planId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'cost')
  final double cost;
  @JsonKey(name: 'picture')
  final String picture;
  @JsonKey(name: 'auto_renewal')
  final bool autoRenewal;
  @JsonKey(name: 'visibility')
  final bool visibility;
  @JsonKey(name: 'required')
  final bool required;
  static const fromJsonFactory = _$AddonsInFromJson;
  static const toJsonFactory = _$AddonsInToJson;
  Map<String, dynamic> toJson() => _$AddonsInToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddonsIn &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.autoRenewal, autoRenewal) ||
                const DeepCollectionEquality()
                    .equals(other.autoRenewal, autoRenewal)) &&
            (identical(other.visibility, visibility) ||
                const DeepCollectionEquality()
                    .equals(other.visibility, visibility)) &&
            (identical(other.required, required) ||
                const DeepCollectionEquality()
                    .equals(other.required, required)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(autoRenewal) ^
      const DeepCollectionEquality().hash(visibility) ^
      const DeepCollectionEquality().hash(required) ^
      runtimeType.hashCode;
}

extension $AddonsInExtension on AddonsIn {
  AddonsIn copyWith(
      {int? planId,
      String? name,
      double? cost,
      String? picture,
      bool? autoRenewal,
      bool? visibility,
      bool? required}) {
    return AddonsIn(
        planId: planId ?? this.planId,
        name: name ?? this.name,
        cost: cost ?? this.cost,
        picture: picture ?? this.picture,
        autoRenewal: autoRenewal ?? this.autoRenewal,
        visibility: visibility ?? this.visibility,
        required: required ?? this.required);
  }

  AddonsIn copyWithWrapped(
      {Wrapped<int>? planId,
      Wrapped<String>? name,
      Wrapped<double>? cost,
      Wrapped<String>? picture,
      Wrapped<bool>? autoRenewal,
      Wrapped<bool>? visibility,
      Wrapped<bool>? required}) {
    return AddonsIn(
        planId: (planId != null ? planId.value : this.planId),
        name: (name != null ? name.value : this.name),
        cost: (cost != null ? cost.value : this.cost),
        picture: (picture != null ? picture.value : this.picture),
        autoRenewal:
            (autoRenewal != null ? autoRenewal.value : this.autoRenewal),
        visibility: (visibility != null ? visibility.value : this.visibility),
        required: (required != null ? required.value : this.required));
  }
}

@JsonSerializable(explicitToJson: true)
class AdminCustomerImport {
  AdminCustomerImport({
    required this.businessId,
    required this.customerData,
  });

  factory AdminCustomerImport.fromJson(Map<String, dynamic> json) =>
      _$AdminCustomerImportFromJson(json);

  @JsonKey(name: 'business_id')
  final int businessId;
  @JsonKey(name: 'customer_data', defaultValue: <CustomerImport>[])
  final List<CustomerImport> customerData;
  static const fromJsonFactory = _$AdminCustomerImportFromJson;
  static const toJsonFactory = _$AdminCustomerImportToJson;
  Map<String, dynamic> toJson() => _$AdminCustomerImportToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminCustomerImport &&
            (identical(other.businessId, businessId) ||
                const DeepCollectionEquality()
                    .equals(other.businessId, businessId)) &&
            (identical(other.customerData, customerData) ||
                const DeepCollectionEquality()
                    .equals(other.customerData, customerData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessId) ^
      const DeepCollectionEquality().hash(customerData) ^
      runtimeType.hashCode;
}

extension $AdminCustomerImportExtension on AdminCustomerImport {
  AdminCustomerImport copyWith(
      {int? businessId, List<CustomerImport>? customerData}) {
    return AdminCustomerImport(
        businessId: businessId ?? this.businessId,
        customerData: customerData ?? this.customerData);
  }

  AdminCustomerImport copyWithWrapped(
      {Wrapped<int>? businessId, Wrapped<List<CustomerImport>>? customerData}) {
    return AdminCustomerImport(
        businessId: (businessId != null ? businessId.value : this.businessId),
        customerData:
            (customerData != null ? customerData.value : this.customerData));
  }
}

@JsonSerializable(explicitToJson: true)
class AdminEdit {
  AdminEdit({
    this.firstname,
    this.lastname,
    this.phone,
    this.profilePicture,
    this.address,
    this.deviceTokens,
  });

  factory AdminEdit.fromJson(Map<String, dynamic> json) =>
      _$AdminEditFromJson(json);

  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'profilePicture')
  final String? profilePicture;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'deviceTokens', defaultValue: <String>[])
  final List<String>? deviceTokens;
  static const fromJsonFactory = _$AdminEditFromJson;
  static const toJsonFactory = _$AdminEditToJson;
  Map<String, dynamic> toJson() => _$AdminEditToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminEdit &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.deviceTokens, deviceTokens) ||
                const DeepCollectionEquality()
                    .equals(other.deviceTokens, deviceTokens)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(deviceTokens) ^
      runtimeType.hashCode;
}

extension $AdminEditExtension on AdminEdit {
  AdminEdit copyWith(
      {String? firstname,
      String? lastname,
      String? phone,
      String? profilePicture,
      String? address,
      List<String>? deviceTokens}) {
    return AdminEdit(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        phone: phone ?? this.phone,
        profilePicture: profilePicture ?? this.profilePicture,
        address: address ?? this.address,
        deviceTokens: deviceTokens ?? this.deviceTokens);
  }

  AdminEdit copyWithWrapped(
      {Wrapped<String?>? firstname,
      Wrapped<String?>? lastname,
      Wrapped<String?>? phone,
      Wrapped<String?>? profilePicture,
      Wrapped<String?>? address,
      Wrapped<List<String>?>? deviceTokens}) {
    return AdminEdit(
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        phone: (phone != null ? phone.value : this.phone),
        profilePicture: (profilePicture != null
            ? profilePicture.value
            : this.profilePicture),
        address: (address != null ? address.value : this.address),
        deviceTokens:
            (deviceTokens != null ? deviceTokens.value : this.deviceTokens));
  }
}

@JsonSerializable(explicitToJson: true)
class AdminRegister {
  AdminRegister({
    required this.email,
    required this.password,
    this.firstname,
    this.lastname,
    this.profilePicture,
    this.phone,
    this.address,
  });

  factory AdminRegister.fromJson(Map<String, dynamic> json) =>
      _$AdminRegisterFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'profilePicture')
  final String? profilePicture;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'address')
  final String? address;
  static const fromJsonFactory = _$AdminRegisterFromJson;
  static const toJsonFactory = _$AdminRegisterToJson;
  Map<String, dynamic> toJson() => _$AdminRegisterToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminRegister &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(address) ^
      runtimeType.hashCode;
}

extension $AdminRegisterExtension on AdminRegister {
  AdminRegister copyWith(
      {String? email,
      String? password,
      String? firstname,
      String? lastname,
      String? profilePicture,
      String? phone,
      String? address}) {
    return AdminRegister(
        email: email ?? this.email,
        password: password ?? this.password,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        profilePicture: profilePicture ?? this.profilePicture,
        phone: phone ?? this.phone,
        address: address ?? this.address);
  }

  AdminRegister copyWithWrapped(
      {Wrapped<String>? email,
      Wrapped<String>? password,
      Wrapped<String?>? firstname,
      Wrapped<String?>? lastname,
      Wrapped<String?>? profilePicture,
      Wrapped<String?>? phone,
      Wrapped<String?>? address}) {
    return AdminRegister(
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password),
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        profilePicture: (profilePicture != null
            ? profilePicture.value
            : this.profilePicture),
        phone: (phone != null ? phone.value : this.phone),
        address: (address != null ? address.value : this.address));
  }
}

@JsonSerializable(explicitToJson: true)
class AgencyIn {
  AgencyIn({
    required this.name,
    required this.description,
    required this.enablesEFilling,
    required this.fillingFee,
  });

  factory AgencyIn.fromJson(Map<String, dynamic> json) =>
      _$AgencyInFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'enablesEFilling')
  final bool enablesEFilling;
  @JsonKey(name: 'fillingFee')
  final double fillingFee;
  static const fromJsonFactory = _$AgencyInFromJson;
  static const toJsonFactory = _$AgencyInToJson;
  Map<String, dynamic> toJson() => _$AgencyInToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AgencyIn &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.enablesEFilling, enablesEFilling) ||
                const DeepCollectionEquality()
                    .equals(other.enablesEFilling, enablesEFilling)) &&
            (identical(other.fillingFee, fillingFee) ||
                const DeepCollectionEquality()
                    .equals(other.fillingFee, fillingFee)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(enablesEFilling) ^
      const DeepCollectionEquality().hash(fillingFee) ^
      runtimeType.hashCode;
}

extension $AgencyInExtension on AgencyIn {
  AgencyIn copyWith(
      {String? name,
      String? description,
      bool? enablesEFilling,
      double? fillingFee}) {
    return AgencyIn(
        name: name ?? this.name,
        description: description ?? this.description,
        enablesEFilling: enablesEFilling ?? this.enablesEFilling,
        fillingFee: fillingFee ?? this.fillingFee);
  }

  AgencyIn copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<bool>? enablesEFilling,
      Wrapped<double>? fillingFee}) {
    return AgencyIn(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        enablesEFilling: (enablesEFilling != null
            ? enablesEFilling.value
            : this.enablesEFilling),
        fillingFee: (fillingFee != null ? fillingFee.value : this.fillingFee));
  }
}

@JsonSerializable(explicitToJson: true)
class AgencyOut {
  AgencyOut({
    required this.id,
    required this.name,
    required this.description,
    required this.enablesEFilling,
    required this.fillingFee,
    required this.contractStatus,
    this.createdAt,
    this.updatedAt,
  });

  factory AgencyOut.fromJson(Map<String, dynamic> json) =>
      _$AgencyOutFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'enablesEFilling')
  final bool enablesEFilling;
  @JsonKey(name: 'fillingFee')
  final double fillingFee;
  @JsonKey(name: 'contractStatus')
  final String contractStatus;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$AgencyOutFromJson;
  static const toJsonFactory = _$AgencyOutToJson;
  Map<String, dynamic> toJson() => _$AgencyOutToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AgencyOut &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.enablesEFilling, enablesEFilling) ||
                const DeepCollectionEquality()
                    .equals(other.enablesEFilling, enablesEFilling)) &&
            (identical(other.fillingFee, fillingFee) ||
                const DeepCollectionEquality()
                    .equals(other.fillingFee, fillingFee)) &&
            (identical(other.contractStatus, contractStatus) ||
                const DeepCollectionEquality()
                    .equals(other.contractStatus, contractStatus)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(enablesEFilling) ^
      const DeepCollectionEquality().hash(fillingFee) ^
      const DeepCollectionEquality().hash(contractStatus) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AgencyOutExtension on AgencyOut {
  AgencyOut copyWith(
      {int? id,
      String? name,
      String? description,
      bool? enablesEFilling,
      double? fillingFee,
      String? contractStatus,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return AgencyOut(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        enablesEFilling: enablesEFilling ?? this.enablesEFilling,
        fillingFee: fillingFee ?? this.fillingFee,
        contractStatus: contractStatus ?? this.contractStatus,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  AgencyOut copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<bool>? enablesEFilling,
      Wrapped<double>? fillingFee,
      Wrapped<String>? contractStatus,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt}) {
    return AgencyOut(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        enablesEFilling: (enablesEFilling != null
            ? enablesEFilling.value
            : this.enablesEFilling),
        fillingFee: (fillingFee != null ? fillingFee.value : this.fillingFee),
        contractStatus: (contractStatus != null
            ? contractStatus.value
            : this.contractStatus),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyEditBusFilesApiV1UploadFilesEditFilePost {
  BodyEditBusFilesApiV1UploadFilesEditFilePost({
    required this.file,
  });

  factory BodyEditBusFilesApiV1UploadFilesEditFilePost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyEditBusFilesApiV1UploadFilesEditFilePostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyEditBusFilesApiV1UploadFilesEditFilePostFromJson;
  static const toJsonFactory =
      _$BodyEditBusFilesApiV1UploadFilesEditFilePostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyEditBusFilesApiV1UploadFilesEditFilePostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyEditBusFilesApiV1UploadFilesEditFilePost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyEditBusFilesApiV1UploadFilesEditFilePostExtension
    on BodyEditBusFilesApiV1UploadFilesEditFilePost {
  BodyEditBusFilesApiV1UploadFilesEditFilePost copyWith({String? file}) {
    return BodyEditBusFilesApiV1UploadFilesEditFilePost(
        file: file ?? this.file);
  }

  BodyEditBusFilesApiV1UploadFilesEditFilePost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyEditBusFilesApiV1UploadFilesEditFilePost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyLoginApiV1AuthLoginPost {
  BodyLoginApiV1AuthLoginPost({
    this.grantType,
    required this.username,
    required this.password,
    this.scope,
    this.clientId,
    this.clientSecret,
  });

  factory BodyLoginApiV1AuthLoginPost.fromJson(Map<String, dynamic> json) =>
      _$BodyLoginApiV1AuthLoginPostFromJson(json);

  @JsonKey(name: 'grant_type')
  final String? grantType;
  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'scope')
  final String? scope;
  @JsonKey(name: 'client_id')
  final String? clientId;
  @JsonKey(name: 'client_secret')
  final String? clientSecret;
  static const fromJsonFactory = _$BodyLoginApiV1AuthLoginPostFromJson;
  static const toJsonFactory = _$BodyLoginApiV1AuthLoginPostToJson;
  Map<String, dynamic> toJson() => _$BodyLoginApiV1AuthLoginPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyLoginApiV1AuthLoginPost &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.clientSecret, clientSecret) ||
                const DeepCollectionEquality()
                    .equals(other.clientSecret, clientSecret)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(grantType) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(clientSecret) ^
      runtimeType.hashCode;
}

extension $BodyLoginApiV1AuthLoginPostExtension on BodyLoginApiV1AuthLoginPost {
  BodyLoginApiV1AuthLoginPost copyWith(
      {String? grantType,
      String? username,
      String? password,
      String? scope,
      String? clientId,
      String? clientSecret}) {
    return BodyLoginApiV1AuthLoginPost(
        grantType: grantType ?? this.grantType,
        username: username ?? this.username,
        password: password ?? this.password,
        scope: scope ?? this.scope,
        clientId: clientId ?? this.clientId,
        clientSecret: clientSecret ?? this.clientSecret);
  }

  BodyLoginApiV1AuthLoginPost copyWithWrapped(
      {Wrapped<String?>? grantType,
      Wrapped<String>? username,
      Wrapped<String>? password,
      Wrapped<String?>? scope,
      Wrapped<String?>? clientId,
      Wrapped<String?>? clientSecret}) {
    return BodyLoginApiV1AuthLoginPost(
        grantType: (grantType != null ? grantType.value : this.grantType),
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        scope: (scope != null ? scope.value : this.scope),
        clientId: (clientId != null ? clientId.value : this.clientId),
        clientSecret:
            (clientSecret != null ? clientSecret.value : this.clientSecret));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyUploadSignedContractApiV1ContractUploadSignedContractPost {
  BodyUploadSignedContractApiV1ContractUploadSignedContractPost({
    required this.file,
  });

  factory BodyUploadSignedContractApiV1ContractUploadSignedContractPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyUploadSignedContractApiV1ContractUploadSignedContractPostFromJson(
          json);

  @JsonKey(name: 'file')
  final String file;
  static const fromJsonFactory =
      _$BodyUploadSignedContractApiV1ContractUploadSignedContractPostFromJson;
  static const toJsonFactory =
      _$BodyUploadSignedContractApiV1ContractUploadSignedContractPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyUploadSignedContractApiV1ContractUploadSignedContractPostToJson(
          this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyUploadSignedContractApiV1ContractUploadSignedContractPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $BodyUploadSignedContractApiV1ContractUploadSignedContractPostExtension
    on BodyUploadSignedContractApiV1ContractUploadSignedContractPost {
  BodyUploadSignedContractApiV1ContractUploadSignedContractPost copyWith(
      {String? file}) {
    return BodyUploadSignedContractApiV1ContractUploadSignedContractPost(
        file: file ?? this.file);
  }

  BodyUploadSignedContractApiV1ContractUploadSignedContractPost copyWithWrapped(
      {Wrapped<String>? file}) {
    return BodyUploadSignedContractApiV1ContractUploadSignedContractPost(
        file: (file != null ? file.value : this.file));
  }
}

@JsonSerializable(explicitToJson: true)
class BodyUploadedFileApiV1UploadFilesUploadedFilesPost {
  BodyUploadedFileApiV1UploadFilesUploadedFilesPost({
    required this.file,
    this.sharedWith,
  });

  factory BodyUploadedFileApiV1UploadFilesUploadedFilesPost.fromJson(
          Map<String, dynamic> json) =>
      _$BodyUploadedFileApiV1UploadFilesUploadedFilesPostFromJson(json);

  @JsonKey(name: 'file')
  final String file;
  @JsonKey(name: 'sharedWith', defaultValue: <String>[])
  final List<String>? sharedWith;
  static const fromJsonFactory =
      _$BodyUploadedFileApiV1UploadFilesUploadedFilesPostFromJson;
  static const toJsonFactory =
      _$BodyUploadedFileApiV1UploadFilesUploadedFilesPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyUploadedFileApiV1UploadFilesUploadedFilesPostToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyUploadedFileApiV1UploadFilesUploadedFilesPost &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.sharedWith, sharedWith) ||
                const DeepCollectionEquality()
                    .equals(other.sharedWith, sharedWith)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(sharedWith) ^
      runtimeType.hashCode;
}

extension $BodyUploadedFileApiV1UploadFilesUploadedFilesPostExtension
    on BodyUploadedFileApiV1UploadFilesUploadedFilesPost {
  BodyUploadedFileApiV1UploadFilesUploadedFilesPost copyWith(
      {String? file, List<String>? sharedWith}) {
    return BodyUploadedFileApiV1UploadFilesUploadedFilesPost(
        file: file ?? this.file, sharedWith: sharedWith ?? this.sharedWith);
  }

  BodyUploadedFileApiV1UploadFilesUploadedFilesPost copyWithWrapped(
      {Wrapped<String>? file, Wrapped<List<String>?>? sharedWith}) {
    return BodyUploadedFileApiV1UploadFilesUploadedFilesPost(
        file: (file != null ? file.value : this.file),
        sharedWith: (sharedWith != null ? sharedWith.value : this.sharedWith));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessContractTemplate {
  BusinessContractTemplate({
    required this.businessID,
    required this.body,
  });

  factory BusinessContractTemplate.fromJson(Map<String, dynamic> json) =>
      _$BusinessContractTemplateFromJson(json);

  @JsonKey(name: 'businessID')
  final int businessID;
  @JsonKey(name: 'body')
  final String body;
  static const fromJsonFactory = _$BusinessContractTemplateFromJson;
  static const toJsonFactory = _$BusinessContractTemplateToJson;
  Map<String, dynamic> toJson() => _$BusinessContractTemplateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusinessContractTemplate &&
            (identical(other.businessID, businessID) ||
                const DeepCollectionEquality()
                    .equals(other.businessID, businessID)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessID) ^
      const DeepCollectionEquality().hash(body) ^
      runtimeType.hashCode;
}

extension $BusinessContractTemplateExtension on BusinessContractTemplate {
  BusinessContractTemplate copyWith({int? businessID, String? body}) {
    return BusinessContractTemplate(
        businessID: businessID ?? this.businessID, body: body ?? this.body);
  }

  BusinessContractTemplate copyWithWrapped(
      {Wrapped<int>? businessID, Wrapped<String>? body}) {
    return BusinessContractTemplate(
        businessID: (businessID != null ? businessID.value : this.businessID),
        body: (body != null ? body.value : this.body));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessCustomerRegister {
  BusinessCustomerRegister({
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    this.phone,
    this.type,
    this.brand,
    this.idNumber,
    this.address,
    this.permitNumber,
    this.manufacturer,
    this.level,
    this.agencyId,
    this.isOptedInForMarketing,
    this.mailStreet,
    this.mailCity,
    this.mailState,
    this.mailZip,
  });

  factory BusinessCustomerRegister.fromJson(Map<String, dynamic> json) =>
      _$BusinessCustomerRegisterFromJson(json);

  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'brand')
  final String? brand;
  @JsonKey(name: 'idNumber')
  final String? idNumber;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'permitNumber')
  final String? permitNumber;
  @JsonKey(name: 'manufacturer')
  final String? manufacturer;
  @JsonKey(name: 'level')
  final String? level;
  @JsonKey(name: 'agency_id')
  final int? agencyId;
  @JsonKey(name: 'isOptedInForMarketing')
  final bool? isOptedInForMarketing;
  @JsonKey(name: 'mailStreet')
  final String? mailStreet;
  @JsonKey(name: 'mailCity')
  final String? mailCity;
  @JsonKey(name: 'mailState')
  final String? mailState;
  @JsonKey(name: 'mailZip')
  final String? mailZip;
  static const fromJsonFactory = _$BusinessCustomerRegisterFromJson;
  static const toJsonFactory = _$BusinessCustomerRegisterToJson;
  Map<String, dynamic> toJson() => _$BusinessCustomerRegisterToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusinessCustomerRegister &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.idNumber, idNumber) ||
                const DeepCollectionEquality()
                    .equals(other.idNumber, idNumber)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.permitNumber, permitNumber) ||
                const DeepCollectionEquality()
                    .equals(other.permitNumber, permitNumber)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.agencyId, agencyId) ||
                const DeepCollectionEquality()
                    .equals(other.agencyId, agencyId)) &&
            (identical(other.isOptedInForMarketing, isOptedInForMarketing) ||
                const DeepCollectionEquality().equals(
                    other.isOptedInForMarketing, isOptedInForMarketing)) &&
            (identical(other.mailStreet, mailStreet) ||
                const DeepCollectionEquality()
                    .equals(other.mailStreet, mailStreet)) &&
            (identical(other.mailCity, mailCity) ||
                const DeepCollectionEquality()
                    .equals(other.mailCity, mailCity)) &&
            (identical(other.mailState, mailState) ||
                const DeepCollectionEquality()
                    .equals(other.mailState, mailState)) &&
            (identical(other.mailZip, mailZip) ||
                const DeepCollectionEquality().equals(other.mailZip, mailZip)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(idNumber) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(permitNumber) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(agencyId) ^
      const DeepCollectionEquality().hash(isOptedInForMarketing) ^
      const DeepCollectionEquality().hash(mailStreet) ^
      const DeepCollectionEquality().hash(mailCity) ^
      const DeepCollectionEquality().hash(mailState) ^
      const DeepCollectionEquality().hash(mailZip) ^
      runtimeType.hashCode;
}

extension $BusinessCustomerRegisterExtension on BusinessCustomerRegister {
  BusinessCustomerRegister copyWith(
      {String? firstname,
      String? lastname,
      String? email,
      String? password,
      String? phone,
      String? type,
      String? brand,
      String? idNumber,
      String? address,
      String? permitNumber,
      String? manufacturer,
      String? level,
      int? agencyId,
      bool? isOptedInForMarketing,
      String? mailStreet,
      String? mailCity,
      String? mailState,
      String? mailZip}) {
    return BusinessCustomerRegister(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        type: type ?? this.type,
        brand: brand ?? this.brand,
        idNumber: idNumber ?? this.idNumber,
        address: address ?? this.address,
        permitNumber: permitNumber ?? this.permitNumber,
        manufacturer: manufacturer ?? this.manufacturer,
        level: level ?? this.level,
        agencyId: agencyId ?? this.agencyId,
        isOptedInForMarketing:
            isOptedInForMarketing ?? this.isOptedInForMarketing,
        mailStreet: mailStreet ?? this.mailStreet,
        mailCity: mailCity ?? this.mailCity,
        mailState: mailState ?? this.mailState,
        mailZip: mailZip ?? this.mailZip);
  }

  BusinessCustomerRegister copyWithWrapped(
      {Wrapped<String>? firstname,
      Wrapped<String>? lastname,
      Wrapped<String>? email,
      Wrapped<String>? password,
      Wrapped<String?>? phone,
      Wrapped<String?>? type,
      Wrapped<String?>? brand,
      Wrapped<String?>? idNumber,
      Wrapped<String?>? address,
      Wrapped<String?>? permitNumber,
      Wrapped<String?>? manufacturer,
      Wrapped<String?>? level,
      Wrapped<int?>? agencyId,
      Wrapped<bool?>? isOptedInForMarketing,
      Wrapped<String?>? mailStreet,
      Wrapped<String?>? mailCity,
      Wrapped<String?>? mailState,
      Wrapped<String?>? mailZip}) {
    return BusinessCustomerRegister(
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password),
        phone: (phone != null ? phone.value : this.phone),
        type: (type != null ? type.value : this.type),
        brand: (brand != null ? brand.value : this.brand),
        idNumber: (idNumber != null ? idNumber.value : this.idNumber),
        address: (address != null ? address.value : this.address),
        permitNumber:
            (permitNumber != null ? permitNumber.value : this.permitNumber),
        manufacturer:
            (manufacturer != null ? manufacturer.value : this.manufacturer),
        level: (level != null ? level.value : this.level),
        agencyId: (agencyId != null ? agencyId.value : this.agencyId),
        isOptedInForMarketing: (isOptedInForMarketing != null
            ? isOptedInForMarketing.value
            : this.isOptedInForMarketing),
        mailStreet: (mailStreet != null ? mailStreet.value : this.mailStreet),
        mailCity: (mailCity != null ? mailCity.value : this.mailCity),
        mailState: (mailState != null ? mailState.value : this.mailState),
        mailZip: (mailZip != null ? mailZip.value : this.mailZip));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessDelete {
  BusinessDelete({
    required this.businessId,
  });

  factory BusinessDelete.fromJson(Map<String, dynamic> json) =>
      _$BusinessDeleteFromJson(json);

  @JsonKey(name: 'business_id')
  final int businessId;
  static const fromJsonFactory = _$BusinessDeleteFromJson;
  static const toJsonFactory = _$BusinessDeleteToJson;
  Map<String, dynamic> toJson() => _$BusinessDeleteToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusinessDelete &&
            (identical(other.businessId, businessId) ||
                const DeepCollectionEquality()
                    .equals(other.businessId, businessId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessId) ^ runtimeType.hashCode;
}

extension $BusinessDeleteExtension on BusinessDelete {
  BusinessDelete copyWith({int? businessId}) {
    return BusinessDelete(businessId: businessId ?? this.businessId);
  }

  BusinessDelete copyWithWrapped({Wrapped<int>? businessId}) {
    return BusinessDelete(
        businessId: (businessId != null ? businessId.value : this.businessId));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessDetails {
  BusinessDetails({
    required this.id,
    required this.userID,
    this.bannerURL,
    this.bannerDescription,
    this.about,
    this.address,
    this.url,
    this.licNumber,
    this.logo,
    this.providerName,
    this.website,
    this.bankAccountNumber,
    this.bankName,
    this.verificationStatus,
    this.createdAt,
    this.updatedAt,
    this.customers,
    this.agencies,
    this.contracts,
    this.owner,
  });

  factory BusinessDetails.fromJson(Map<String, dynamic> json) =>
      _$BusinessDetailsFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'userID')
  final int userID;
  @JsonKey(name: 'bannerURL')
  final String? bannerURL;
  @JsonKey(name: 'bannerDescription')
  final String? bannerDescription;
  @JsonKey(name: 'about')
  final String? about;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'licNumber')
  final String? licNumber;
  @JsonKey(name: 'logo')
  final String? logo;
  @JsonKey(name: 'providerName')
  final String? providerName;
  @JsonKey(name: 'website')
  final String? website;
  @JsonKey(name: 'bankAccountNumber')
  final String? bankAccountNumber;
  @JsonKey(name: 'bankName')
  final String? bankName;
  @JsonKey(name: 'verificationStatus')
  final String? verificationStatus;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'customers')
  final dynamic customers;
  @JsonKey(name: 'agencies')
  final dynamic agencies;
  @JsonKey(name: 'contracts')
  final dynamic contracts;
  @JsonKey(name: 'owner')
  final dynamic owner;
  static const fromJsonFactory = _$BusinessDetailsFromJson;
  static const toJsonFactory = _$BusinessDetailsToJson;
  Map<String, dynamic> toJson() => _$BusinessDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusinessDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.bannerURL, bannerURL) ||
                const DeepCollectionEquality()
                    .equals(other.bannerURL, bannerURL)) &&
            (identical(other.bannerDescription, bannerDescription) ||
                const DeepCollectionEquality()
                    .equals(other.bannerDescription, bannerDescription)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.licNumber, licNumber) ||
                const DeepCollectionEquality()
                    .equals(other.licNumber, licNumber)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.providerName, providerName) ||
                const DeepCollectionEquality()
                    .equals(other.providerName, providerName)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccountNumber, bankAccountNumber)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.verificationStatus, verificationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.verificationStatus, verificationStatus)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.customers, customers) ||
                const DeepCollectionEquality()
                    .equals(other.customers, customers)) &&
            (identical(other.agencies, agencies) ||
                const DeepCollectionEquality()
                    .equals(other.agencies, agencies)) &&
            (identical(other.contracts, contracts) ||
                const DeepCollectionEquality()
                    .equals(other.contracts, contracts)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(bannerURL) ^
      const DeepCollectionEquality().hash(bannerDescription) ^
      const DeepCollectionEquality().hash(about) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(licNumber) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(providerName) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(bankAccountNumber) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(verificationStatus) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(customers) ^
      const DeepCollectionEquality().hash(agencies) ^
      const DeepCollectionEquality().hash(contracts) ^
      const DeepCollectionEquality().hash(owner) ^
      runtimeType.hashCode;
}

extension $BusinessDetailsExtension on BusinessDetails {
  BusinessDetails copyWith(
      {int? id,
      int? userID,
      String? bannerURL,
      String? bannerDescription,
      String? about,
      String? address,
      String? url,
      String? licNumber,
      String? logo,
      String? providerName,
      String? website,
      String? bankAccountNumber,
      String? bankName,
      String? verificationStatus,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic customers,
      dynamic agencies,
      dynamic contracts,
      dynamic owner}) {
    return BusinessDetails(
        id: id ?? this.id,
        userID: userID ?? this.userID,
        bannerURL: bannerURL ?? this.bannerURL,
        bannerDescription: bannerDescription ?? this.bannerDescription,
        about: about ?? this.about,
        address: address ?? this.address,
        url: url ?? this.url,
        licNumber: licNumber ?? this.licNumber,
        logo: logo ?? this.logo,
        providerName: providerName ?? this.providerName,
        website: website ?? this.website,
        bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
        bankName: bankName ?? this.bankName,
        verificationStatus: verificationStatus ?? this.verificationStatus,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        customers: customers ?? this.customers,
        agencies: agencies ?? this.agencies,
        contracts: contracts ?? this.contracts,
        owner: owner ?? this.owner);
  }

  BusinessDetails copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<int>? userID,
      Wrapped<String?>? bannerURL,
      Wrapped<String?>? bannerDescription,
      Wrapped<String?>? about,
      Wrapped<String?>? address,
      Wrapped<String?>? url,
      Wrapped<String?>? licNumber,
      Wrapped<String?>? logo,
      Wrapped<String?>? providerName,
      Wrapped<String?>? website,
      Wrapped<String?>? bankAccountNumber,
      Wrapped<String?>? bankName,
      Wrapped<String?>? verificationStatus,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<dynamic>? customers,
      Wrapped<dynamic>? agencies,
      Wrapped<dynamic>? contracts,
      Wrapped<dynamic>? owner}) {
    return BusinessDetails(
        id: (id != null ? id.value : this.id),
        userID: (userID != null ? userID.value : this.userID),
        bannerURL: (bannerURL != null ? bannerURL.value : this.bannerURL),
        bannerDescription: (bannerDescription != null
            ? bannerDescription.value
            : this.bannerDescription),
        about: (about != null ? about.value : this.about),
        address: (address != null ? address.value : this.address),
        url: (url != null ? url.value : this.url),
        licNumber: (licNumber != null ? licNumber.value : this.licNumber),
        logo: (logo != null ? logo.value : this.logo),
        providerName:
            (providerName != null ? providerName.value : this.providerName),
        website: (website != null ? website.value : this.website),
        bankAccountNumber: (bankAccountNumber != null
            ? bankAccountNumber.value
            : this.bankAccountNumber),
        bankName: (bankName != null ? bankName.value : this.bankName),
        verificationStatus: (verificationStatus != null
            ? verificationStatus.value
            : this.verificationStatus),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        customers: (customers != null ? customers.value : this.customers),
        agencies: (agencies != null ? agencies.value : this.agencies),
        contracts: (contracts != null ? contracts.value : this.contracts),
        owner: (owner != null ? owner.value : this.owner));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessEdit {
  BusinessEdit({
    this.firstname,
    this.lastname,
    this.phone,
    this.profilePicture,
    this.address,
    this.deviceTokens,
    this.bannerURL,
    this.logo,
    this.licNumber,
    this.providerName,
    this.bannerDescription,
    this.website,
    this.bankAccountNumber,
    this.bankName,
    this.verificationStatus,
    this.about,
  });

  factory BusinessEdit.fromJson(Map<String, dynamic> json) =>
      _$BusinessEditFromJson(json);

  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'profilePicture')
  final String? profilePicture;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'deviceTokens', defaultValue: <String>[])
  final List<String>? deviceTokens;
  @JsonKey(name: 'bannerURL')
  final String? bannerURL;
  @JsonKey(name: 'logo')
  final String? logo;
  @JsonKey(name: 'licNumber')
  final String? licNumber;
  @JsonKey(name: 'providerName')
  final String? providerName;
  @JsonKey(name: 'bannerDescription')
  final String? bannerDescription;
  @JsonKey(name: 'website')
  final String? website;
  @JsonKey(name: 'bankAccountNumber')
  final String? bankAccountNumber;
  @JsonKey(name: 'bankName')
  final String? bankName;
  @JsonKey(name: 'verificationStatus')
  final String? verificationStatus;
  @JsonKey(name: 'about')
  final String? about;
  static const fromJsonFactory = _$BusinessEditFromJson;
  static const toJsonFactory = _$BusinessEditToJson;
  Map<String, dynamic> toJson() => _$BusinessEditToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusinessEdit &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.deviceTokens, deviceTokens) ||
                const DeepCollectionEquality()
                    .equals(other.deviceTokens, deviceTokens)) &&
            (identical(other.bannerURL, bannerURL) ||
                const DeepCollectionEquality()
                    .equals(other.bannerURL, bannerURL)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.licNumber, licNumber) ||
                const DeepCollectionEquality()
                    .equals(other.licNumber, licNumber)) &&
            (identical(other.providerName, providerName) ||
                const DeepCollectionEquality()
                    .equals(other.providerName, providerName)) &&
            (identical(other.bannerDescription, bannerDescription) ||
                const DeepCollectionEquality()
                    .equals(other.bannerDescription, bannerDescription)) &&
            (identical(other.website, website) ||
                const DeepCollectionEquality()
                    .equals(other.website, website)) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccountNumber, bankAccountNumber)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.verificationStatus, verificationStatus) ||
                const DeepCollectionEquality()
                    .equals(other.verificationStatus, verificationStatus)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(deviceTokens) ^
      const DeepCollectionEquality().hash(bannerURL) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(licNumber) ^
      const DeepCollectionEquality().hash(providerName) ^
      const DeepCollectionEquality().hash(bannerDescription) ^
      const DeepCollectionEquality().hash(website) ^
      const DeepCollectionEquality().hash(bankAccountNumber) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(verificationStatus) ^
      const DeepCollectionEquality().hash(about) ^
      runtimeType.hashCode;
}

extension $BusinessEditExtension on BusinessEdit {
  BusinessEdit copyWith(
      {String? firstname,
      String? lastname,
      String? phone,
      String? profilePicture,
      String? address,
      List<String>? deviceTokens,
      String? bannerURL,
      String? logo,
      String? licNumber,
      String? providerName,
      String? bannerDescription,
      String? website,
      String? bankAccountNumber,
      String? bankName,
      String? verificationStatus,
      String? about}) {
    return BusinessEdit(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        phone: phone ?? this.phone,
        profilePicture: profilePicture ?? this.profilePicture,
        address: address ?? this.address,
        deviceTokens: deviceTokens ?? this.deviceTokens,
        bannerURL: bannerURL ?? this.bannerURL,
        logo: logo ?? this.logo,
        licNumber: licNumber ?? this.licNumber,
        providerName: providerName ?? this.providerName,
        bannerDescription: bannerDescription ?? this.bannerDescription,
        website: website ?? this.website,
        bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
        bankName: bankName ?? this.bankName,
        verificationStatus: verificationStatus ?? this.verificationStatus,
        about: about ?? this.about);
  }

  BusinessEdit copyWithWrapped(
      {Wrapped<String?>? firstname,
      Wrapped<String?>? lastname,
      Wrapped<String?>? phone,
      Wrapped<String?>? profilePicture,
      Wrapped<String?>? address,
      Wrapped<List<String>?>? deviceTokens,
      Wrapped<String?>? bannerURL,
      Wrapped<String?>? logo,
      Wrapped<String?>? licNumber,
      Wrapped<String?>? providerName,
      Wrapped<String?>? bannerDescription,
      Wrapped<String?>? website,
      Wrapped<String?>? bankAccountNumber,
      Wrapped<String?>? bankName,
      Wrapped<String?>? verificationStatus,
      Wrapped<String?>? about}) {
    return BusinessEdit(
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        phone: (phone != null ? phone.value : this.phone),
        profilePicture: (profilePicture != null
            ? profilePicture.value
            : this.profilePicture),
        address: (address != null ? address.value : this.address),
        deviceTokens:
            (deviceTokens != null ? deviceTokens.value : this.deviceTokens),
        bannerURL: (bannerURL != null ? bannerURL.value : this.bannerURL),
        logo: (logo != null ? logo.value : this.logo),
        licNumber: (licNumber != null ? licNumber.value : this.licNumber),
        providerName:
            (providerName != null ? providerName.value : this.providerName),
        bannerDescription: (bannerDescription != null
            ? bannerDescription.value
            : this.bannerDescription),
        website: (website != null ? website.value : this.website),
        bankAccountNumber: (bankAccountNumber != null
            ? bankAccountNumber.value
            : this.bankAccountNumber),
        bankName: (bankName != null ? bankName.value : this.bankName),
        verificationStatus: (verificationStatus != null
            ? verificationStatus.value
            : this.verificationStatus),
        about: (about != null ? about.value : this.about));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessRegister {
  BusinessRegister({
    this.companyName,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    this.companyPhone,
    this.providerName,
    this.companyAddress,
    this.companyWebsite,
    this.bankName,
    this.bankAccountNumber,
    this.logo,
    this.licNumber,
    this.about,
  });

  factory BusinessRegister.fromJson(Map<String, dynamic> json) =>
      _$BusinessRegisterFromJson(json);

  @JsonKey(name: 'companyName')
  final String? companyName;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'companyPhone')
  final String? companyPhone;
  @JsonKey(name: 'providerName')
  final String? providerName;
  @JsonKey(name: 'companyAddress')
  final String? companyAddress;
  @JsonKey(name: 'companyWebsite')
  final String? companyWebsite;
  @JsonKey(name: 'bankName')
  final String? bankName;
  @JsonKey(name: 'bankAccountNumber')
  final String? bankAccountNumber;
  @JsonKey(name: 'logo')
  final String? logo;
  @JsonKey(name: 'licNumber')
  final String? licNumber;
  @JsonKey(name: 'about')
  final String? about;
  static const fromJsonFactory = _$BusinessRegisterFromJson;
  static const toJsonFactory = _$BusinessRegisterToJson;
  Map<String, dynamic> toJson() => _$BusinessRegisterToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusinessRegister &&
            (identical(other.companyName, companyName) ||
                const DeepCollectionEquality()
                    .equals(other.companyName, companyName)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.companyPhone, companyPhone) ||
                const DeepCollectionEquality()
                    .equals(other.companyPhone, companyPhone)) &&
            (identical(other.providerName, providerName) ||
                const DeepCollectionEquality()
                    .equals(other.providerName, providerName)) &&
            (identical(other.companyAddress, companyAddress) ||
                const DeepCollectionEquality()
                    .equals(other.companyAddress, companyAddress)) &&
            (identical(other.companyWebsite, companyWebsite) ||
                const DeepCollectionEquality()
                    .equals(other.companyWebsite, companyWebsite)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccountNumber, bankAccountNumber)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.licNumber, licNumber) ||
                const DeepCollectionEquality()
                    .equals(other.licNumber, licNumber)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(companyName) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(companyPhone) ^
      const DeepCollectionEquality().hash(providerName) ^
      const DeepCollectionEquality().hash(companyAddress) ^
      const DeepCollectionEquality().hash(companyWebsite) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(bankAccountNumber) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(licNumber) ^
      const DeepCollectionEquality().hash(about) ^
      runtimeType.hashCode;
}

extension $BusinessRegisterExtension on BusinessRegister {
  BusinessRegister copyWith(
      {String? companyName,
      String? firstname,
      String? lastname,
      String? email,
      String? password,
      String? companyPhone,
      String? providerName,
      String? companyAddress,
      String? companyWebsite,
      String? bankName,
      String? bankAccountNumber,
      String? logo,
      String? licNumber,
      String? about}) {
    return BusinessRegister(
        companyName: companyName ?? this.companyName,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        password: password ?? this.password,
        companyPhone: companyPhone ?? this.companyPhone,
        providerName: providerName ?? this.providerName,
        companyAddress: companyAddress ?? this.companyAddress,
        companyWebsite: companyWebsite ?? this.companyWebsite,
        bankName: bankName ?? this.bankName,
        bankAccountNumber: bankAccountNumber ?? this.bankAccountNumber,
        logo: logo ?? this.logo,
        licNumber: licNumber ?? this.licNumber,
        about: about ?? this.about);
  }

  BusinessRegister copyWithWrapped(
      {Wrapped<String?>? companyName,
      Wrapped<String>? firstname,
      Wrapped<String>? lastname,
      Wrapped<String>? email,
      Wrapped<String>? password,
      Wrapped<String?>? companyPhone,
      Wrapped<String?>? providerName,
      Wrapped<String?>? companyAddress,
      Wrapped<String?>? companyWebsite,
      Wrapped<String?>? bankName,
      Wrapped<String?>? bankAccountNumber,
      Wrapped<String?>? logo,
      Wrapped<String?>? licNumber,
      Wrapped<String?>? about}) {
    return BusinessRegister(
        companyName:
            (companyName != null ? companyName.value : this.companyName),
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password),
        companyPhone:
            (companyPhone != null ? companyPhone.value : this.companyPhone),
        providerName:
            (providerName != null ? providerName.value : this.providerName),
        companyAddress: (companyAddress != null
            ? companyAddress.value
            : this.companyAddress),
        companyWebsite: (companyWebsite != null
            ? companyWebsite.value
            : this.companyWebsite),
        bankName: (bankName != null ? bankName.value : this.bankName),
        bankAccountNumber: (bankAccountNumber != null
            ? bankAccountNumber.value
            : this.bankAccountNumber),
        logo: (logo != null ? logo.value : this.logo),
        licNumber: (licNumber != null ? licNumber.value : this.licNumber),
        about: (about != null ? about.value : this.about));
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessShutdown {
  BusinessShutdown({
    required this.businessId,
  });

  factory BusinessShutdown.fromJson(Map<String, dynamic> json) =>
      _$BusinessShutdownFromJson(json);

  @JsonKey(name: 'business_id')
  final int businessId;
  static const fromJsonFactory = _$BusinessShutdownFromJson;
  static const toJsonFactory = _$BusinessShutdownToJson;
  Map<String, dynamic> toJson() => _$BusinessShutdownToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BusinessShutdown &&
            (identical(other.businessId, businessId) ||
                const DeepCollectionEquality()
                    .equals(other.businessId, businessId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessId) ^ runtimeType.hashCode;
}

extension $BusinessShutdownExtension on BusinessShutdown {
  BusinessShutdown copyWith({int? businessId}) {
    return BusinessShutdown(businessId: businessId ?? this.businessId);
  }

  BusinessShutdown copyWithWrapped({Wrapped<int>? businessId}) {
    return BusinessShutdown(
        businessId: (businessId != null ? businessId.value : this.businessId));
  }
}

@JsonSerializable(explicitToJson: true)
class CardPaymentInfo {
  CardPaymentInfo({
    required this.cardExpMonth,
    required this.cardExpYear,
    required this.city,
    this.country,
    required this.line1,
    this.line2,
    required this.postalCode,
    this.state,
  });

  factory CardPaymentInfo.fromJson(Map<String, dynamic> json) =>
      _$CardPaymentInfoFromJson(json);

  @JsonKey(name: 'card_exp_month')
  final int cardExpMonth;
  @JsonKey(name: 'card_exp_year')
  final int cardExpYear;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'line1')
  final String line1;
  @JsonKey(name: 'line2')
  final String? line2;
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @JsonKey(name: 'state')
  final String? state;
  static const fromJsonFactory = _$CardPaymentInfoFromJson;
  static const toJsonFactory = _$CardPaymentInfoToJson;
  Map<String, dynamic> toJson() => _$CardPaymentInfoToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardPaymentInfo &&
            (identical(other.cardExpMonth, cardExpMonth) ||
                const DeepCollectionEquality()
                    .equals(other.cardExpMonth, cardExpMonth)) &&
            (identical(other.cardExpYear, cardExpYear) ||
                const DeepCollectionEquality()
                    .equals(other.cardExpYear, cardExpYear)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.line1, line1) ||
                const DeepCollectionEquality().equals(other.line1, line1)) &&
            (identical(other.line2, line2) ||
                const DeepCollectionEquality().equals(other.line2, line2)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cardExpMonth) ^
      const DeepCollectionEquality().hash(cardExpYear) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(line1) ^
      const DeepCollectionEquality().hash(line2) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $CardPaymentInfoExtension on CardPaymentInfo {
  CardPaymentInfo copyWith(
      {int? cardExpMonth,
      int? cardExpYear,
      String? city,
      String? country,
      String? line1,
      String? line2,
      String? postalCode,
      String? state}) {
    return CardPaymentInfo(
        cardExpMonth: cardExpMonth ?? this.cardExpMonth,
        cardExpYear: cardExpYear ?? this.cardExpYear,
        city: city ?? this.city,
        country: country ?? this.country,
        line1: line1 ?? this.line1,
        line2: line2 ?? this.line2,
        postalCode: postalCode ?? this.postalCode,
        state: state ?? this.state);
  }

  CardPaymentInfo copyWithWrapped(
      {Wrapped<int>? cardExpMonth,
      Wrapped<int>? cardExpYear,
      Wrapped<String>? city,
      Wrapped<String?>? country,
      Wrapped<String>? line1,
      Wrapped<String?>? line2,
      Wrapped<String>? postalCode,
      Wrapped<String?>? state}) {
    return CardPaymentInfo(
        cardExpMonth:
            (cardExpMonth != null ? cardExpMonth.value : this.cardExpMonth),
        cardExpYear:
            (cardExpYear != null ? cardExpYear.value : this.cardExpYear),
        city: (city != null ? city.value : this.city),
        country: (country != null ? country.value : this.country),
        line1: (line1 != null ? line1.value : this.line1),
        line2: (line2 != null ? line2.value : this.line2),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        state: (state != null ? state.value : this.state));
  }
}

@JsonSerializable(explicitToJson: true)
class ClientSubscribe {
  ClientSubscribe({
    required this.siteId,
    required this.planId,
    this.couponId,
    this.addonsId,
  });

  factory ClientSubscribe.fromJson(Map<String, dynamic> json) =>
      _$ClientSubscribeFromJson(json);

  @JsonKey(name: 'site_id')
  final int siteId;
  @JsonKey(name: 'plan_id')
  final int planId;
  @JsonKey(name: 'coupon_id')
  final int? couponId;
  @JsonKey(name: 'addons_id', defaultValue: <int>[])
  final List<int>? addonsId;
  static const fromJsonFactory = _$ClientSubscribeFromJson;
  static const toJsonFactory = _$ClientSubscribeToJson;
  Map<String, dynamic> toJson() => _$ClientSubscribeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientSubscribe &&
            (identical(other.siteId, siteId) ||
                const DeepCollectionEquality().equals(other.siteId, siteId)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.couponId, couponId) ||
                const DeepCollectionEquality()
                    .equals(other.couponId, couponId)) &&
            (identical(other.addonsId, addonsId) ||
                const DeepCollectionEquality()
                    .equals(other.addonsId, addonsId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(siteId) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(couponId) ^
      const DeepCollectionEquality().hash(addonsId) ^
      runtimeType.hashCode;
}

extension $ClientSubscribeExtension on ClientSubscribe {
  ClientSubscribe copyWith(
      {int? siteId, int? planId, int? couponId, List<int>? addonsId}) {
    return ClientSubscribe(
        siteId: siteId ?? this.siteId,
        planId: planId ?? this.planId,
        couponId: couponId ?? this.couponId,
        addonsId: addonsId ?? this.addonsId);
  }

  ClientSubscribe copyWithWrapped(
      {Wrapped<int>? siteId,
      Wrapped<int>? planId,
      Wrapped<int?>? couponId,
      Wrapped<List<int>?>? addonsId}) {
    return ClientSubscribe(
        siteId: (siteId != null ? siteId.value : this.siteId),
        planId: (planId != null ? planId.value : this.planId),
        couponId: (couponId != null ? couponId.value : this.couponId),
        addonsId: (addonsId != null ? addonsId.value : this.addonsId));
  }
}

@JsonSerializable(explicitToJson: true)
class CouponEdit {
  CouponEdit({
    this.description,
  });

  factory CouponEdit.fromJson(Map<String, dynamic> json) =>
      _$CouponEditFromJson(json);

  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$CouponEditFromJson;
  static const toJsonFactory = _$CouponEditToJson;
  Map<String, dynamic> toJson() => _$CouponEditToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CouponEdit &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^ runtimeType.hashCode;
}

extension $CouponEditExtension on CouponEdit {
  CouponEdit copyWith({String? description}) {
    return CouponEdit(description: description ?? this.description);
  }

  CouponEdit copyWithWrapped({Wrapped<String?>? description}) {
    return CouponEdit(
        description:
            (description != null ? description.value : this.description));
  }
}

@JsonSerializable(explicitToJson: true)
class CouponIn {
  CouponIn({
    required this.name,
    required this.description,
    this.type,
    this.percentage,
    this.amount,
    required this.code,
    this.planId,
    this.durationType,
    this.monthsDuration,
    this.expiryDate,
    this.limit,
  });

  factory CouponIn.fromJson(Map<String, dynamic> json) =>
      _$CouponInFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'percentage')
  final double? percentage;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'plan_id')
  final int? planId;
  @JsonKey(name: 'durationType')
  final String? durationType;
  @JsonKey(name: 'monthsDuration')
  final int? monthsDuration;
  @JsonKey(name: 'expiryDate')
  final DateTime? expiryDate;
  @JsonKey(name: 'limit')
  final int? limit;
  static const fromJsonFactory = _$CouponInFromJson;
  static const toJsonFactory = _$CouponInToJson;
  Map<String, dynamic> toJson() => _$CouponInToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CouponIn &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.durationType, durationType) ||
                const DeepCollectionEquality()
                    .equals(other.durationType, durationType)) &&
            (identical(other.monthsDuration, monthsDuration) ||
                const DeepCollectionEquality()
                    .equals(other.monthsDuration, monthsDuration)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(percentage) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(durationType) ^
      const DeepCollectionEquality().hash(monthsDuration) ^
      const DeepCollectionEquality().hash(expiryDate) ^
      const DeepCollectionEquality().hash(limit) ^
      runtimeType.hashCode;
}

extension $CouponInExtension on CouponIn {
  CouponIn copyWith(
      {String? name,
      String? description,
      String? type,
      double? percentage,
      double? amount,
      String? code,
      int? planId,
      String? durationType,
      int? monthsDuration,
      DateTime? expiryDate,
      int? limit}) {
    return CouponIn(
        name: name ?? this.name,
        description: description ?? this.description,
        type: type ?? this.type,
        percentage: percentage ?? this.percentage,
        amount: amount ?? this.amount,
        code: code ?? this.code,
        planId: planId ?? this.planId,
        durationType: durationType ?? this.durationType,
        monthsDuration: monthsDuration ?? this.monthsDuration,
        expiryDate: expiryDate ?? this.expiryDate,
        limit: limit ?? this.limit);
  }

  CouponIn copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String?>? type,
      Wrapped<double?>? percentage,
      Wrapped<double?>? amount,
      Wrapped<String>? code,
      Wrapped<int?>? planId,
      Wrapped<String?>? durationType,
      Wrapped<int?>? monthsDuration,
      Wrapped<DateTime?>? expiryDate,
      Wrapped<int?>? limit}) {
    return CouponIn(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        type: (type != null ? type.value : this.type),
        percentage: (percentage != null ? percentage.value : this.percentage),
        amount: (amount != null ? amount.value : this.amount),
        code: (code != null ? code.value : this.code),
        planId: (planId != null ? planId.value : this.planId),
        durationType:
            (durationType != null ? durationType.value : this.durationType),
        monthsDuration: (monthsDuration != null
            ? monthsDuration.value
            : this.monthsDuration),
        expiryDate: (expiryDate != null ? expiryDate.value : this.expiryDate),
        limit: (limit != null ? limit.value : this.limit));
  }
}

@JsonSerializable(explicitToJson: true)
class CouponOut {
  CouponOut({
    required this.name,
    required this.description,
    this.type,
    this.percentage,
    this.amount,
    required this.code,
    this.planId,
    this.durationType,
    this.monthsDuration,
    this.expiryDate,
    this.limit,
    required this.id,
    required this.stripeCouponId,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.plans,
    this.owner,
    this.subscriptions,
  });

  factory CouponOut.fromJson(Map<String, dynamic> json) =>
      _$CouponOutFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'percentage')
  final double? percentage;
  @JsonKey(name: 'amount')
  final double? amount;
  @JsonKey(name: 'code')
  final String code;
  @JsonKey(name: 'plan_id')
  final int? planId;
  @JsonKey(name: 'durationType')
  final String? durationType;
  @JsonKey(name: 'monthsDuration')
  final int? monthsDuration;
  @JsonKey(name: 'expiryDate')
  final DateTime? expiryDate;
  @JsonKey(name: 'limit')
  final int? limit;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'stripe_coupon_id')
  final String stripeCouponId;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'plans', defaultValue: <Object>[])
  final List<Object>? plans;
  @JsonKey(name: 'owner')
  final dynamic owner;
  @JsonKey(name: 'subscriptions')
  final dynamic subscriptions;
  static const fromJsonFactory = _$CouponOutFromJson;
  static const toJsonFactory = _$CouponOutToJson;
  Map<String, dynamic> toJson() => _$CouponOutToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CouponOut &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.percentage, percentage) ||
                const DeepCollectionEquality()
                    .equals(other.percentage, percentage)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.durationType, durationType) ||
                const DeepCollectionEquality()
                    .equals(other.durationType, durationType)) &&
            (identical(other.monthsDuration, monthsDuration) ||
                const DeepCollectionEquality()
                    .equals(other.monthsDuration, monthsDuration)) &&
            (identical(other.expiryDate, expiryDate) ||
                const DeepCollectionEquality()
                    .equals(other.expiryDate, expiryDate)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.stripeCouponId, stripeCouponId) ||
                const DeepCollectionEquality()
                    .equals(other.stripeCouponId, stripeCouponId)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.plans, plans) ||
                const DeepCollectionEquality().equals(other.plans, plans)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.subscriptions, subscriptions) ||
                const DeepCollectionEquality()
                    .equals(other.subscriptions, subscriptions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(percentage) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(durationType) ^
      const DeepCollectionEquality().hash(monthsDuration) ^
      const DeepCollectionEquality().hash(expiryDate) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(stripeCouponId) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(plans) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(subscriptions) ^
      runtimeType.hashCode;
}

extension $CouponOutExtension on CouponOut {
  CouponOut copyWith(
      {String? name,
      String? description,
      String? type,
      double? percentage,
      double? amount,
      String? code,
      int? planId,
      String? durationType,
      int? monthsDuration,
      DateTime? expiryDate,
      int? limit,
      int? id,
      String? stripeCouponId,
      bool? active,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<Object>? plans,
      dynamic owner,
      dynamic subscriptions}) {
    return CouponOut(
        name: name ?? this.name,
        description: description ?? this.description,
        type: type ?? this.type,
        percentage: percentage ?? this.percentage,
        amount: amount ?? this.amount,
        code: code ?? this.code,
        planId: planId ?? this.planId,
        durationType: durationType ?? this.durationType,
        monthsDuration: monthsDuration ?? this.monthsDuration,
        expiryDate: expiryDate ?? this.expiryDate,
        limit: limit ?? this.limit,
        id: id ?? this.id,
        stripeCouponId: stripeCouponId ?? this.stripeCouponId,
        active: active ?? this.active,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        plans: plans ?? this.plans,
        owner: owner ?? this.owner,
        subscriptions: subscriptions ?? this.subscriptions);
  }

  CouponOut copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? description,
      Wrapped<String?>? type,
      Wrapped<double?>? percentage,
      Wrapped<double?>? amount,
      Wrapped<String>? code,
      Wrapped<int?>? planId,
      Wrapped<String?>? durationType,
      Wrapped<int?>? monthsDuration,
      Wrapped<DateTime?>? expiryDate,
      Wrapped<int?>? limit,
      Wrapped<int>? id,
      Wrapped<String>? stripeCouponId,
      Wrapped<bool?>? active,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<Object>?>? plans,
      Wrapped<dynamic>? owner,
      Wrapped<dynamic>? subscriptions}) {
    return CouponOut(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        type: (type != null ? type.value : this.type),
        percentage: (percentage != null ? percentage.value : this.percentage),
        amount: (amount != null ? amount.value : this.amount),
        code: (code != null ? code.value : this.code),
        planId: (planId != null ? planId.value : this.planId),
        durationType:
            (durationType != null ? durationType.value : this.durationType),
        monthsDuration: (monthsDuration != null
            ? monthsDuration.value
            : this.monthsDuration),
        expiryDate: (expiryDate != null ? expiryDate.value : this.expiryDate),
        limit: (limit != null ? limit.value : this.limit),
        id: (id != null ? id.value : this.id),
        stripeCouponId: (stripeCouponId != null
            ? stripeCouponId.value
            : this.stripeCouponId),
        active: (active != null ? active.value : this.active),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        plans: (plans != null ? plans.value : this.plans),
        owner: (owner != null ? owner.value : this.owner),
        subscriptions:
            (subscriptions != null ? subscriptions.value : this.subscriptions));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateCardPayment {
  CreateCardPayment({
    required this.cardNumber,
    required this.cardExpMonth,
    required this.cardExpYear,
    required this.cardCvc,
    required this.city,
    this.country,
    required this.line1,
    this.line2,
    required this.postalCode,
    this.state,
  });

  factory CreateCardPayment.fromJson(Map<String, dynamic> json) =>
      _$CreateCardPaymentFromJson(json);

  @JsonKey(name: 'card_number')
  final String cardNumber;
  @JsonKey(name: 'card_exp_month')
  final int cardExpMonth;
  @JsonKey(name: 'card_exp_year')
  final int cardExpYear;
  @JsonKey(name: 'card_cvc')
  final int cardCvc;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'country')
  final String? country;
  @JsonKey(name: 'line1')
  final String line1;
  @JsonKey(name: 'line2')
  final String? line2;
  @JsonKey(name: 'postal_code')
  final String postalCode;
  @JsonKey(name: 'state')
  final String? state;
  static const fromJsonFactory = _$CreateCardPaymentFromJson;
  static const toJsonFactory = _$CreateCardPaymentToJson;
  Map<String, dynamic> toJson() => _$CreateCardPaymentToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateCardPayment &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.cardExpMonth, cardExpMonth) ||
                const DeepCollectionEquality()
                    .equals(other.cardExpMonth, cardExpMonth)) &&
            (identical(other.cardExpYear, cardExpYear) ||
                const DeepCollectionEquality()
                    .equals(other.cardExpYear, cardExpYear)) &&
            (identical(other.cardCvc, cardCvc) ||
                const DeepCollectionEquality()
                    .equals(other.cardCvc, cardCvc)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.line1, line1) ||
                const DeepCollectionEquality().equals(other.line1, line1)) &&
            (identical(other.line2, line2) ||
                const DeepCollectionEquality().equals(other.line2, line2)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(cardExpMonth) ^
      const DeepCollectionEquality().hash(cardExpYear) ^
      const DeepCollectionEquality().hash(cardCvc) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(line1) ^
      const DeepCollectionEquality().hash(line2) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(state) ^
      runtimeType.hashCode;
}

extension $CreateCardPaymentExtension on CreateCardPayment {
  CreateCardPayment copyWith(
      {String? cardNumber,
      int? cardExpMonth,
      int? cardExpYear,
      int? cardCvc,
      String? city,
      String? country,
      String? line1,
      String? line2,
      String? postalCode,
      String? state}) {
    return CreateCardPayment(
        cardNumber: cardNumber ?? this.cardNumber,
        cardExpMonth: cardExpMonth ?? this.cardExpMonth,
        cardExpYear: cardExpYear ?? this.cardExpYear,
        cardCvc: cardCvc ?? this.cardCvc,
        city: city ?? this.city,
        country: country ?? this.country,
        line1: line1 ?? this.line1,
        line2: line2 ?? this.line2,
        postalCode: postalCode ?? this.postalCode,
        state: state ?? this.state);
  }

  CreateCardPayment copyWithWrapped(
      {Wrapped<String>? cardNumber,
      Wrapped<int>? cardExpMonth,
      Wrapped<int>? cardExpYear,
      Wrapped<int>? cardCvc,
      Wrapped<String>? city,
      Wrapped<String?>? country,
      Wrapped<String>? line1,
      Wrapped<String?>? line2,
      Wrapped<String>? postalCode,
      Wrapped<String?>? state}) {
    return CreateCardPayment(
        cardNumber: (cardNumber != null ? cardNumber.value : this.cardNumber),
        cardExpMonth:
            (cardExpMonth != null ? cardExpMonth.value : this.cardExpMonth),
        cardExpYear:
            (cardExpYear != null ? cardExpYear.value : this.cardExpYear),
        cardCvc: (cardCvc != null ? cardCvc.value : this.cardCvc),
        city: (city != null ? city.value : this.city),
        country: (country != null ? country.value : this.country),
        line1: (line1 != null ? line1.value : this.line1),
        line2: (line2 != null ? line2.value : this.line2),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        state: (state != null ? state.value : this.state));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerDelete {
  CustomerDelete({
    required this.customerId,
  });

  factory CustomerDelete.fromJson(Map<String, dynamic> json) =>
      _$CustomerDeleteFromJson(json);

  @JsonKey(name: 'customer_id')
  final int customerId;
  static const fromJsonFactory = _$CustomerDeleteFromJson;
  static const toJsonFactory = _$CustomerDeleteToJson;
  Map<String, dynamic> toJson() => _$CustomerDeleteToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerDelete &&
            (identical(other.customerId, customerId) ||
                const DeepCollectionEquality()
                    .equals(other.customerId, customerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(customerId) ^ runtimeType.hashCode;
}

extension $CustomerDeleteExtension on CustomerDelete {
  CustomerDelete copyWith({int? customerId}) {
    return CustomerDelete(customerId: customerId ?? this.customerId);
  }

  CustomerDelete copyWithWrapped({Wrapped<int>? customerId}) {
    return CustomerDelete(
        customerId: (customerId != null ? customerId.value : this.customerId));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerDetails {
  CustomerDetails({
    required this.id,
    this.userID,
    this.businessID,
    this.verified,
    this.isOptedInForMarketing,
    this.mainContractDate,
    this.nextMainDate,
    this.manufacturer,
    this.brand,
    this.type,
    this.level,
    this.permitNumber,
    this.latitude,
    this.longitude,
    this.mailStreet,
    this.mailCity,
    this.mailState,
    this.mailZip,
    this.careOf,
    this.area,
    this.pumpingArea,
    this.rentalArea,
    this.stripeCustomerId,
    this.agencyId,
    this.instructions,
    this.appointments,
    this.stripeDefaultPaymentMethodId,
    this.owner,
    this.createdAt,
    this.updatedAt,
    this.business,
    this.agency,
    this.sites,
  });

  factory CustomerDetails.fromJson(Map<String, dynamic> json) =>
      _$CustomerDetailsFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'userID')
  final int? userID;
  @JsonKey(name: 'businessID')
  final int? businessID;
  @JsonKey(name: 'verified')
  final bool? verified;
  @JsonKey(name: 'isOptedInForMarketing')
  final bool? isOptedInForMarketing;
  @JsonKey(name: 'mainContractDate')
  final String? mainContractDate;
  @JsonKey(name: 'nextMainDate')
  final String? nextMainDate;
  @JsonKey(name: 'manufacturer')
  final String? manufacturer;
  @JsonKey(name: 'brand')
  final String? brand;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'level')
  final String? level;
  @JsonKey(name: 'permitNumber')
  final String? permitNumber;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  @JsonKey(name: 'mailStreet')
  final String? mailStreet;
  @JsonKey(name: 'mailCity')
  final String? mailCity;
  @JsonKey(name: 'mailState')
  final String? mailState;
  @JsonKey(name: 'mailZip')
  final String? mailZip;
  @JsonKey(name: 'careOf')
  final String? careOf;
  @JsonKey(name: 'area')
  final String? area;
  @JsonKey(name: 'pumpingArea')
  final String? pumpingArea;
  @JsonKey(name: 'rentalArea')
  final String? rentalArea;
  @JsonKey(name: 'stripe_customer_id')
  final String? stripeCustomerId;
  @JsonKey(name: 'agency_id')
  final int? agencyId;
  @JsonKey(name: 'instructions')
  final String? instructions;
  @JsonKey(name: 'appointments')
  final String? appointments;
  @JsonKey(name: 'stripe_default_payment_method_id')
  final String? stripeDefaultPaymentMethodId;
  @JsonKey(name: 'owner')
  final dynamic owner;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'business')
  final dynamic business;
  @JsonKey(name: 'agency')
  final dynamic agency;
  @JsonKey(name: 'sites')
  final dynamic sites;
  static const fromJsonFactory = _$CustomerDetailsFromJson;
  static const toJsonFactory = _$CustomerDetailsToJson;
  Map<String, dynamic> toJson() => _$CustomerDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userID, userID) ||
                const DeepCollectionEquality().equals(other.userID, userID)) &&
            (identical(other.businessID, businessID) ||
                const DeepCollectionEquality()
                    .equals(other.businessID, businessID)) &&
            (identical(other.verified, verified) ||
                const DeepCollectionEquality()
                    .equals(other.verified, verified)) &&
            (identical(other.isOptedInForMarketing, isOptedInForMarketing) ||
                const DeepCollectionEquality().equals(
                    other.isOptedInForMarketing, isOptedInForMarketing)) &&
            (identical(other.mainContractDate, mainContractDate) ||
                const DeepCollectionEquality()
                    .equals(other.mainContractDate, mainContractDate)) &&
            (identical(other.nextMainDate, nextMainDate) ||
                const DeepCollectionEquality()
                    .equals(other.nextMainDate, nextMainDate)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.permitNumber, permitNumber) ||
                const DeepCollectionEquality()
                    .equals(other.permitNumber, permitNumber)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.mailStreet, mailStreet) ||
                const DeepCollectionEquality()
                    .equals(other.mailStreet, mailStreet)) &&
            (identical(other.mailCity, mailCity) ||
                const DeepCollectionEquality()
                    .equals(other.mailCity, mailCity)) &&
            (identical(other.mailState, mailState) ||
                const DeepCollectionEquality()
                    .equals(other.mailState, mailState)) &&
            (identical(other.mailZip, mailZip) ||
                const DeepCollectionEquality()
                    .equals(other.mailZip, mailZip)) &&
            (identical(other.careOf, careOf) ||
                const DeepCollectionEquality().equals(other.careOf, careOf)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.pumpingArea, pumpingArea) ||
                const DeepCollectionEquality()
                    .equals(other.pumpingArea, pumpingArea)) &&
            (identical(other.rentalArea, rentalArea) ||
                const DeepCollectionEquality()
                    .equals(other.rentalArea, rentalArea)) &&
            (identical(other.stripeCustomerId, stripeCustomerId) ||
                const DeepCollectionEquality()
                    .equals(other.stripeCustomerId, stripeCustomerId)) &&
            (identical(other.agencyId, agencyId) ||
                const DeepCollectionEquality()
                    .equals(other.agencyId, agencyId)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.appointments, appointments) || const DeepCollectionEquality().equals(other.appointments, appointments)) &&
            (identical(other.stripeDefaultPaymentMethodId, stripeDefaultPaymentMethodId) || const DeepCollectionEquality().equals(other.stripeDefaultPaymentMethodId, stripeDefaultPaymentMethodId)) &&
            (identical(other.owner, owner) || const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.business, business) || const DeepCollectionEquality().equals(other.business, business)) &&
            (identical(other.agency, agency) || const DeepCollectionEquality().equals(other.agency, agency)) &&
            (identical(other.sites, sites) || const DeepCollectionEquality().equals(other.sites, sites)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userID) ^
      const DeepCollectionEquality().hash(businessID) ^
      const DeepCollectionEquality().hash(verified) ^
      const DeepCollectionEquality().hash(isOptedInForMarketing) ^
      const DeepCollectionEquality().hash(mainContractDate) ^
      const DeepCollectionEquality().hash(nextMainDate) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(permitNumber) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(mailStreet) ^
      const DeepCollectionEquality().hash(mailCity) ^
      const DeepCollectionEquality().hash(mailState) ^
      const DeepCollectionEquality().hash(mailZip) ^
      const DeepCollectionEquality().hash(careOf) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(pumpingArea) ^
      const DeepCollectionEquality().hash(rentalArea) ^
      const DeepCollectionEquality().hash(stripeCustomerId) ^
      const DeepCollectionEquality().hash(agencyId) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(appointments) ^
      const DeepCollectionEquality().hash(stripeDefaultPaymentMethodId) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(business) ^
      const DeepCollectionEquality().hash(agency) ^
      const DeepCollectionEquality().hash(sites) ^
      runtimeType.hashCode;
}

extension $CustomerDetailsExtension on CustomerDetails {
  CustomerDetails copyWith(
      {int? id,
      int? userID,
      int? businessID,
      bool? verified,
      bool? isOptedInForMarketing,
      String? mainContractDate,
      String? nextMainDate,
      String? manufacturer,
      String? brand,
      String? type,
      String? level,
      String? permitNumber,
      double? latitude,
      double? longitude,
      String? mailStreet,
      String? mailCity,
      String? mailState,
      String? mailZip,
      String? careOf,
      String? area,
      String? pumpingArea,
      String? rentalArea,
      String? stripeCustomerId,
      int? agencyId,
      String? instructions,
      String? appointments,
      String? stripeDefaultPaymentMethodId,
      dynamic owner,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic business,
      dynamic agency,
      dynamic sites}) {
    return CustomerDetails(
        id: id ?? this.id,
        userID: userID ?? this.userID,
        businessID: businessID ?? this.businessID,
        verified: verified ?? this.verified,
        isOptedInForMarketing:
            isOptedInForMarketing ?? this.isOptedInForMarketing,
        mainContractDate: mainContractDate ?? this.mainContractDate,
        nextMainDate: nextMainDate ?? this.nextMainDate,
        manufacturer: manufacturer ?? this.manufacturer,
        brand: brand ?? this.brand,
        type: type ?? this.type,
        level: level ?? this.level,
        permitNumber: permitNumber ?? this.permitNumber,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        mailStreet: mailStreet ?? this.mailStreet,
        mailCity: mailCity ?? this.mailCity,
        mailState: mailState ?? this.mailState,
        mailZip: mailZip ?? this.mailZip,
        careOf: careOf ?? this.careOf,
        area: area ?? this.area,
        pumpingArea: pumpingArea ?? this.pumpingArea,
        rentalArea: rentalArea ?? this.rentalArea,
        stripeCustomerId: stripeCustomerId ?? this.stripeCustomerId,
        agencyId: agencyId ?? this.agencyId,
        instructions: instructions ?? this.instructions,
        appointments: appointments ?? this.appointments,
        stripeDefaultPaymentMethodId:
            stripeDefaultPaymentMethodId ?? this.stripeDefaultPaymentMethodId,
        owner: owner ?? this.owner,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        business: business ?? this.business,
        agency: agency ?? this.agency,
        sites: sites ?? this.sites);
  }

  CustomerDetails copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<int?>? userID,
      Wrapped<int?>? businessID,
      Wrapped<bool?>? verified,
      Wrapped<bool?>? isOptedInForMarketing,
      Wrapped<String?>? mainContractDate,
      Wrapped<String?>? nextMainDate,
      Wrapped<String?>? manufacturer,
      Wrapped<String?>? brand,
      Wrapped<String?>? type,
      Wrapped<String?>? level,
      Wrapped<String?>? permitNumber,
      Wrapped<double?>? latitude,
      Wrapped<double?>? longitude,
      Wrapped<String?>? mailStreet,
      Wrapped<String?>? mailCity,
      Wrapped<String?>? mailState,
      Wrapped<String?>? mailZip,
      Wrapped<String?>? careOf,
      Wrapped<String?>? area,
      Wrapped<String?>? pumpingArea,
      Wrapped<String?>? rentalArea,
      Wrapped<String?>? stripeCustomerId,
      Wrapped<int?>? agencyId,
      Wrapped<String?>? instructions,
      Wrapped<String?>? appointments,
      Wrapped<String?>? stripeDefaultPaymentMethodId,
      Wrapped<dynamic>? owner,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<dynamic>? business,
      Wrapped<dynamic>? agency,
      Wrapped<dynamic>? sites}) {
    return CustomerDetails(
        id: (id != null ? id.value : this.id),
        userID: (userID != null ? userID.value : this.userID),
        businessID: (businessID != null ? businessID.value : this.businessID),
        verified: (verified != null ? verified.value : this.verified),
        isOptedInForMarketing: (isOptedInForMarketing != null
            ? isOptedInForMarketing.value
            : this.isOptedInForMarketing),
        mainContractDate: (mainContractDate != null
            ? mainContractDate.value
            : this.mainContractDate),
        nextMainDate:
            (nextMainDate != null ? nextMainDate.value : this.nextMainDate),
        manufacturer:
            (manufacturer != null ? manufacturer.value : this.manufacturer),
        brand: (brand != null ? brand.value : this.brand),
        type: (type != null ? type.value : this.type),
        level: (level != null ? level.value : this.level),
        permitNumber:
            (permitNumber != null ? permitNumber.value : this.permitNumber),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        mailStreet: (mailStreet != null ? mailStreet.value : this.mailStreet),
        mailCity: (mailCity != null ? mailCity.value : this.mailCity),
        mailState: (mailState != null ? mailState.value : this.mailState),
        mailZip: (mailZip != null ? mailZip.value : this.mailZip),
        careOf: (careOf != null ? careOf.value : this.careOf),
        area: (area != null ? area.value : this.area),
        pumpingArea:
            (pumpingArea != null ? pumpingArea.value : this.pumpingArea),
        rentalArea: (rentalArea != null ? rentalArea.value : this.rentalArea),
        stripeCustomerId: (stripeCustomerId != null
            ? stripeCustomerId.value
            : this.stripeCustomerId),
        agencyId: (agencyId != null ? agencyId.value : this.agencyId),
        instructions:
            (instructions != null ? instructions.value : this.instructions),
        appointments:
            (appointments != null ? appointments.value : this.appointments),
        stripeDefaultPaymentMethodId: (stripeDefaultPaymentMethodId != null
            ? stripeDefaultPaymentMethodId.value
            : this.stripeDefaultPaymentMethodId),
        owner: (owner != null ? owner.value : this.owner),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        business: (business != null ? business.value : this.business),
        agency: (agency != null ? agency.value : this.agency),
        sites: (sites != null ? sites.value : this.sites));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerEdit {
  CustomerEdit({
    this.firstname,
    this.lastname,
    this.phone,
    this.profilePicture,
    this.address,
    this.deviceTokens,
    this.isOptedInForMarketing,
    this.mainContractDate,
    this.nextMainDate,
    this.manufacturer,
    this.brand,
    this.latitude,
    this.longitude,
    this.mailStreet,
    this.mailCity,
    this.mailState,
    this.mailZip,
    this.careOf,
    this.area,
    this.pumpingArea,
    this.rentalArea,
    this.plans,
    this.agencyId,
    this.instructions,
    this.appointments,
    this.permitNumber,
    this.type,
    this.level,
  });

  factory CustomerEdit.fromJson(Map<String, dynamic> json) =>
      _$CustomerEditFromJson(json);

  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'profilePicture')
  final String? profilePicture;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'deviceTokens', defaultValue: <String>[])
  final List<String>? deviceTokens;
  @JsonKey(name: 'isOptedInForMarketing')
  final bool? isOptedInForMarketing;
  @JsonKey(name: 'mainContractDate')
  final String? mainContractDate;
  @JsonKey(name: 'nextMainDate')
  final String? nextMainDate;
  @JsonKey(name: 'manufacturer')
  final String? manufacturer;
  @JsonKey(name: 'brand')
  final String? brand;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  @JsonKey(name: 'mailStreet')
  final String? mailStreet;
  @JsonKey(name: 'mailCity')
  final String? mailCity;
  @JsonKey(name: 'mailState')
  final String? mailState;
  @JsonKey(name: 'mailZip')
  final String? mailZip;
  @JsonKey(name: 'careOf')
  final String? careOf;
  @JsonKey(name: 'area')
  final String? area;
  @JsonKey(name: 'pumpingArea')
  final String? pumpingArea;
  @JsonKey(name: 'rentalArea')
  final String? rentalArea;
  @JsonKey(name: 'plans', defaultValue: <Object>[])
  final List<Object>? plans;
  @JsonKey(name: 'agency_id')
  final int? agencyId;
  @JsonKey(name: 'instructions')
  final String? instructions;
  @JsonKey(name: 'appointments')
  final String? appointments;
  @JsonKey(name: 'permitNumber')
  final String? permitNumber;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'level')
  final String? level;
  static const fromJsonFactory = _$CustomerEditFromJson;
  static const toJsonFactory = _$CustomerEditToJson;
  Map<String, dynamic> toJson() => _$CustomerEditToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerEdit &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.deviceTokens, deviceTokens) ||
                const DeepCollectionEquality()
                    .equals(other.deviceTokens, deviceTokens)) &&
            (identical(other.isOptedInForMarketing, isOptedInForMarketing) ||
                const DeepCollectionEquality().equals(
                    other.isOptedInForMarketing, isOptedInForMarketing)) &&
            (identical(other.mainContractDate, mainContractDate) ||
                const DeepCollectionEquality()
                    .equals(other.mainContractDate, mainContractDate)) &&
            (identical(other.nextMainDate, nextMainDate) ||
                const DeepCollectionEquality()
                    .equals(other.nextMainDate, nextMainDate)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.mailStreet, mailStreet) ||
                const DeepCollectionEquality()
                    .equals(other.mailStreet, mailStreet)) &&
            (identical(other.mailCity, mailCity) ||
                const DeepCollectionEquality()
                    .equals(other.mailCity, mailCity)) &&
            (identical(other.mailState, mailState) ||
                const DeepCollectionEquality()
                    .equals(other.mailState, mailState)) &&
            (identical(other.mailZip, mailZip) ||
                const DeepCollectionEquality()
                    .equals(other.mailZip, mailZip)) &&
            (identical(other.careOf, careOf) ||
                const DeepCollectionEquality().equals(other.careOf, careOf)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.pumpingArea, pumpingArea) ||
                const DeepCollectionEquality()
                    .equals(other.pumpingArea, pumpingArea)) &&
            (identical(other.rentalArea, rentalArea) ||
                const DeepCollectionEquality()
                    .equals(other.rentalArea, rentalArea)) &&
            (identical(other.plans, plans) ||
                const DeepCollectionEquality().equals(other.plans, plans)) &&
            (identical(other.agencyId, agencyId) ||
                const DeepCollectionEquality()
                    .equals(other.agencyId, agencyId)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.appointments, appointments) || const DeepCollectionEquality().equals(other.appointments, appointments)) &&
            (identical(other.permitNumber, permitNumber) || const DeepCollectionEquality().equals(other.permitNumber, permitNumber)) &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.level, level) || const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(deviceTokens) ^
      const DeepCollectionEquality().hash(isOptedInForMarketing) ^
      const DeepCollectionEquality().hash(mainContractDate) ^
      const DeepCollectionEquality().hash(nextMainDate) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(mailStreet) ^
      const DeepCollectionEquality().hash(mailCity) ^
      const DeepCollectionEquality().hash(mailState) ^
      const DeepCollectionEquality().hash(mailZip) ^
      const DeepCollectionEquality().hash(careOf) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(pumpingArea) ^
      const DeepCollectionEquality().hash(rentalArea) ^
      const DeepCollectionEquality().hash(plans) ^
      const DeepCollectionEquality().hash(agencyId) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(appointments) ^
      const DeepCollectionEquality().hash(permitNumber) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(level) ^
      runtimeType.hashCode;
}

extension $CustomerEditExtension on CustomerEdit {
  CustomerEdit copyWith(
      {String? firstname,
      String? lastname,
      String? phone,
      String? profilePicture,
      String? address,
      List<String>? deviceTokens,
      bool? isOptedInForMarketing,
      String? mainContractDate,
      String? nextMainDate,
      String? manufacturer,
      String? brand,
      double? latitude,
      double? longitude,
      String? mailStreet,
      String? mailCity,
      String? mailState,
      String? mailZip,
      String? careOf,
      String? area,
      String? pumpingArea,
      String? rentalArea,
      List<Object>? plans,
      int? agencyId,
      String? instructions,
      String? appointments,
      String? permitNumber,
      String? type,
      String? level}) {
    return CustomerEdit(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        phone: phone ?? this.phone,
        profilePicture: profilePicture ?? this.profilePicture,
        address: address ?? this.address,
        deviceTokens: deviceTokens ?? this.deviceTokens,
        isOptedInForMarketing:
            isOptedInForMarketing ?? this.isOptedInForMarketing,
        mainContractDate: mainContractDate ?? this.mainContractDate,
        nextMainDate: nextMainDate ?? this.nextMainDate,
        manufacturer: manufacturer ?? this.manufacturer,
        brand: brand ?? this.brand,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        mailStreet: mailStreet ?? this.mailStreet,
        mailCity: mailCity ?? this.mailCity,
        mailState: mailState ?? this.mailState,
        mailZip: mailZip ?? this.mailZip,
        careOf: careOf ?? this.careOf,
        area: area ?? this.area,
        pumpingArea: pumpingArea ?? this.pumpingArea,
        rentalArea: rentalArea ?? this.rentalArea,
        plans: plans ?? this.plans,
        agencyId: agencyId ?? this.agencyId,
        instructions: instructions ?? this.instructions,
        appointments: appointments ?? this.appointments,
        permitNumber: permitNumber ?? this.permitNumber,
        type: type ?? this.type,
        level: level ?? this.level);
  }

  CustomerEdit copyWithWrapped(
      {Wrapped<String?>? firstname,
      Wrapped<String?>? lastname,
      Wrapped<String?>? phone,
      Wrapped<String?>? profilePicture,
      Wrapped<String?>? address,
      Wrapped<List<String>?>? deviceTokens,
      Wrapped<bool?>? isOptedInForMarketing,
      Wrapped<String?>? mainContractDate,
      Wrapped<String?>? nextMainDate,
      Wrapped<String?>? manufacturer,
      Wrapped<String?>? brand,
      Wrapped<double?>? latitude,
      Wrapped<double?>? longitude,
      Wrapped<String?>? mailStreet,
      Wrapped<String?>? mailCity,
      Wrapped<String?>? mailState,
      Wrapped<String?>? mailZip,
      Wrapped<String?>? careOf,
      Wrapped<String?>? area,
      Wrapped<String?>? pumpingArea,
      Wrapped<String?>? rentalArea,
      Wrapped<List<Object>?>? plans,
      Wrapped<int?>? agencyId,
      Wrapped<String?>? instructions,
      Wrapped<String?>? appointments,
      Wrapped<String?>? permitNumber,
      Wrapped<String?>? type,
      Wrapped<String?>? level}) {
    return CustomerEdit(
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        phone: (phone != null ? phone.value : this.phone),
        profilePicture: (profilePicture != null
            ? profilePicture.value
            : this.profilePicture),
        address: (address != null ? address.value : this.address),
        deviceTokens:
            (deviceTokens != null ? deviceTokens.value : this.deviceTokens),
        isOptedInForMarketing: (isOptedInForMarketing != null
            ? isOptedInForMarketing.value
            : this.isOptedInForMarketing),
        mainContractDate: (mainContractDate != null
            ? mainContractDate.value
            : this.mainContractDate),
        nextMainDate:
            (nextMainDate != null ? nextMainDate.value : this.nextMainDate),
        manufacturer:
            (manufacturer != null ? manufacturer.value : this.manufacturer),
        brand: (brand != null ? brand.value : this.brand),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        mailStreet: (mailStreet != null ? mailStreet.value : this.mailStreet),
        mailCity: (mailCity != null ? mailCity.value : this.mailCity),
        mailState: (mailState != null ? mailState.value : this.mailState),
        mailZip: (mailZip != null ? mailZip.value : this.mailZip),
        careOf: (careOf != null ? careOf.value : this.careOf),
        area: (area != null ? area.value : this.area),
        pumpingArea:
            (pumpingArea != null ? pumpingArea.value : this.pumpingArea),
        rentalArea: (rentalArea != null ? rentalArea.value : this.rentalArea),
        plans: (plans != null ? plans.value : this.plans),
        agencyId: (agencyId != null ? agencyId.value : this.agencyId),
        instructions:
            (instructions != null ? instructions.value : this.instructions),
        appointments:
            (appointments != null ? appointments.value : this.appointments),
        permitNumber:
            (permitNumber != null ? permitNumber.value : this.permitNumber),
        type: (type != null ? type.value : this.type),
        level: (level != null ? level.value : this.level));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerImport {
  CustomerImport({
    required this.email,
    required this.firstname,
    required this.lastname,
    this.isOptedInForMarketing,
    this.manufacturer,
    this.brand,
    this.mailStreet,
    this.mailCity,
    this.mailState,
    this.mailZip,
    this.careOf,
    this.area,
    this.pumpingArea,
    this.rentalArea,
    this.agencyId,
    this.instructions,
    this.appointments,
  });

  factory CustomerImport.fromJson(Map<String, dynamic> json) =>
      _$CustomerImportFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'isOptedInForMarketing', defaultValue: false)
  final bool? isOptedInForMarketing;
  @JsonKey(name: 'manufacturer')
  final String? manufacturer;
  @JsonKey(name: 'brand')
  final String? brand;
  @JsonKey(name: 'mailStreet')
  final String? mailStreet;
  @JsonKey(name: 'mailCity')
  final String? mailCity;
  @JsonKey(name: 'mailState')
  final String? mailState;
  @JsonKey(name: 'mailZip')
  final String? mailZip;
  @JsonKey(name: 'careOf')
  final String? careOf;
  @JsonKey(name: 'area')
  final String? area;
  @JsonKey(name: 'pumpingArea')
  final String? pumpingArea;
  @JsonKey(name: 'rentalArea')
  final String? rentalArea;
  @JsonKey(name: 'agency_id')
  final int? agencyId;
  @JsonKey(name: 'instructions')
  final String? instructions;
  @JsonKey(name: 'appointments')
  final String? appointments;
  static const fromJsonFactory = _$CustomerImportFromJson;
  static const toJsonFactory = _$CustomerImportToJson;
  Map<String, dynamic> toJson() => _$CustomerImportToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerImport &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.isOptedInForMarketing, isOptedInForMarketing) ||
                const DeepCollectionEquality().equals(
                    other.isOptedInForMarketing, isOptedInForMarketing)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.mailStreet, mailStreet) ||
                const DeepCollectionEquality()
                    .equals(other.mailStreet, mailStreet)) &&
            (identical(other.mailCity, mailCity) ||
                const DeepCollectionEquality()
                    .equals(other.mailCity, mailCity)) &&
            (identical(other.mailState, mailState) ||
                const DeepCollectionEquality()
                    .equals(other.mailState, mailState)) &&
            (identical(other.mailZip, mailZip) ||
                const DeepCollectionEquality()
                    .equals(other.mailZip, mailZip)) &&
            (identical(other.careOf, careOf) ||
                const DeepCollectionEquality().equals(other.careOf, careOf)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.pumpingArea, pumpingArea) ||
                const DeepCollectionEquality()
                    .equals(other.pumpingArea, pumpingArea)) &&
            (identical(other.rentalArea, rentalArea) ||
                const DeepCollectionEquality()
                    .equals(other.rentalArea, rentalArea)) &&
            (identical(other.agencyId, agencyId) ||
                const DeepCollectionEquality()
                    .equals(other.agencyId, agencyId)) &&
            (identical(other.instructions, instructions) ||
                const DeepCollectionEquality()
                    .equals(other.instructions, instructions)) &&
            (identical(other.appointments, appointments) ||
                const DeepCollectionEquality()
                    .equals(other.appointments, appointments)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(isOptedInForMarketing) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(mailStreet) ^
      const DeepCollectionEquality().hash(mailCity) ^
      const DeepCollectionEquality().hash(mailState) ^
      const DeepCollectionEquality().hash(mailZip) ^
      const DeepCollectionEquality().hash(careOf) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(pumpingArea) ^
      const DeepCollectionEquality().hash(rentalArea) ^
      const DeepCollectionEquality().hash(agencyId) ^
      const DeepCollectionEquality().hash(instructions) ^
      const DeepCollectionEquality().hash(appointments) ^
      runtimeType.hashCode;
}

extension $CustomerImportExtension on CustomerImport {
  CustomerImport copyWith(
      {String? email,
      String? firstname,
      String? lastname,
      bool? isOptedInForMarketing,
      String? manufacturer,
      String? brand,
      String? mailStreet,
      String? mailCity,
      String? mailState,
      String? mailZip,
      String? careOf,
      String? area,
      String? pumpingArea,
      String? rentalArea,
      int? agencyId,
      String? instructions,
      String? appointments}) {
    return CustomerImport(
        email: email ?? this.email,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        isOptedInForMarketing:
            isOptedInForMarketing ?? this.isOptedInForMarketing,
        manufacturer: manufacturer ?? this.manufacturer,
        brand: brand ?? this.brand,
        mailStreet: mailStreet ?? this.mailStreet,
        mailCity: mailCity ?? this.mailCity,
        mailState: mailState ?? this.mailState,
        mailZip: mailZip ?? this.mailZip,
        careOf: careOf ?? this.careOf,
        area: area ?? this.area,
        pumpingArea: pumpingArea ?? this.pumpingArea,
        rentalArea: rentalArea ?? this.rentalArea,
        agencyId: agencyId ?? this.agencyId,
        instructions: instructions ?? this.instructions,
        appointments: appointments ?? this.appointments);
  }

  CustomerImport copyWithWrapped(
      {Wrapped<String>? email,
      Wrapped<String>? firstname,
      Wrapped<String>? lastname,
      Wrapped<bool?>? isOptedInForMarketing,
      Wrapped<String?>? manufacturer,
      Wrapped<String?>? brand,
      Wrapped<String?>? mailStreet,
      Wrapped<String?>? mailCity,
      Wrapped<String?>? mailState,
      Wrapped<String?>? mailZip,
      Wrapped<String?>? careOf,
      Wrapped<String?>? area,
      Wrapped<String?>? pumpingArea,
      Wrapped<String?>? rentalArea,
      Wrapped<int?>? agencyId,
      Wrapped<String?>? instructions,
      Wrapped<String?>? appointments}) {
    return CustomerImport(
        email: (email != null ? email.value : this.email),
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        isOptedInForMarketing: (isOptedInForMarketing != null
            ? isOptedInForMarketing.value
            : this.isOptedInForMarketing),
        manufacturer:
            (manufacturer != null ? manufacturer.value : this.manufacturer),
        brand: (brand != null ? brand.value : this.brand),
        mailStreet: (mailStreet != null ? mailStreet.value : this.mailStreet),
        mailCity: (mailCity != null ? mailCity.value : this.mailCity),
        mailState: (mailState != null ? mailState.value : this.mailState),
        mailZip: (mailZip != null ? mailZip.value : this.mailZip),
        careOf: (careOf != null ? careOf.value : this.careOf),
        area: (area != null ? area.value : this.area),
        pumpingArea:
            (pumpingArea != null ? pumpingArea.value : this.pumpingArea),
        rentalArea: (rentalArea != null ? rentalArea.value : this.rentalArea),
        agencyId: (agencyId != null ? agencyId.value : this.agencyId),
        instructions:
            (instructions != null ? instructions.value : this.instructions),
        appointments:
            (appointments != null ? appointments.value : this.appointments));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomerRegister {
  CustomerRegister({
    required this.businessId,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
    this.phone,
    this.type,
    this.address,
    this.brand,
    this.idNumber,
    this.permitNumber,
    this.manufacturer,
    this.level,
    this.agencyId,
    this.isOptedInForMarketing,
    this.mailStreet,
    this.mailCity,
    this.mailState,
    this.mailZip,
  });

  factory CustomerRegister.fromJson(Map<String, dynamic> json) =>
      _$CustomerRegisterFromJson(json);

  @JsonKey(name: 'business_id')
  final int businessId;
  @JsonKey(name: 'firstname')
  final String firstname;
  @JsonKey(name: 'lastname')
  final String lastname;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'type')
  final String? type;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'brand')
  final String? brand;
  @JsonKey(name: 'idNumber')
  final String? idNumber;
  @JsonKey(name: 'permitNumber')
  final String? permitNumber;
  @JsonKey(name: 'manufacturer')
  final String? manufacturer;
  @JsonKey(name: 'level')
  final String? level;
  @JsonKey(name: 'agency_id')
  final int? agencyId;
  @JsonKey(name: 'isOptedInForMarketing')
  final bool? isOptedInForMarketing;
  @JsonKey(name: 'mailStreet')
  final String? mailStreet;
  @JsonKey(name: 'mailCity')
  final String? mailCity;
  @JsonKey(name: 'mailState')
  final String? mailState;
  @JsonKey(name: 'mailZip')
  final String? mailZip;
  static const fromJsonFactory = _$CustomerRegisterFromJson;
  static const toJsonFactory = _$CustomerRegisterToJson;
  Map<String, dynamic> toJson() => _$CustomerRegisterToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomerRegister &&
            (identical(other.businessId, businessId) ||
                const DeepCollectionEquality()
                    .equals(other.businessId, businessId)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.idNumber, idNumber) ||
                const DeepCollectionEquality()
                    .equals(other.idNumber, idNumber)) &&
            (identical(other.permitNumber, permitNumber) ||
                const DeepCollectionEquality()
                    .equals(other.permitNumber, permitNumber)) &&
            (identical(other.manufacturer, manufacturer) ||
                const DeepCollectionEquality()
                    .equals(other.manufacturer, manufacturer)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.agencyId, agencyId) ||
                const DeepCollectionEquality()
                    .equals(other.agencyId, agencyId)) &&
            (identical(other.isOptedInForMarketing, isOptedInForMarketing) ||
                const DeepCollectionEquality().equals(
                    other.isOptedInForMarketing, isOptedInForMarketing)) &&
            (identical(other.mailStreet, mailStreet) ||
                const DeepCollectionEquality()
                    .equals(other.mailStreet, mailStreet)) &&
            (identical(other.mailCity, mailCity) ||
                const DeepCollectionEquality()
                    .equals(other.mailCity, mailCity)) &&
            (identical(other.mailState, mailState) ||
                const DeepCollectionEquality()
                    .equals(other.mailState, mailState)) &&
            (identical(other.mailZip, mailZip) ||
                const DeepCollectionEquality().equals(other.mailZip, mailZip)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessId) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(idNumber) ^
      const DeepCollectionEquality().hash(permitNumber) ^
      const DeepCollectionEquality().hash(manufacturer) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(agencyId) ^
      const DeepCollectionEquality().hash(isOptedInForMarketing) ^
      const DeepCollectionEquality().hash(mailStreet) ^
      const DeepCollectionEquality().hash(mailCity) ^
      const DeepCollectionEquality().hash(mailState) ^
      const DeepCollectionEquality().hash(mailZip) ^
      runtimeType.hashCode;
}

extension $CustomerRegisterExtension on CustomerRegister {
  CustomerRegister copyWith(
      {int? businessId,
      String? firstname,
      String? lastname,
      String? email,
      String? password,
      String? phone,
      String? type,
      String? address,
      String? brand,
      String? idNumber,
      String? permitNumber,
      String? manufacturer,
      String? level,
      int? agencyId,
      bool? isOptedInForMarketing,
      String? mailStreet,
      String? mailCity,
      String? mailState,
      String? mailZip}) {
    return CustomerRegister(
        businessId: businessId ?? this.businessId,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        password: password ?? this.password,
        phone: phone ?? this.phone,
        type: type ?? this.type,
        address: address ?? this.address,
        brand: brand ?? this.brand,
        idNumber: idNumber ?? this.idNumber,
        permitNumber: permitNumber ?? this.permitNumber,
        manufacturer: manufacturer ?? this.manufacturer,
        level: level ?? this.level,
        agencyId: agencyId ?? this.agencyId,
        isOptedInForMarketing:
            isOptedInForMarketing ?? this.isOptedInForMarketing,
        mailStreet: mailStreet ?? this.mailStreet,
        mailCity: mailCity ?? this.mailCity,
        mailState: mailState ?? this.mailState,
        mailZip: mailZip ?? this.mailZip);
  }

  CustomerRegister copyWithWrapped(
      {Wrapped<int>? businessId,
      Wrapped<String>? firstname,
      Wrapped<String>? lastname,
      Wrapped<String>? email,
      Wrapped<String>? password,
      Wrapped<String?>? phone,
      Wrapped<String?>? type,
      Wrapped<String?>? address,
      Wrapped<String?>? brand,
      Wrapped<String?>? idNumber,
      Wrapped<String?>? permitNumber,
      Wrapped<String?>? manufacturer,
      Wrapped<String?>? level,
      Wrapped<int?>? agencyId,
      Wrapped<bool?>? isOptedInForMarketing,
      Wrapped<String?>? mailStreet,
      Wrapped<String?>? mailCity,
      Wrapped<String?>? mailState,
      Wrapped<String?>? mailZip}) {
    return CustomerRegister(
        businessId: (businessId != null ? businessId.value : this.businessId),
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password),
        phone: (phone != null ? phone.value : this.phone),
        type: (type != null ? type.value : this.type),
        address: (address != null ? address.value : this.address),
        brand: (brand != null ? brand.value : this.brand),
        idNumber: (idNumber != null ? idNumber.value : this.idNumber),
        permitNumber:
            (permitNumber != null ? permitNumber.value : this.permitNumber),
        manufacturer:
            (manufacturer != null ? manufacturer.value : this.manufacturer),
        level: (level != null ? level.value : this.level),
        agencyId: (agencyId != null ? agencyId.value : this.agencyId),
        isOptedInForMarketing: (isOptedInForMarketing != null
            ? isOptedInForMarketing.value
            : this.isOptedInForMarketing),
        mailStreet: (mailStreet != null ? mailStreet.value : this.mailStreet),
        mailCity: (mailCity != null ? mailCity.value : this.mailCity),
        mailState: (mailState != null ? mailState.value : this.mailState),
        mailZip: (mailZip != null ? mailZip.value : this.mailZip));
  }
}

@JsonSerializable(explicitToJson: true)
class FeesIn {
  FeesIn({
    required this.planId,
    required this.name,
    required this.feePercentage,
    required this.description,
    required this.active,
  });

  factory FeesIn.fromJson(Map<String, dynamic> json) => _$FeesInFromJson(json);

  @JsonKey(name: 'plan_id')
  final int planId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'feePercentage')
  final double feePercentage;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'active')
  final bool active;
  static const fromJsonFactory = _$FeesInFromJson;
  static const toJsonFactory = _$FeesInToJson;
  Map<String, dynamic> toJson() => _$FeesInToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeesIn &&
            (identical(other.planId, planId) ||
                const DeepCollectionEquality().equals(other.planId, planId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.feePercentage, feePercentage) ||
                const DeepCollectionEquality()
                    .equals(other.feePercentage, feePercentage)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(planId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(feePercentage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $FeesInExtension on FeesIn {
  FeesIn copyWith(
      {int? planId,
      String? name,
      double? feePercentage,
      String? description,
      bool? active}) {
    return FeesIn(
        planId: planId ?? this.planId,
        name: name ?? this.name,
        feePercentage: feePercentage ?? this.feePercentage,
        description: description ?? this.description,
        active: active ?? this.active);
  }

  FeesIn copyWithWrapped(
      {Wrapped<int>? planId,
      Wrapped<String>? name,
      Wrapped<double>? feePercentage,
      Wrapped<String>? description,
      Wrapped<bool>? active}) {
    return FeesIn(
        planId: (planId != null ? planId.value : this.planId),
        name: (name != null ? name.value : this.name),
        feePercentage:
            (feePercentage != null ? feePercentage.value : this.feePercentage),
        description:
            (description != null ? description.value : this.description),
        active: (active != null ? active.value : this.active));
  }
}

@JsonSerializable(explicitToJson: true)
class FeesOut {
  FeesOut({
    required this.id,
    required this.name,
    required this.feePercentage,
    required this.description,
    required this.active,
    this.createdAt,
    this.updatedAt,
    this.plans,
  });

  factory FeesOut.fromJson(Map<String, dynamic> json) =>
      _$FeesOutFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'feePercentage')
  final double feePercentage;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'active')
  final bool active;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'plans')
  final dynamic plans;
  static const fromJsonFactory = _$FeesOutFromJson;
  static const toJsonFactory = _$FeesOutToJson;
  Map<String, dynamic> toJson() => _$FeesOutToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeesOut &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.feePercentage, feePercentage) ||
                const DeepCollectionEquality()
                    .equals(other.feePercentage, feePercentage)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.plans, plans) ||
                const DeepCollectionEquality().equals(other.plans, plans)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(feePercentage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(plans) ^
      runtimeType.hashCode;
}

extension $FeesOutExtension on FeesOut {
  FeesOut copyWith(
      {int? id,
      String? name,
      double? feePercentage,
      String? description,
      bool? active,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic plans}) {
    return FeesOut(
        id: id ?? this.id,
        name: name ?? this.name,
        feePercentage: feePercentage ?? this.feePercentage,
        description: description ?? this.description,
        active: active ?? this.active,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        plans: plans ?? this.plans);
  }

  FeesOut copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? name,
      Wrapped<double>? feePercentage,
      Wrapped<String>? description,
      Wrapped<bool>? active,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<dynamic>? plans}) {
    return FeesOut(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        feePercentage:
            (feePercentage != null ? feePercentage.value : this.feePercentage),
        description:
            (description != null ? description.value : this.description),
        active: (active != null ? active.value : this.active),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        plans: (plans != null ? plans.value : this.plans));
  }
}

@JsonSerializable(explicitToJson: true)
class FeesUpdate {
  FeesUpdate({
    this.name,
    this.feePercentage,
    this.description,
    this.active,
  });

  factory FeesUpdate.fromJson(Map<String, dynamic> json) =>
      _$FeesUpdateFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'feePercentage')
  final double? feePercentage;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'active')
  final bool? active;
  static const fromJsonFactory = _$FeesUpdateFromJson;
  static const toJsonFactory = _$FeesUpdateToJson;
  Map<String, dynamic> toJson() => _$FeesUpdateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FeesUpdate &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.feePercentage, feePercentage) ||
                const DeepCollectionEquality()
                    .equals(other.feePercentage, feePercentage)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(feePercentage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(active) ^
      runtimeType.hashCode;
}

extension $FeesUpdateExtension on FeesUpdate {
  FeesUpdate copyWith(
      {String? name,
      double? feePercentage,
      String? description,
      bool? active}) {
    return FeesUpdate(
        name: name ?? this.name,
        feePercentage: feePercentage ?? this.feePercentage,
        description: description ?? this.description,
        active: active ?? this.active);
  }

  FeesUpdate copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<double?>? feePercentage,
      Wrapped<String?>? description,
      Wrapped<bool?>? active}) {
    return FeesUpdate(
        name: (name != null ? name.value : this.name),
        feePercentage:
            (feePercentage != null ? feePercentage.value : this.feePercentage),
        description:
            (description != null ? description.value : this.description),
        active: (active != null ? active.value : this.active));
  }
}

@JsonSerializable(explicitToJson: true)
class HTTPValidationError {
  HTTPValidationError({
    this.detail,
  });

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);

  @JsonKey(name: 'detail', defaultValue: <ValidationError>[])
  final List<ValidationError>? detail;
  static const fromJsonFactory = _$HTTPValidationErrorFromJson;
  static const toJsonFactory = _$HTTPValidationErrorToJson;
  Map<String, dynamic> toJson() => _$HTTPValidationErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HTTPValidationError &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(detail) ^ runtimeType.hashCode;
}

extension $HTTPValidationErrorExtension on HTTPValidationError {
  HTTPValidationError copyWith({List<ValidationError>? detail}) {
    return HTTPValidationError(detail: detail ?? this.detail);
  }

  HTTPValidationError copyWithWrapped(
      {Wrapped<List<ValidationError>?>? detail}) {
    return HTTPValidationError(
        detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class PasswordChange {
  PasswordChange({
    required this.userId,
    required this.email,
    required this.oldPassword,
    required this.newPassword,
  });

  factory PasswordChange.fromJson(Map<String, dynamic> json) =>
      _$PasswordChangeFromJson(json);

  @JsonKey(name: 'user_id')
  final int userId;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'old_password')
  final String oldPassword;
  @JsonKey(name: 'new_password')
  final String newPassword;
  static const fromJsonFactory = _$PasswordChangeFromJson;
  static const toJsonFactory = _$PasswordChangeToJson;
  Map<String, dynamic> toJson() => _$PasswordChangeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChange &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(oldPassword) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $PasswordChangeExtension on PasswordChange {
  PasswordChange copyWith(
      {int? userId, String? email, String? oldPassword, String? newPassword}) {
    return PasswordChange(
        userId: userId ?? this.userId,
        email: email ?? this.email,
        oldPassword: oldPassword ?? this.oldPassword,
        newPassword: newPassword ?? this.newPassword);
  }

  PasswordChange copyWithWrapped(
      {Wrapped<int>? userId,
      Wrapped<String>? email,
      Wrapped<String>? oldPassword,
      Wrapped<String>? newPassword}) {
    return PasswordChange(
        userId: (userId != null ? userId.value : this.userId),
        email: (email != null ? email.value : this.email),
        oldPassword:
            (oldPassword != null ? oldPassword.value : this.oldPassword),
        newPassword:
            (newPassword != null ? newPassword.value : this.newPassword));
  }
}

@JsonSerializable(explicitToJson: true)
class PasswordReset {
  PasswordReset({
    required this.email,
  });

  factory PasswordReset.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$PasswordResetFromJson;
  static const toJsonFactory = _$PasswordResetToJson;
  Map<String, dynamic> toJson() => _$PasswordResetToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordReset &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $PasswordResetExtension on PasswordReset {
  PasswordReset copyWith({String? email}) {
    return PasswordReset(email: email ?? this.email);
  }

  PasswordReset copyWithWrapped({Wrapped<String>? email}) {
    return PasswordReset(email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanCreate {
  PlanCreate({
    this.businessId,
    required this.name,
    required this.cost,
    this.pictures,
    required this.description,
    this.billingFrequency,
    this.billingInterval,
  });

  factory PlanCreate.fromJson(Map<String, dynamic> json) =>
      _$PlanCreateFromJson(json);

  @JsonKey(name: 'business_id')
  final int? businessId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'cost')
  final double cost;
  @JsonKey(name: 'pictures', defaultValue: <String>[])
  final List<String>? pictures;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'billingFrequency')
  final String? billingFrequency;
  @JsonKey(name: 'billingInterval')
  final int? billingInterval;
  static const fromJsonFactory = _$PlanCreateFromJson;
  static const toJsonFactory = _$PlanCreateToJson;
  Map<String, dynamic> toJson() => _$PlanCreateToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlanCreate &&
            (identical(other.businessId, businessId) ||
                const DeepCollectionEquality()
                    .equals(other.businessId, businessId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.pictures, pictures) ||
                const DeepCollectionEquality()
                    .equals(other.pictures, pictures)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.billingFrequency, billingFrequency) ||
                const DeepCollectionEquality()
                    .equals(other.billingFrequency, billingFrequency)) &&
            (identical(other.billingInterval, billingInterval) ||
                const DeepCollectionEquality()
                    .equals(other.billingInterval, billingInterval)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(businessId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(pictures) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(billingFrequency) ^
      const DeepCollectionEquality().hash(billingInterval) ^
      runtimeType.hashCode;
}

extension $PlanCreateExtension on PlanCreate {
  PlanCreate copyWith(
      {int? businessId,
      String? name,
      double? cost,
      List<String>? pictures,
      String? description,
      String? billingFrequency,
      int? billingInterval}) {
    return PlanCreate(
        businessId: businessId ?? this.businessId,
        name: name ?? this.name,
        cost: cost ?? this.cost,
        pictures: pictures ?? this.pictures,
        description: description ?? this.description,
        billingFrequency: billingFrequency ?? this.billingFrequency,
        billingInterval: billingInterval ?? this.billingInterval);
  }

  PlanCreate copyWithWrapped(
      {Wrapped<int?>? businessId,
      Wrapped<String>? name,
      Wrapped<double>? cost,
      Wrapped<List<String>?>? pictures,
      Wrapped<String>? description,
      Wrapped<String?>? billingFrequency,
      Wrapped<int?>? billingInterval}) {
    return PlanCreate(
        businessId: (businessId != null ? businessId.value : this.businessId),
        name: (name != null ? name.value : this.name),
        cost: (cost != null ? cost.value : this.cost),
        pictures: (pictures != null ? pictures.value : this.pictures),
        description:
            (description != null ? description.value : this.description),
        billingFrequency: (billingFrequency != null
            ? billingFrequency.value
            : this.billingFrequency),
        billingInterval: (billingInterval != null
            ? billingInterval.value
            : this.billingInterval));
  }
}

@JsonSerializable(explicitToJson: true)
class PlanEdit {
  PlanEdit({
    this.name,
    this.cost,
    this.pictures,
    this.description,
    this.billingFrequency,
  });

  factory PlanEdit.fromJson(Map<String, dynamic> json) =>
      _$PlanEditFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'cost')
  final double? cost;
  @JsonKey(name: 'pictures', defaultValue: <String>[])
  final List<String>? pictures;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'billingFrequency')
  final String? billingFrequency;
  static const fromJsonFactory = _$PlanEditFromJson;
  static const toJsonFactory = _$PlanEditToJson;
  Map<String, dynamic> toJson() => _$PlanEditToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlanEdit &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.pictures, pictures) ||
                const DeepCollectionEquality()
                    .equals(other.pictures, pictures)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.billingFrequency, billingFrequency) ||
                const DeepCollectionEquality()
                    .equals(other.billingFrequency, billingFrequency)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(pictures) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(billingFrequency) ^
      runtimeType.hashCode;
}

extension $PlanEditExtension on PlanEdit {
  PlanEdit copyWith(
      {String? name,
      double? cost,
      List<String>? pictures,
      String? description,
      String? billingFrequency}) {
    return PlanEdit(
        name: name ?? this.name,
        cost: cost ?? this.cost,
        pictures: pictures ?? this.pictures,
        description: description ?? this.description,
        billingFrequency: billingFrequency ?? this.billingFrequency);
  }

  PlanEdit copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<double?>? cost,
      Wrapped<List<String>?>? pictures,
      Wrapped<String?>? description,
      Wrapped<String?>? billingFrequency}) {
    return PlanEdit(
        name: (name != null ? name.value : this.name),
        cost: (cost != null ? cost.value : this.cost),
        pictures: (pictures != null ? pictures.value : this.pictures),
        description:
            (description != null ? description.value : this.description),
        billingFrequency: (billingFrequency != null
            ? billingFrequency.value
            : this.billingFrequency));
  }
}

@JsonSerializable(explicitToJson: true)
class RequestIn {
  RequestIn({
    required this.title,
    required this.message,
    required this.type,
  });

  factory RequestIn.fromJson(Map<String, dynamic> json) =>
      _$RequestInFromJson(json);

  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$RequestInFromJson;
  static const toJsonFactory = _$RequestInToJson;
  Map<String, dynamic> toJson() => _$RequestInToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestIn &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $RequestInExtension on RequestIn {
  RequestIn copyWith({String? title, String? message, String? type}) {
    return RequestIn(
        title: title ?? this.title,
        message: message ?? this.message,
        type: type ?? this.type);
  }

  RequestIn copyWithWrapped(
      {Wrapped<String>? title,
      Wrapped<String>? message,
      Wrapped<String>? type}) {
    return RequestIn(
        title: (title != null ? title.value : this.title),
        message: (message != null ? message.value : this.message),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class RequestResponse {
  RequestResponse({
    required this.status,
    required this.message,
  });

  factory RequestResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestResponseFromJson(json);

  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'message')
  final String message;
  static const fromJsonFactory = _$RequestResponseFromJson;
  static const toJsonFactory = _$RequestResponseToJson;
  Map<String, dynamic> toJson() => _$RequestResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $RequestResponseExtension on RequestResponse {
  RequestResponse copyWith({String? status, String? message}) {
    return RequestResponse(
        status: status ?? this.status, message: message ?? this.message);
  }

  RequestResponse copyWithWrapped(
      {Wrapped<String>? status, Wrapped<String>? message}) {
    return RequestResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class RequestVerification {
  RequestVerification({
    required this.email,
  });

  factory RequestVerification.fromJson(Map<String, dynamic> json) =>
      _$RequestVerificationFromJson(json);

  @JsonKey(name: 'email')
  final String email;
  static const fromJsonFactory = _$RequestVerificationFromJson;
  static const toJsonFactory = _$RequestVerificationToJson;
  Map<String, dynamic> toJson() => _$RequestVerificationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestVerification &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^ runtimeType.hashCode;
}

extension $RequestVerificationExtension on RequestVerification {
  RequestVerification copyWith({String? email}) {
    return RequestVerification(email: email ?? this.email);
  }

  RequestVerification copyWithWrapped({Wrapped<String>? email}) {
    return RequestVerification(
        email: (email != null ? email.value : this.email));
  }
}

@JsonSerializable(explicitToJson: true)
class SiteEdit {
  SiteEdit({
    required this.name,
  });

  factory SiteEdit.fromJson(Map<String, dynamic> json) =>
      _$SiteEditFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$SiteEditFromJson;
  static const toJsonFactory = _$SiteEditToJson;
  Map<String, dynamic> toJson() => _$SiteEditToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SiteEdit &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $SiteEditExtension on SiteEdit {
  SiteEdit copyWith({String? name}) {
    return SiteEdit(name: name ?? this.name);
  }

  SiteEdit copyWithWrapped({Wrapped<String>? name}) {
    return SiteEdit(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class SiteIn {
  SiteIn({
    required this.name,
    this.type,
  });

  factory SiteIn.fromJson(Map<String, dynamic> json) => _$SiteInFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final String? type;
  static const fromJsonFactory = _$SiteInFromJson;
  static const toJsonFactory = _$SiteInToJson;
  Map<String, dynamic> toJson() => _$SiteInToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SiteIn &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $SiteInExtension on SiteIn {
  SiteIn copyWith({String? name, String? type}) {
    return SiteIn(name: name ?? this.name, type: type ?? this.type);
  }

  SiteIn copyWithWrapped({Wrapped<String>? name, Wrapped<String?>? type}) {
    return SiteIn(
        name: (name != null ? name.value : this.name),
        type: (type != null ? type.value : this.type));
  }
}

@JsonSerializable(explicitToJson: true)
class SiteOut {
  SiteOut({
    required this.id,
    required this.name,
    required this.type,
    required this.createdBy,
    this.customer,
    this.subscription,
    this.createdAt,
    this.updatedAt,
  });

  factory SiteOut.fromJson(Map<String, dynamic> json) =>
      _$SiteOutFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'createdBy')
  final int createdBy;
  @JsonKey(name: 'customer')
  final dynamic customer;
  @JsonKey(name: 'subscription')
  final dynamic subscription;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  static const fromJsonFactory = _$SiteOutFromJson;
  static const toJsonFactory = _$SiteOutToJson;
  Map<String, dynamic> toJson() => _$SiteOutToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SiteOut &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.subscription, subscription) ||
                const DeepCollectionEquality()
                    .equals(other.subscription, subscription)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(subscription) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SiteOutExtension on SiteOut {
  SiteOut copyWith(
      {int? id,
      String? name,
      String? type,
      int? createdBy,
      dynamic customer,
      dynamic subscription,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return SiteOut(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        createdBy: createdBy ?? this.createdBy,
        customer: customer ?? this.customer,
        subscription: subscription ?? this.subscription,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  SiteOut copyWithWrapped(
      {Wrapped<int>? id,
      Wrapped<String>? name,
      Wrapped<String>? type,
      Wrapped<int>? createdBy,
      Wrapped<dynamic>? customer,
      Wrapped<dynamic>? subscription,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt}) {
    return SiteOut(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        type: (type != null ? type.value : this.type),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        customer: (customer != null ? customer.value : this.customer),
        subscription:
            (subscription != null ? subscription.value : this.subscription),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt));
  }
}

@JsonSerializable(explicitToJson: true)
class Status {
  Status({
    required this.status,
  });

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  @JsonKey(name: 'status')
  final String status;
  static const fromJsonFactory = _$StatusFromJson;
  static const toJsonFactory = _$StatusToJson;
  Map<String, dynamic> toJson() => _$StatusToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Status &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $StatusExtension on Status {
  Status copyWith({String? status}) {
    return Status(status: status ?? this.status);
  }

  Status copyWithWrapped({Wrapped<String>? status}) {
    return Status(status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class Token {
  Token({
    required this.accessToken,
    this.tokenType,
    this.user,
  });

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  @JsonKey(name: 'access_token')
  final String accessToken;
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @JsonKey(name: 'user')
  final UserDetails? user;
  static const fromJsonFactory = _$TokenFromJson;
  static const toJsonFactory = _$TokenToJson;
  Map<String, dynamic> toJson() => _$TokenToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Token &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(user) ^
      runtimeType.hashCode;
}

extension $TokenExtension on Token {
  Token copyWith({String? accessToken, String? tokenType, UserDetails? user}) {
    return Token(
        accessToken: accessToken ?? this.accessToken,
        tokenType: tokenType ?? this.tokenType,
        user: user ?? this.user);
  }

  Token copyWithWrapped(
      {Wrapped<String>? accessToken,
      Wrapped<String?>? tokenType,
      Wrapped<UserDetails?>? user}) {
    return Token(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        tokenType: (tokenType != null ? tokenType.value : this.tokenType),
        user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class TokenPasswordChange {
  TokenPasswordChange({
    required this.token,
    required this.newPassword,
  });

  factory TokenPasswordChange.fromJson(Map<String, dynamic> json) =>
      _$TokenPasswordChangeFromJson(json);

  @JsonKey(name: 'token')
  final String token;
  @JsonKey(name: 'new_password')
  final String newPassword;
  static const fromJsonFactory = _$TokenPasswordChangeFromJson;
  static const toJsonFactory = _$TokenPasswordChangeToJson;
  Map<String, dynamic> toJson() => _$TokenPasswordChangeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TokenPasswordChange &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(newPassword) ^
      runtimeType.hashCode;
}

extension $TokenPasswordChangeExtension on TokenPasswordChange {
  TokenPasswordChange copyWith({String? token, String? newPassword}) {
    return TokenPasswordChange(
        token: token ?? this.token,
        newPassword: newPassword ?? this.newPassword);
  }

  TokenPasswordChange copyWithWrapped(
      {Wrapped<String>? token, Wrapped<String>? newPassword}) {
    return TokenPasswordChange(
        token: (token != null ? token.value : this.token),
        newPassword:
            (newPassword != null ? newPassword.value : this.newPassword));
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateAgency {
  UpdateAgency({
    this.name,
    this.description,
    this.enablesEFilling,
    this.fillingFee,
    this.contractStatus,
  });

  factory UpdateAgency.fromJson(Map<String, dynamic> json) =>
      _$UpdateAgencyFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'enablesEFilling', defaultValue: false)
  final bool? enablesEFilling;
  @JsonKey(name: 'fillingFee')
  final double? fillingFee;
  @JsonKey(name: 'contractStatus')
  final String? contractStatus;
  static const fromJsonFactory = _$UpdateAgencyFromJson;
  static const toJsonFactory = _$UpdateAgencyToJson;
  Map<String, dynamic> toJson() => _$UpdateAgencyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAgency &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.enablesEFilling, enablesEFilling) ||
                const DeepCollectionEquality()
                    .equals(other.enablesEFilling, enablesEFilling)) &&
            (identical(other.fillingFee, fillingFee) ||
                const DeepCollectionEquality()
                    .equals(other.fillingFee, fillingFee)) &&
            (identical(other.contractStatus, contractStatus) ||
                const DeepCollectionEquality()
                    .equals(other.contractStatus, contractStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(enablesEFilling) ^
      const DeepCollectionEquality().hash(fillingFee) ^
      const DeepCollectionEquality().hash(contractStatus) ^
      runtimeType.hashCode;
}

extension $UpdateAgencyExtension on UpdateAgency {
  UpdateAgency copyWith(
      {String? name,
      String? description,
      bool? enablesEFilling,
      double? fillingFee,
      String? contractStatus}) {
    return UpdateAgency(
        name: name ?? this.name,
        description: description ?? this.description,
        enablesEFilling: enablesEFilling ?? this.enablesEFilling,
        fillingFee: fillingFee ?? this.fillingFee,
        contractStatus: contractStatus ?? this.contractStatus);
  }

  UpdateAgency copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? description,
      Wrapped<bool?>? enablesEFilling,
      Wrapped<double?>? fillingFee,
      Wrapped<String?>? contractStatus}) {
    return UpdateAgency(
        name: (name != null ? name.value : this.name),
        description:
            (description != null ? description.value : this.description),
        enablesEFilling: (enablesEFilling != null
            ? enablesEFilling.value
            : this.enablesEFilling),
        fillingFee: (fillingFee != null ? fillingFee.value : this.fillingFee),
        contractStatus: (contractStatus != null
            ? contractStatus.value
            : this.contractStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDetails {
  UserDetails({
    this.email,
    this.firstname,
    this.lastname,
    this.isSuperuser,
    this.isVerified,
    this.id,
    this.phone,
    this.profilePicture,
    this.userType,
    this.address,
    this.accountStatus,
    this.lastSeen,
    this.createdAt,
    this.updatedAt,
    this.deviceTokens,
    this.business,
    this.customer,
    this.admin,
    this.billings,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);

  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'is_superuser', defaultValue: false)
  final bool? isSuperuser;
  @JsonKey(name: 'is_verified', defaultValue: false)
  final bool? isVerified;
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'phone')
  final String? phone;
  @JsonKey(name: 'profilePicture')
  final String? profilePicture;
  @JsonKey(name: 'userType')
  final String? userType;
  @JsonKey(name: 'address')
  final String? address;
  @JsonKey(name: 'accountStatus')
  final String? accountStatus;
  @JsonKey(name: 'lastSeen')
  final DateTime? lastSeen;
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;
  @JsonKey(name: 'deviceTokens', defaultValue: <String>[])
  final List<String>? deviceTokens;
  @JsonKey(name: 'business')
  final dynamic business;
  @JsonKey(name: 'customer')
  final dynamic customer;
  @JsonKey(name: 'admin')
  final dynamic admin;
  @JsonKey(name: 'billings')
  final dynamic billings;
  static const fromJsonFactory = _$UserDetailsFromJson;
  static const toJsonFactory = _$UserDetailsToJson;
  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDetails &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.isSuperuser, isSuperuser) ||
                const DeepCollectionEquality()
                    .equals(other.isSuperuser, isSuperuser)) &&
            (identical(other.isVerified, isVerified) ||
                const DeepCollectionEquality()
                    .equals(other.isVerified, isVerified)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.profilePicture, profilePicture) ||
                const DeepCollectionEquality()
                    .equals(other.profilePicture, profilePicture)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.accountStatus, accountStatus) ||
                const DeepCollectionEquality()
                    .equals(other.accountStatus, accountStatus)) &&
            (identical(other.lastSeen, lastSeen) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeen, lastSeen)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.deviceTokens, deviceTokens) ||
                const DeepCollectionEquality()
                    .equals(other.deviceTokens, deviceTokens)) &&
            (identical(other.business, business) ||
                const DeepCollectionEquality()
                    .equals(other.business, business)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.admin, admin) ||
                const DeepCollectionEquality().equals(other.admin, admin)) &&
            (identical(other.billings, billings) ||
                const DeepCollectionEquality()
                    .equals(other.billings, billings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(isSuperuser) ^
      const DeepCollectionEquality().hash(isVerified) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(profilePicture) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(accountStatus) ^
      const DeepCollectionEquality().hash(lastSeen) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(deviceTokens) ^
      const DeepCollectionEquality().hash(business) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(admin) ^
      const DeepCollectionEquality().hash(billings) ^
      runtimeType.hashCode;
}

extension $UserDetailsExtension on UserDetails {
  UserDetails copyWith(
      {String? email,
      String? firstname,
      String? lastname,
      bool? isSuperuser,
      bool? isVerified,
      int? id,
      String? phone,
      String? profilePicture,
      String? userType,
      String? address,
      String? accountStatus,
      DateTime? lastSeen,
      DateTime? createdAt,
      DateTime? updatedAt,
      List<String>? deviceTokens,
      dynamic business,
      dynamic customer,
      dynamic admin,
      dynamic billings}) {
    return UserDetails(
        email: email ?? this.email,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        isSuperuser: isSuperuser ?? this.isSuperuser,
        isVerified: isVerified ?? this.isVerified,
        id: id ?? this.id,
        phone: phone ?? this.phone,
        profilePicture: profilePicture ?? this.profilePicture,
        userType: userType ?? this.userType,
        address: address ?? this.address,
        accountStatus: accountStatus ?? this.accountStatus,
        lastSeen: lastSeen ?? this.lastSeen,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deviceTokens: deviceTokens ?? this.deviceTokens,
        business: business ?? this.business,
        customer: customer ?? this.customer,
        admin: admin ?? this.admin,
        billings: billings ?? this.billings);
  }

  UserDetails copyWithWrapped(
      {Wrapped<String?>? email,
      Wrapped<String?>? firstname,
      Wrapped<String?>? lastname,
      Wrapped<bool?>? isSuperuser,
      Wrapped<bool?>? isVerified,
      Wrapped<int?>? id,
      Wrapped<String?>? phone,
      Wrapped<String?>? profilePicture,
      Wrapped<String?>? userType,
      Wrapped<String?>? address,
      Wrapped<String?>? accountStatus,
      Wrapped<DateTime?>? lastSeen,
      Wrapped<DateTime?>? createdAt,
      Wrapped<DateTime?>? updatedAt,
      Wrapped<List<String>?>? deviceTokens,
      Wrapped<dynamic>? business,
      Wrapped<dynamic>? customer,
      Wrapped<dynamic>? admin,
      Wrapped<dynamic>? billings}) {
    return UserDetails(
        email: (email != null ? email.value : this.email),
        firstname: (firstname != null ? firstname.value : this.firstname),
        lastname: (lastname != null ? lastname.value : this.lastname),
        isSuperuser:
            (isSuperuser != null ? isSuperuser.value : this.isSuperuser),
        isVerified: (isVerified != null ? isVerified.value : this.isVerified),
        id: (id != null ? id.value : this.id),
        phone: (phone != null ? phone.value : this.phone),
        profilePicture: (profilePicture != null
            ? profilePicture.value
            : this.profilePicture),
        userType: (userType != null ? userType.value : this.userType),
        address: (address != null ? address.value : this.address),
        accountStatus:
            (accountStatus != null ? accountStatus.value : this.accountStatus),
        lastSeen: (lastSeen != null ? lastSeen.value : this.lastSeen),
        createdAt: (createdAt != null ? createdAt.value : this.createdAt),
        updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
        deviceTokens:
            (deviceTokens != null ? deviceTokens.value : this.deviceTokens),
        business: (business != null ? business.value : this.business),
        customer: (customer != null ? customer.value : this.customer),
        admin: (admin != null ? admin.value : this.admin),
        billings: (billings != null ? billings.value : this.billings));
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationError {
  ValidationError({
    required this.loc,
    required this.msg,
    required this.type,
  });

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  @JsonKey(name: 'loc', defaultValue: <String>[])
  final List<String> loc;
  @JsonKey(name: 'msg')
  final String msg;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$ValidationErrorFromJson;
  static const toJsonFactory = _$ValidationErrorToJson;
  Map<String, dynamic> toJson() => _$ValidationErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidationError &&
            (identical(other.loc, loc) ||
                const DeepCollectionEquality().equals(other.loc, loc)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(loc) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ValidationErrorExtension on ValidationError {
  ValidationError copyWith({List<String>? loc, String? msg, String? type}) {
    return ValidationError(
        loc: loc ?? this.loc, msg: msg ?? this.msg, type: type ?? this.type);
  }

  ValidationError copyWithWrapped(
      {Wrapped<List<String>>? loc,
      Wrapped<String>? msg,
      Wrapped<String>? type}) {
    return ValidationError(
        loc: (loc != null ? loc.value : this.loc),
        msg: (msg != null ? msg.value : this.msg),
        type: (type != null ? type.value : this.type));
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
