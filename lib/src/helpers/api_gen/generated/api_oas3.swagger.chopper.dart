// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_oas3.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiOas3 extends ApiOas3 {
  _$ApiOas3([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiOas3;

  @override
  Future<Response<Token>> _apiV1AuthLoginPost(
      {required BodyLoginApiV1AuthLoginPost? body}) {
    final Uri $url = Uri.parse('/api/v1/auth/login');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthLogoutGet() {
    final Uri $url = Uri.parse('/api/v1/auth/logout');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserDetails>> _apiV1AuthVerificationGet(
      {required String? token}) {
    final Uri $url = Uri.parse('/api/v1/auth/verification');
    final Map<String, dynamic> $params = <String, dynamic>{'token': token};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<UserDetails, UserDetails>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthVerificationRequestPost(
      {required RequestVerification? body}) {
    final Uri $url = Uri.parse('/api/v1/auth/verification/request');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthPasswordResetPost(
      {required PasswordReset? body}) {
    final Uri $url = Uri.parse('/api/v1/auth/password/reset');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthPasswordResetConfirmGet(
      {required String? token}) {
    final Uri $url = Uri.parse('/api/v1/auth/password/reset/confirm');
    final Map<String, dynamic> $params = <String, dynamic>{'token': token};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Token>> _apiV1AuthPasswordChangePut(
      {required TokenPasswordChange? body}) {
    final Uri $url = Uri.parse('/api/v1/auth/password/change');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<Token>> _apiV1AuthPasswordChangePost(
      {required PasswordChange? body}) {
    final Uri $url = Uri.parse('/api/v1/auth/password/change');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<Token>> _apiV1AuthTokenLoginGet({required String? token}) {
    final Uri $url = Uri.parse('/api/v1/auth/token_login');
    final Map<String, dynamic> $params = <String, dynamic>{'token': token};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthEmailLoginPost({required String? email}) {
    final Uri $url = Uri.parse('/api/v1/auth/email_login');
    final Map<String, dynamic> $params = <String, dynamic>{'email': email};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<UserDetails>> _apiV1AdminSignupPost(
      {required AdminRegister? body}) {
    final Uri $url = Uri.parse('/api/v1/admin/signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserDetails, UserDetails>($request);
  }

  @override
  Future<Response<UserDetails>> _apiV1AdminMeGet() {
    final Uri $url = Uri.parse('/api/v1/admin/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDetails, UserDetails>($request);
  }

  @override
  Future<Response<UserDetails>> _apiV1AdminUpdatePatch(
      {required AdminEdit? body}) {
    final Uri $url = Uri.parse('/api/v1/admin/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserDetails, UserDetails>($request);
  }

  @override
  Future<Response<List<UserDetails>>> _apiV1AdminUsersGet() {
    final Uri $url = Uri.parse('/api/v1/admin/users');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<UserDetails>, UserDetails>($request);
  }

  @override
  Future<Response<UserDetails>> _apiV1AdminUserUserIdGet(
      {required int? userId}) {
    final Uri $url = Uri.parse('/api/v1/admin/user/${userId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDetails, UserDetails>($request);
  }

  @override
  Future<Response<List<BusinessDetails>>> _apiV1AdminBusinessesGet() {
    final Uri $url = Uri.parse('/api/v1/admin/businesses');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<BusinessDetails>, BusinessDetails>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminBusinessShutdownPatch(
      {required BusinessShutdown? body}) {
    final Uri $url = Uri.parse('/api/v1/admin/business/shutdown');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Status>> _apiV1AdminBusinessDeleteDelete(
      {required BusinessDelete? body}) {
    final Uri $url = Uri.parse('/api/v1/admin/business/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<BusinessDetails>> _apiV1AdminBusinessUpdateBusinessIdPut({
    required int? businessId,
    required BusinessEdit? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/business/update/${businessId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BusinessDetails, BusinessDetails>($request);
  }

  @override
  Future<Response<BusinessDetails>> _apiV1AdminBusinessSuspendPatch(
      {required int? businessId}) {
    final Uri $url = Uri.parse('/api/v1/admin/business/suspend');
    final Map<String, dynamic> $params = <String, dynamic>{
      'business_id': businessId
    };
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<BusinessDetails, BusinessDetails>($request);
  }

  @override
  Future<Response<BusinessDetails>> _apiV1AdminBusinessLiftSuspensionPatch(
      {required int? businessId}) {
    final Uri $url = Uri.parse('/api/v1/admin/business/lift_suspension');
    final Map<String, dynamic> $params = <String, dynamic>{
      'business_id': businessId
    };
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<BusinessDetails, BusinessDetails>($request);
  }

  @override
  Future<Response<BusinessDetails>> _apiV1AdminBusinessBusinessIdGet(
      {required int? businessId}) {
    final Uri $url = Uri.parse('/api/v1/admin/business/${businessId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BusinessDetails, BusinessDetails>($request);
  }

  @override
  Future<Response<List<CustomerDetails>>> _apiV1AdminCustomersGet({
    bool? marketing,
    String? agencyId,
    bool? verified,
    String? manufacturer,
    String? city,
    String? date,
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/customers');
    final Map<String, dynamic> $params = <String, dynamic>{
      'marketing': marketing,
      'agency_id': agencyId,
      'verified': verified,
      'manufacturer': manufacturer,
      'city': city,
      'date': date,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<CustomerDetails>, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1AdminCustomerCustomerIdGet(
      {required int? customerId}) {
    final Uri $url = Uri.parse('/api/v1/admin/customer/${customerId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1AdminCustomerUpdateCustomerIdPut({
    required int? customerId,
    required CustomerEdit? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/admin/customer/update/${customerId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminCustomersImportPost(
      {required AdminCustomerImport? body}) {
    final Uri $url = Uri.parse('/api/v1/admin/customers/import');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Status>> _apiV1AdminCustomerDeleteDelete(
      {required CustomerDelete? body}) {
    final Uri $url = Uri.parse('/api/v1/admin/customer/delete');
    final $body = body;
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Status, Status>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AdminClearDatabasePost() {
    final Uri $url = Uri.parse('/api/v1/admin/clear_database');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Token>> _apiV1CustomerSignupPost(
      {required CustomerRegister? body}) {
    final Uri $url = Uri.parse('/api/v1/customer/signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1CustomerMeGet() {
    final Uri $url = Uri.parse('/api/v1/customer/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1CustomerUpdateMePut(
      {required CustomerEdit? body}) {
    final Uri $url = Uri.parse('/api/v1/customer/update/me');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<Token>> _apiV1BusinessSignupPost(
      {required BusinessRegister? body}) {
    final Uri $url = Uri.parse('/api/v1/business/signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Token, Token>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1BusinessCustomerSignupPost(
      {required BusinessCustomerRegister? body}) {
    final Uri $url = Uri.parse('/api/v1/business/customer/signup');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1BusinessCustomerUpdateCustomerIdPut({
    required int? customerId,
    required CustomerEdit? body,
  }) {
    final Uri $url =
        Uri.parse('/api/v1/business/customer/update/${customerId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1BusinessCustomerSuspendPatch(
      {required int? customerId}) {
    final Uri $url = Uri.parse('/api/v1/business/customer/suspend');
    final Map<String, dynamic> $params = <String, dynamic>{
      'customer_id': customerId
    };
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1BusinessCustomerVerifyPatch(
      {required int? customerId}) {
    final Uri $url = Uri.parse('/api/v1/business/customer/verify');
    final Map<String, dynamic> $params = <String, dynamic>{
      'customer_id': customerId
    };
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1BusinessCustomerLiftSuspensionPatch(
      {required int? customerId}) {
    final Uri $url = Uri.parse('/api/v1/business/customer/lift_suspension');
    final Map<String, dynamic> $params = <String, dynamic>{
      'customer_id': customerId
    };
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<List<CustomerDetails>>> _apiV1BusinessCustomersGet({
    bool? marketing,
    String? agencyId,
    bool? verified,
    String? manufacturer,
    String? city,
    String? date,
  }) {
    final Uri $url = Uri.parse('/api/v1/business/customers');
    final Map<String, dynamic> $params = <String, dynamic>{
      'marketing': marketing,
      'agency_id': agencyId,
      'verified': verified,
      'manufacturer': manufacturer,
      'city': city,
      'date': date,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<CustomerDetails>, CustomerDetails>($request);
  }

  @override
  Future<Response<CustomerDetails>> _apiV1BusinessCustomersCustomerIdGet(
      {required int? customerId}) {
    final Uri $url = Uri.parse('/api/v1/business/customers/${customerId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CustomerDetails, CustomerDetails>($request);
  }

  @override
  Future<Response<BusinessDetails>> _apiV1BusinessMeGet() {
    final Uri $url = Uri.parse('/api/v1/business/me');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BusinessDetails, BusinessDetails>($request);
  }

  @override
  Future<Response<BusinessDetails>> _apiV1BusinessBusinessIdGet(
      {required int? businessId}) {
    final Uri $url = Uri.parse('/api/v1/business/${businessId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BusinessDetails, BusinessDetails>($request);
  }

  @override
  Future<Response<BusinessDetails>> _apiV1BusinessUpdateMePut(
      {required BusinessEdit? body}) {
    final Uri $url = Uri.parse('/api/v1/business/update/me');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<BusinessDetails, BusinessDetails>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BusinessCustomersImportPost(
      {required List<CustomerImport>? body}) {
    final Uri $url = Uri.parse('/api/v1/business/customers/import');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PlanCreatePost({required PlanCreate? body}) {
    final Uri $url = Uri.parse('/api/v1/plan/create');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PlansGet() {
    final Uri $url = Uri.parse('/api/v1/plans');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PlanPlanIdGet({required int? planId}) {
    final Uri $url = Uri.parse('/api/v1/plan/${planId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PlanUpdatePlanIdPut({
    required int? planId,
    required PlanEdit? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/plan/update/${planId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PlanDeactivatePatch({required int? planId}) {
    final Uri $url = Uri.parse('/api/v1/plan/deactivate');
    final Map<String, dynamic> $params = <String, dynamic>{'plan_id': planId};
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SubscriptionSubscribePost(
      {required ClientSubscribe? body}) {
    final Uri $url = Uri.parse('/api/v1/subscription/subscribe');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SubscriptionsGet({
    int? siteId,
    bool? cancelled,
  }) {
    final Uri $url = Uri.parse('/api/v1/subscriptions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'site_id': siteId,
      'cancelled': cancelled,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SubscriptionCancelPost(
      {required int? subscriptionId}) {
    final Uri $url = Uri.parse('/api/v1/subscription/cancel');
    final Map<String, dynamic> $params = <String, dynamic>{
      'subscription_id': subscriptionId
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SubscriptionSubscriptionIdGet(
      {required int? subscriptionId}) {
    final Uri $url = Uri.parse('/api/v1/subscription/${subscriptionId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentPaySubscriptionGet(
      {required int? subscriptionId}) {
    final Uri $url = Uri.parse('/api/v1/payment/pay_subscription');
    final Map<String, dynamic> $params = <String, dynamic>{
      'subscription_id': subscriptionId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentWebhookPost({required Object? body}) {
    final Uri $url = Uri.parse('/api/v1/payment/webhook');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Object>> _apiV1PaymentMethodAddPost(
      {required CreateCardPayment? body}) {
    final Uri $url = Uri.parse('/api/v1/payment/method/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _apiV1PaymentMethodDefaultPost(
      {required String? stripePaymentMethodId}) {
    final Uri $url = Uri.parse('/api/v1/payment/method/default');
    final Map<String, dynamic> $params = <String, dynamic>{
      'stripe_payment_method_id': stripePaymentMethodId
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<List<Object>>> _apiV1PaymentMethodsGet() {
    final Uri $url = Uri.parse('/api/v1/payment/methods');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Object>, Object>($request);
  }

  @override
  Future<Response<Object>> _apiV1PaymentMethodStripePaymentMethodIdGet(
      {required String? stripePaymentMethodId}) {
    final Uri $url =
        Uri.parse('/api/v1/payment/method/${stripePaymentMethodId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<Object>> _apiV1PaymentMethodUpdateStripePaymentMethodIdPut({
    required String? stripePaymentMethodId,
    required CardPaymentInfo? body,
  }) {
    final Uri $url =
        Uri.parse('/api/v1/payment/method/update/${stripePaymentMethodId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Object, Object>($request);
  }

  @override
  Future<Response<dynamic>>
      _apiV1PaymentMethodsDeleteStripePaymentMethodIdDelete(
          {required String? stripePaymentMethodId}) {
    final Uri $url =
        Uri.parse('/api/v1/payment/methods/delete/${stripePaymentMethodId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentInvoiceCreatePost(
      {required Object? customerId}) {
    final Uri $url = Uri.parse('/api/v1/payment/invoice/create');
    final Map<String, dynamic> $params = <String, dynamic>{
      'customer_id': customerId
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentInvoicesGet({int? customerId}) {
    final Uri $url = Uri.parse('/api/v1/payment/invoices');
    final Map<String, dynamic> $params = <String, dynamic>{
      'customer_id': customerId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentInvoicePayGet(
      {required String? stripeInvoiceId}) {
    final Uri $url = Uri.parse('/api/v1/payment/invoice/pay');
    final Map<String, dynamic> $params = <String, dynamic>{
      'stripe_invoice_id': stripeInvoiceId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1PaymentTransactionsGet({
    String? lastTransactionId,
    int? customerId,
  }) {
    final Uri $url = Uri.parse('/api/v1/payment/transactions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'last_transaction_id': lastTransactionId,
      'customer_id': customerId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillingCustomerIdGet(
      {required Object? customerId}) {
    final Uri $url = Uri.parse('/api/v1/billing/${customerId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1BillingsGet({int? siteId}) {
    final Uri $url = Uri.parse('/api/v1/billings');
    final Map<String, dynamic> $params = <String, dynamic>{'site_id': siteId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<FeesOut>> _apiV1FeeAddPost({required FeesIn? body}) {
    final Uri $url = Uri.parse('/api/v1/fee/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<FeesOut, FeesOut>($request);
  }

  @override
  Future<Response<List<FeesOut>>> _apiV1FeesGet() {
    final Uri $url = Uri.parse('/api/v1/fees');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<FeesOut>, FeesOut>($request);
  }

  @override
  Future<Response<FeesOut>> _apiV1FeeFeeIdGet({required int? feeId}) {
    final Uri $url = Uri.parse('/api/v1/fee/${feeId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<FeesOut, FeesOut>($request);
  }

  @override
  Future<Response<FeesOut>> _apiV1FeeUpdateFeeIdPatch({
    required int? feeId,
    required FeesUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/fee/update/${feeId}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<FeesOut, FeesOut>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1FeeDeleteDelete({required int? feeId}) {
    final Uri $url = Uri.parse('/api/v1/fee/delete');
    final Map<String, dynamic> $params = <String, dynamic>{'fee_id': feeId};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<CouponOut>> _apiV1CouponAddPost({required CouponIn? body}) {
    final Uri $url = Uri.parse('/api/v1/coupon/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<CouponOut, CouponOut>($request);
  }

  @override
  Future<Response<List<CouponOut>>> _apiV1CouponsGet() {
    final Uri $url = Uri.parse('/api/v1/coupons');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<CouponOut>, CouponOut>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1CouponUpdateCouponIdPatch({
    required int? couponId,
    required CouponEdit? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/coupon/update/${couponId}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1CouponDeactivateCouponIdPost(
      {required int? couponId}) {
    final Uri $url = Uri.parse('/api/v1/coupon/deactivate/${couponId}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<CouponOut>> _apiV1CouponCouponIdGet(
      {required int? couponId}) {
    final Uri $url = Uri.parse('/api/v1/coupon/${couponId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CouponOut, CouponOut>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ContractGetContractCusCustomeIDGet({
    required int? customeID,
    int? contractID,
  }) {
    final Uri $url =
        Uri.parse('/api/v1/contract/get_contract_cus/${customeID}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'contractID': contractID
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ContractGetContractBusBusinessIDGet({
    required int? businessID,
    int? contractID,
  }) {
    final Uri $url =
        Uri.parse('/api/v1/contract/get_contract_bus/${businessID}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'contractID': contractID
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ContractGetContractGet({int? contractID}) {
    final Uri $url = Uri.parse('/api/v1/contract/get_contract');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ContractID': contractID
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ContractGetSignedContractUrlConPatch(
      {required String? contractID}) {
    final Uri $url =
        Uri.parse('/api/v1/contract/get_signed_contract/{url_con}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'contractID': contractID
    };
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ContractUploadSignedContractPost(
      {required BodyUploadSignedContractApiV1ContractUploadSignedContractPost
          body}) {
    final Uri $url = Uri.parse('/api/v1/contract/upload_signed_contract');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ContractBusinessContractTemplatePost(
      {required BusinessContractTemplate? body}) {
    final Uri $url = Uri.parse('/api/v1/contract/businessContractTemplate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AgencyOut>> _apiV1AgencyAddPost({required AgencyIn? body}) {
    final Uri $url = Uri.parse('/api/v1/agency/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AgencyOut, AgencyOut>($request);
  }

  @override
  Future<Response<AgencyOut>> _apiV1AgencyAgencyIdGet(
      {required int? agencyId}) {
    final Uri $url = Uri.parse('/api/v1/agency/${agencyId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AgencyOut, AgencyOut>($request);
  }

  @override
  Future<Response<AgencyOut>> _apiV1AgencyUpdateAgencyIdPut({
    required int? agencyId,
    required UpdateAgency? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/agency/update/${agencyId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AgencyOut, AgencyOut>($request);
  }

  @override
  Future<Response<RequestResponse>> _apiV1AgencyDeleteAgencyIdDelete(
      {required int? agencyId}) {
    final Uri $url = Uri.parse('/api/v1/agency/delete/${agencyId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<RequestResponse, RequestResponse>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ExportUsersGet() {
    final Uri $url = Uri.parse('/api/v1/export/users');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ExportCustomersGet() {
    final Uri $url = Uri.parse('/api/v1/export/customers');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1ExportBusinessesGet() {
    final Uri $url = Uri.parse('/api/v1/export/businesses');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1RequestAddPost({required RequestIn? body}) {
    final Uri $url = Uri.parse('/api/v1/request/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1RequestsGet() {
    final Uri $url = Uri.parse('/api/v1/requests');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1LogsSubscriptionsGet({
    String? startDate,
    String? endDate,
  }) {
    final Uri $url = Uri.parse('/api/v1/logs/subscriptions');
    final Map<String, dynamic> $params = <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1LogsPaymentsGet({
    String? startDate,
    String? endDate,
  }) {
    final Uri $url = Uri.parse('/api/v1/logs/payments');
    final Map<String, dynamic> $params = <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1LogsInvoiceGet({
    String? startDate,
    String? endDate,
  }) {
    final Uri $url = Uri.parse('/api/v1/logs/invoice');
    final Map<String, dynamic> $params = <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1LogsContractGet({
    String? startDate,
    String? endDate,
  }) {
    final Uri $url = Uri.parse('/api/v1/logs/contract');
    final Map<String, dynamic> $params = <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1UploadFilesUploadedFilesPost({
    required int? userId,
    required BodyUploadedFileApiV1UploadFilesUploadedFilesPost body,
  }) {
    final Uri $url = Uri.parse('/api/v1/uploadFiles/uploaded_files');
    final Map<String, dynamic> $params = <String, dynamic>{'user_id': userId};
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1UploadFilesDeleteFileUserIDDelete(
      {required int? fileID}) {
    final Uri $url = Uri.parse('/api/v1/uploadFiles/delete_file/{userID}');
    final Map<String, dynamic> $params = <String, dynamic>{'fileID': fileID};
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1UploadFilesGetFilesUserIDGet({
    required int? userID,
    int? fileID,
  }) {
    final Uri $url = Uri.parse('/api/v1/uploadFiles/get_files/${userID}');
    final Map<String, dynamic> $params = <String, dynamic>{'fileID': fileID};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1UploadFilesEditFilePost({
    required String? fileID,
    required String? userID,
    required BodyEditBusFilesApiV1UploadFilesEditFilePost body,
  }) {
    final Uri $url = Uri.parse('/api/v1/uploadFiles/edit_file');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fileID': fileID,
      'userID': userID,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1UploadFilesAddSharewithFilePost({
    required String? fileID,
    required String? userID,
    required String? sharewith,
  }) {
    final Uri $url = Uri.parse('/api/v1/uploadFiles/add_sharewith_file');
    final Map<String, dynamic> $params = <String, dynamic>{
      'fileID': fileID,
      'userID': userID,
      'sharewith': sharewith,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AddonAddPost({required AddonsIn? body}) {
    final Uri $url = Uri.parse('/api/v1/addon/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AddonsGet({int? planId}) {
    final Uri $url = Uri.parse('/api/v1/addons');
    final Map<String, dynamic> $params = <String, dynamic>{'plan_id': planId};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AddonAddonIdGet({required int? addonId}) {
    final Uri $url = Uri.parse('/api/v1/addon/${addonId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AddonUpdateAddonIdPut({
    required int? addonId,
    required AddonUpdate? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/addon/update/${addonId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<RequestResponse>> _apiV1AddonDeleteAddonIdDelete(
      {required int? addonId}) {
    final Uri $url = Uri.parse('/api/v1/addon/delete/${addonId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<RequestResponse, RequestResponse>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SiteAddPost({required SiteIn? body}) {
    final Uri $url = Uri.parse('/api/v1/site/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<SiteOut>>> _apiV1SitesGet() {
    final Uri $url = Uri.parse('/api/v1/sites');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<SiteOut>, SiteOut>($request);
  }

  @override
  Future<Response<SiteOut>> _apiV1SiteSiteIdGet({required int? siteId}) {
    final Uri $url = Uri.parse('/api/v1/site/${siteId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SiteOut, SiteOut>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SiteUpdateSiteIdPatch({
    required int? siteId,
    required SiteEdit? body,
  }) {
    final Uri $url = Uri.parse('/api/v1/site/update/${siteId}');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SiteDeactivateSiteIdPatch(
      {required int? siteId}) {
    final Uri $url = Uri.parse('/api/v1/site/deactivate/${siteId}');
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1SiteReactivateSiteIdPatch(
      {required int? siteId}) {
    final Uri $url = Uri.parse('/api/v1/site/reactivate/${siteId}');
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AboutAddPost({required AddAbout? body}) {
    final Uri $url = Uri.parse('/api/v1/about/add');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AboutGetGet() {
    final Uri $url = Uri.parse('/api/v1/about/get');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AboutUpdatePatch({required AddAbout? body}) {
    final Uri $url = Uri.parse('/api/v1/about/update');
    final $body = body;
    final Request $request = Request(
      'PATCH',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1Get() {
    final Uri $url = Uri.parse('/api/v1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1TaskGet() {
    final Uri $url = Uri.parse('/api/v1/task');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthPyliAdminGet() {
    final Uri $url = Uri.parse('/api/v1/auth/pyli_admin');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<List<AgencyOut>>> _apiV1AgencyGet() {
    final Uri $url = Uri.parse('/api/v1/agency');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<AgencyOut>, AgencyOut>($request);
  }

  @override
  Future<Response<dynamic>> _apiV1AuthLearDatabaseNoAuthPost() {
    final Uri $url = Uri.parse('/api/v1/auth/lear_database_no_auth');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiSendGet({required String? email}) {
    final Uri $url = Uri.parse('/api/send');
    final Map<String, dynamic> $params = <String, dynamic>{'email': email};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
