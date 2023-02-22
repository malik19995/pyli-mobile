// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_oas3.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAbout _$AddAboutFromJson(Map<String, dynamic> json) => AddAbout(
      email: json['email'] as String?,
      number: json['number'] as String?,
      address: json['address'] as String?,
      facebook: json['facebook'] as String?,
      twitter: json['twitter'] as String?,
      instagram: json['instagram'] as String?,
      logo: json['logo'] as String?,
      termsAndCondition: json['terms_and_condition'] as String?,
    );

Map<String, dynamic> _$AddAboutToJson(AddAbout instance) => <String, dynamic>{
      'email': instance.email,
      'number': instance.number,
      'address': instance.address,
      'facebook': instance.facebook,
      'twitter': instance.twitter,
      'instagram': instance.instagram,
      'logo': instance.logo,
      'terms_and_condition': instance.termsAndCondition,
    };

AddonUpdate _$AddonUpdateFromJson(Map<String, dynamic> json) => AddonUpdate(
      name: json['name'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      picture: json['picture'] as String?,
      autoRenewal: json['auto_renewal'] as bool?,
      visibility: json['visibility'] as bool?,
      required: json['required'] as bool?,
    );

Map<String, dynamic> _$AddonUpdateToJson(AddonUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
      'picture': instance.picture,
      'auto_renewal': instance.autoRenewal,
      'visibility': instance.visibility,
      'required': instance.required,
    };

AddonsIn _$AddonsInFromJson(Map<String, dynamic> json) => AddonsIn(
      planId: json['plan_id'] as int,
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
      picture: json['picture'] as String,
      autoRenewal: json['auto_renewal'] as bool,
      visibility: json['visibility'] as bool,
      required: json['required'] as bool,
    );

Map<String, dynamic> _$AddonsInToJson(AddonsIn instance) => <String, dynamic>{
      'plan_id': instance.planId,
      'name': instance.name,
      'cost': instance.cost,
      'picture': instance.picture,
      'auto_renewal': instance.autoRenewal,
      'visibility': instance.visibility,
      'required': instance.required,
    };

AdminCustomerImport _$AdminCustomerImportFromJson(Map<String, dynamic> json) =>
    AdminCustomerImport(
      businessId: json['business_id'] as int,
      customerData: (json['customer_data'] as List<dynamic>?)
              ?.map((e) => CustomerImport.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminCustomerImportToJson(
        AdminCustomerImport instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
      'customer_data': instance.customerData.map((e) => e.toJson()).toList(),
    };

AdminEdit _$AdminEditFromJson(Map<String, dynamic> json) => AdminEdit(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      profilePicture: json['profilePicture'] as String?,
      address: json['address'] as String?,
      deviceTokens: (json['deviceTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminEditToJson(AdminEdit instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'profilePicture': instance.profilePicture,
      'address': instance.address,
      'deviceTokens': instance.deviceTokens,
    };

AdminRegister _$AdminRegisterFromJson(Map<String, dynamic> json) =>
    AdminRegister(
      email: json['email'] as String,
      password: json['password'] as String,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      profilePicture: json['profilePicture'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$AdminRegisterToJson(AdminRegister instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'profilePicture': instance.profilePicture,
      'phone': instance.phone,
      'address': instance.address,
    };

AgencyIn _$AgencyInFromJson(Map<String, dynamic> json) => AgencyIn(
      name: json['name'] as String,
      description: json['description'] as String,
      enablesEFilling: json['enablesEFilling'] as bool,
      fillingFee: (json['fillingFee'] as num).toDouble(),
    );

Map<String, dynamic> _$AgencyInToJson(AgencyIn instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'enablesEFilling': instance.enablesEFilling,
      'fillingFee': instance.fillingFee,
    };

AgencyOut _$AgencyOutFromJson(Map<String, dynamic> json) => AgencyOut(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      enablesEFilling: json['enablesEFilling'] as bool,
      fillingFee: (json['fillingFee'] as num).toDouble(),
      contractStatus: json['contractStatus'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$AgencyOutToJson(AgencyOut instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'enablesEFilling': instance.enablesEFilling,
      'fillingFee': instance.fillingFee,
      'contractStatus': instance.contractStatus,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

BodyEditBusFilesApiV1UploadFilesEditFilePost
    _$BodyEditBusFilesApiV1UploadFilesEditFilePostFromJson(
            Map<String, dynamic> json) =>
        BodyEditBusFilesApiV1UploadFilesEditFilePost(
          file: json['file'] as String,
        );

Map<String, dynamic> _$BodyEditBusFilesApiV1UploadFilesEditFilePostToJson(
        BodyEditBusFilesApiV1UploadFilesEditFilePost instance) =>
    <String, dynamic>{
      'file': instance.file,
    };

BodyLoginApiV1AuthLoginPost _$BodyLoginApiV1AuthLoginPostFromJson(
        Map<String, dynamic> json) =>
    BodyLoginApiV1AuthLoginPost(
      grantType: json['grant_type'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      scope: json['scope'] as String?,
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$BodyLoginApiV1AuthLoginPostToJson(
        BodyLoginApiV1AuthLoginPost instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'scope': instance.scope,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };

BodyUploadSignedContractApiV1ContractUploadSignedContractPost
    _$BodyUploadSignedContractApiV1ContractUploadSignedContractPostFromJson(
            Map<String, dynamic> json) =>
        BodyUploadSignedContractApiV1ContractUploadSignedContractPost(
          file: json['file'] as String,
        );

Map<String, dynamic>
    _$BodyUploadSignedContractApiV1ContractUploadSignedContractPostToJson(
            BodyUploadSignedContractApiV1ContractUploadSignedContractPost
                instance) =>
        <String, dynamic>{
          'file': instance.file,
        };

BodyUploadedFileApiV1UploadFilesUploadedFilesPost
    _$BodyUploadedFileApiV1UploadFilesUploadedFilesPostFromJson(
            Map<String, dynamic> json) =>
        BodyUploadedFileApiV1UploadFilesUploadedFilesPost(
          file: json['file'] as String,
          sharedWith: (json['sharedWith'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
        );

Map<String, dynamic> _$BodyUploadedFileApiV1UploadFilesUploadedFilesPostToJson(
        BodyUploadedFileApiV1UploadFilesUploadedFilesPost instance) =>
    <String, dynamic>{
      'file': instance.file,
      'sharedWith': instance.sharedWith,
    };

BusinessContractTemplate _$BusinessContractTemplateFromJson(
        Map<String, dynamic> json) =>
    BusinessContractTemplate(
      businessID: json['businessID'] as int,
      body: json['body'] as String,
    );

Map<String, dynamic> _$BusinessContractTemplateToJson(
        BusinessContractTemplate instance) =>
    <String, dynamic>{
      'businessID': instance.businessID,
      'body': instance.body,
    };

BusinessCustomerRegister _$BusinessCustomerRegisterFromJson(
        Map<String, dynamic> json) =>
    BusinessCustomerRegister(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String?,
      type: json['type'] as String?,
      brand: json['brand'] as String?,
      idNumber: json['idNumber'] as String?,
      address: json['address'] as String?,
      permitNumber: json['permitNumber'] as String?,
      manufacturer: json['manufacturer'] as String?,
      level: json['level'] as String?,
      agencyId: json['agency_id'] as int?,
      isOptedInForMarketing: json['isOptedInForMarketing'] as bool?,
      mailStreet: json['mailStreet'] as String?,
      mailCity: json['mailCity'] as String?,
      mailState: json['mailState'] as String?,
      mailZip: json['mailZip'] as String?,
    );

Map<String, dynamic> _$BusinessCustomerRegisterToJson(
        BusinessCustomerRegister instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'type': instance.type,
      'brand': instance.brand,
      'idNumber': instance.idNumber,
      'address': instance.address,
      'permitNumber': instance.permitNumber,
      'manufacturer': instance.manufacturer,
      'level': instance.level,
      'agency_id': instance.agencyId,
      'isOptedInForMarketing': instance.isOptedInForMarketing,
      'mailStreet': instance.mailStreet,
      'mailCity': instance.mailCity,
      'mailState': instance.mailState,
      'mailZip': instance.mailZip,
    };

BusinessDelete _$BusinessDeleteFromJson(Map<String, dynamic> json) =>
    BusinessDelete(
      businessId: json['business_id'] as int,
    );

Map<String, dynamic> _$BusinessDeleteToJson(BusinessDelete instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
    };

BusinessDetails _$BusinessDetailsFromJson(Map<String, dynamic> json) =>
    BusinessDetails(
      id: json['id'] as int,
      userID: json['userID'] as int,
      bannerURL: json['bannerURL'] as String?,
      bannerDescription: json['bannerDescription'] as String?,
      about: json['about'] as String?,
      address: json['address'] as String?,
      url: json['url'] as String?,
      licNumber: json['licNumber'] as String?,
      logo: json['logo'] as String?,
      providerName: json['providerName'] as String?,
      website: json['website'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankName: json['bankName'] as String?,
      verificationStatus: json['verificationStatus'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      customers: json['customers'],
      agencies: json['agencies'],
      contracts: json['contracts'],
      owner: json['owner'],
    );

Map<String, dynamic> _$BusinessDetailsToJson(BusinessDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'bannerURL': instance.bannerURL,
      'bannerDescription': instance.bannerDescription,
      'about': instance.about,
      'address': instance.address,
      'url': instance.url,
      'licNumber': instance.licNumber,
      'logo': instance.logo,
      'providerName': instance.providerName,
      'website': instance.website,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankName': instance.bankName,
      'verificationStatus': instance.verificationStatus,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'customers': instance.customers,
      'agencies': instance.agencies,
      'contracts': instance.contracts,
      'owner': instance.owner,
    };

BusinessEdit _$BusinessEditFromJson(Map<String, dynamic> json) => BusinessEdit(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      profilePicture: json['profilePicture'] as String?,
      address: json['address'] as String?,
      deviceTokens: (json['deviceTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      bannerURL: json['bannerURL'] as String?,
      logo: json['logo'] as String?,
      licNumber: json['licNumber'] as String?,
      providerName: json['providerName'] as String?,
      bannerDescription: json['bannerDescription'] as String?,
      website: json['website'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankName: json['bankName'] as String?,
      verificationStatus: json['verificationStatus'] as String?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$BusinessEditToJson(BusinessEdit instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'profilePicture': instance.profilePicture,
      'address': instance.address,
      'deviceTokens': instance.deviceTokens,
      'bannerURL': instance.bannerURL,
      'logo': instance.logo,
      'licNumber': instance.licNumber,
      'providerName': instance.providerName,
      'bannerDescription': instance.bannerDescription,
      'website': instance.website,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankName': instance.bankName,
      'verificationStatus': instance.verificationStatus,
      'about': instance.about,
    };

BusinessRegister _$BusinessRegisterFromJson(Map<String, dynamic> json) =>
    BusinessRegister(
      companyName: json['companyName'] as String?,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      companyPhone: json['companyPhone'] as String?,
      providerName: json['providerName'] as String?,
      companyAddress: json['companyAddress'] as String?,
      companyWebsite: json['companyWebsite'] as String?,
      bankName: json['bankName'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      logo: json['logo'] as String?,
      licNumber: json['licNumber'] as String?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$BusinessRegisterToJson(BusinessRegister instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'companyPhone': instance.companyPhone,
      'providerName': instance.providerName,
      'companyAddress': instance.companyAddress,
      'companyWebsite': instance.companyWebsite,
      'bankName': instance.bankName,
      'bankAccountNumber': instance.bankAccountNumber,
      'logo': instance.logo,
      'licNumber': instance.licNumber,
      'about': instance.about,
    };

BusinessShutdown _$BusinessShutdownFromJson(Map<String, dynamic> json) =>
    BusinessShutdown(
      businessId: json['business_id'] as int,
    );

Map<String, dynamic> _$BusinessShutdownToJson(BusinessShutdown instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
    };

CardPaymentInfo _$CardPaymentInfoFromJson(Map<String, dynamic> json) =>
    CardPaymentInfo(
      cardExpMonth: json['card_exp_month'] as int,
      cardExpYear: json['card_exp_year'] as int,
      city: json['city'] as String,
      country: json['country'] as String?,
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      postalCode: json['postal_code'] as String,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$CardPaymentInfoToJson(CardPaymentInfo instance) =>
    <String, dynamic>{
      'card_exp_month': instance.cardExpMonth,
      'card_exp_year': instance.cardExpYear,
      'city': instance.city,
      'country': instance.country,
      'line1': instance.line1,
      'line2': instance.line2,
      'postal_code': instance.postalCode,
      'state': instance.state,
    };

ClientSubscribe _$ClientSubscribeFromJson(Map<String, dynamic> json) =>
    ClientSubscribe(
      siteId: json['site_id'] as int,
      planId: json['plan_id'] as int,
      couponId: json['coupon_id'] as int?,
      addonsId: (json['addons_id'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
    );

Map<String, dynamic> _$ClientSubscribeToJson(ClientSubscribe instance) =>
    <String, dynamic>{
      'site_id': instance.siteId,
      'plan_id': instance.planId,
      'coupon_id': instance.couponId,
      'addons_id': instance.addonsId,
    };

CouponEdit _$CouponEditFromJson(Map<String, dynamic> json) => CouponEdit(
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CouponEditToJson(CouponEdit instance) =>
    <String, dynamic>{
      'description': instance.description,
    };

CouponIn _$CouponInFromJson(Map<String, dynamic> json) => CouponIn(
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      code: json['code'] as String,
      planId: json['plan_id'] as int?,
      durationType: json['durationType'] as String?,
      monthsDuration: json['monthsDuration'] as int?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$CouponInToJson(CouponIn instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'percentage': instance.percentage,
      'amount': instance.amount,
      'code': instance.code,
      'plan_id': instance.planId,
      'durationType': instance.durationType,
      'monthsDuration': instance.monthsDuration,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'limit': instance.limit,
    };

CouponOut _$CouponOutFromJson(Map<String, dynamic> json) => CouponOut(
      name: json['name'] as String,
      description: json['description'] as String,
      type: json['type'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      code: json['code'] as String,
      planId: json['plan_id'] as int?,
      durationType: json['durationType'] as String?,
      monthsDuration: json['monthsDuration'] as int?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      limit: json['limit'] as int?,
      id: json['id'] as int,
      stripeCouponId: json['stripe_coupon_id'] as String,
      active: json['active'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      plans:
          (json['plans'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      owner: json['owner'],
      subscriptions: json['subscriptions'],
    );

Map<String, dynamic> _$CouponOutToJson(CouponOut instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'percentage': instance.percentage,
      'amount': instance.amount,
      'code': instance.code,
      'plan_id': instance.planId,
      'durationType': instance.durationType,
      'monthsDuration': instance.monthsDuration,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'limit': instance.limit,
      'id': instance.id,
      'stripe_coupon_id': instance.stripeCouponId,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'plans': instance.plans,
      'owner': instance.owner,
      'subscriptions': instance.subscriptions,
    };

CreateCardPayment _$CreateCardPaymentFromJson(Map<String, dynamic> json) =>
    CreateCardPayment(
      cardNumber: json['card_number'] as String,
      cardExpMonth: json['card_exp_month'] as int,
      cardExpYear: json['card_exp_year'] as int,
      cardCvc: json['card_cvc'] as int,
      city: json['city'] as String,
      country: json['country'] as String?,
      line1: json['line1'] as String,
      line2: json['line2'] as String?,
      postalCode: json['postal_code'] as String,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$CreateCardPaymentToJson(CreateCardPayment instance) =>
    <String, dynamic>{
      'card_number': instance.cardNumber,
      'card_exp_month': instance.cardExpMonth,
      'card_exp_year': instance.cardExpYear,
      'card_cvc': instance.cardCvc,
      'city': instance.city,
      'country': instance.country,
      'line1': instance.line1,
      'line2': instance.line2,
      'postal_code': instance.postalCode,
      'state': instance.state,
    };

CustomerDelete _$CustomerDeleteFromJson(Map<String, dynamic> json) =>
    CustomerDelete(
      customerId: json['customer_id'] as int,
    );

Map<String, dynamic> _$CustomerDeleteToJson(CustomerDelete instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
    };

CustomerDetails _$CustomerDetailsFromJson(Map<String, dynamic> json) =>
    CustomerDetails(
      id: json['id'] as int,
      userID: json['userID'] as int?,
      businessID: json['businessID'] as int?,
      verified: json['verified'] as bool?,
      isOptedInForMarketing: json['isOptedInForMarketing'] as bool?,
      mainContractDate: json['mainContractDate'] as String?,
      nextMainDate: json['nextMainDate'] as String?,
      manufacturer: json['manufacturer'] as String?,
      brand: json['brand'] as String?,
      type: json['type'] as String?,
      level: json['level'] as String?,
      permitNumber: json['permitNumber'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      mailStreet: json['mailStreet'] as String?,
      mailCity: json['mailCity'] as String?,
      mailState: json['mailState'] as String?,
      mailZip: json['mailZip'] as String?,
      careOf: json['careOf'] as String?,
      area: json['area'] as String?,
      pumpingArea: json['pumpingArea'] as String?,
      rentalArea: json['rentalArea'] as String?,
      stripeCustomerId: json['stripe_customer_id'] as String?,
      agencyId: json['agency_id'] as int?,
      instructions: json['instructions'] as String?,
      appointments: json['appointments'] as String?,
      stripeDefaultPaymentMethodId:
          json['stripe_default_payment_method_id'] as String?,
      owner: json['owner'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      business: json['business'],
      agency: json['agency'],
      sites: json['sites'],
    );

Map<String, dynamic> _$CustomerDetailsToJson(CustomerDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userID': instance.userID,
      'businessID': instance.businessID,
      'verified': instance.verified,
      'isOptedInForMarketing': instance.isOptedInForMarketing,
      'mainContractDate': instance.mainContractDate,
      'nextMainDate': instance.nextMainDate,
      'manufacturer': instance.manufacturer,
      'brand': instance.brand,
      'type': instance.type,
      'level': instance.level,
      'permitNumber': instance.permitNumber,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'mailStreet': instance.mailStreet,
      'mailCity': instance.mailCity,
      'mailState': instance.mailState,
      'mailZip': instance.mailZip,
      'careOf': instance.careOf,
      'area': instance.area,
      'pumpingArea': instance.pumpingArea,
      'rentalArea': instance.rentalArea,
      'stripe_customer_id': instance.stripeCustomerId,
      'agency_id': instance.agencyId,
      'instructions': instance.instructions,
      'appointments': instance.appointments,
      'stripe_default_payment_method_id': instance.stripeDefaultPaymentMethodId,
      'owner': instance.owner,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'business': instance.business,
      'agency': instance.agency,
      'sites': instance.sites,
    };

CustomerEdit _$CustomerEditFromJson(Map<String, dynamic> json) => CustomerEdit(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String?,
      profilePicture: json['profilePicture'] as String?,
      address: json['address'] as String?,
      deviceTokens: (json['deviceTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      isOptedInForMarketing: json['isOptedInForMarketing'] as bool?,
      mainContractDate: json['mainContractDate'] as String?,
      nextMainDate: json['nextMainDate'] as String?,
      manufacturer: json['manufacturer'] as String?,
      brand: json['brand'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      mailStreet: json['mailStreet'] as String?,
      mailCity: json['mailCity'] as String?,
      mailState: json['mailState'] as String?,
      mailZip: json['mailZip'] as String?,
      careOf: json['careOf'] as String?,
      area: json['area'] as String?,
      pumpingArea: json['pumpingArea'] as String?,
      rentalArea: json['rentalArea'] as String?,
      plans:
          (json['plans'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
              [],
      agencyId: json['agency_id'] as int?,
      instructions: json['instructions'] as String?,
      appointments: json['appointments'] as String?,
      permitNumber: json['permitNumber'] as String?,
      type: json['type'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$CustomerEditToJson(CustomerEdit instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'profilePicture': instance.profilePicture,
      'address': instance.address,
      'deviceTokens': instance.deviceTokens,
      'isOptedInForMarketing': instance.isOptedInForMarketing,
      'mainContractDate': instance.mainContractDate,
      'nextMainDate': instance.nextMainDate,
      'manufacturer': instance.manufacturer,
      'brand': instance.brand,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'mailStreet': instance.mailStreet,
      'mailCity': instance.mailCity,
      'mailState': instance.mailState,
      'mailZip': instance.mailZip,
      'careOf': instance.careOf,
      'area': instance.area,
      'pumpingArea': instance.pumpingArea,
      'rentalArea': instance.rentalArea,
      'plans': instance.plans,
      'agency_id': instance.agencyId,
      'instructions': instance.instructions,
      'appointments': instance.appointments,
      'permitNumber': instance.permitNumber,
      'type': instance.type,
      'level': instance.level,
    };

CustomerImport _$CustomerImportFromJson(Map<String, dynamic> json) =>
    CustomerImport(
      email: json['email'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      isOptedInForMarketing: json['isOptedInForMarketing'] as bool? ?? false,
      manufacturer: json['manufacturer'] as String?,
      brand: json['brand'] as String?,
      mailStreet: json['mailStreet'] as String?,
      mailCity: json['mailCity'] as String?,
      mailState: json['mailState'] as String?,
      mailZip: json['mailZip'] as String?,
      careOf: json['careOf'] as String?,
      area: json['area'] as String?,
      pumpingArea: json['pumpingArea'] as String?,
      rentalArea: json['rentalArea'] as String?,
      agencyId: json['agency_id'] as int?,
      instructions: json['instructions'] as String?,
      appointments: json['appointments'] as String?,
    );

Map<String, dynamic> _$CustomerImportToJson(CustomerImport instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'isOptedInForMarketing': instance.isOptedInForMarketing,
      'manufacturer': instance.manufacturer,
      'brand': instance.brand,
      'mailStreet': instance.mailStreet,
      'mailCity': instance.mailCity,
      'mailState': instance.mailState,
      'mailZip': instance.mailZip,
      'careOf': instance.careOf,
      'area': instance.area,
      'pumpingArea': instance.pumpingArea,
      'rentalArea': instance.rentalArea,
      'agency_id': instance.agencyId,
      'instructions': instance.instructions,
      'appointments': instance.appointments,
    };

CustomerRegister _$CustomerRegisterFromJson(Map<String, dynamic> json) =>
    CustomerRegister(
      businessId: json['business_id'] as int,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String?,
      type: json['type'] as String?,
      address: json['address'] as String?,
      brand: json['brand'] as String?,
      idNumber: json['idNumber'] as String?,
      permitNumber: json['permitNumber'] as String?,
      manufacturer: json['manufacturer'] as String?,
      level: json['level'] as String?,
      agencyId: json['agency_id'] as int?,
      isOptedInForMarketing: json['isOptedInForMarketing'] as bool?,
      mailStreet: json['mailStreet'] as String?,
      mailCity: json['mailCity'] as String?,
      mailState: json['mailState'] as String?,
      mailZip: json['mailZip'] as String?,
    );

Map<String, dynamic> _$CustomerRegisterToJson(CustomerRegister instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'type': instance.type,
      'address': instance.address,
      'brand': instance.brand,
      'idNumber': instance.idNumber,
      'permitNumber': instance.permitNumber,
      'manufacturer': instance.manufacturer,
      'level': instance.level,
      'agency_id': instance.agencyId,
      'isOptedInForMarketing': instance.isOptedInForMarketing,
      'mailStreet': instance.mailStreet,
      'mailCity': instance.mailCity,
      'mailState': instance.mailState,
      'mailZip': instance.mailZip,
    };

FeesIn _$FeesInFromJson(Map<String, dynamic> json) => FeesIn(
      planId: json['plan_id'] as int,
      name: json['name'] as String,
      feePercentage: (json['feePercentage'] as num).toDouble(),
      description: json['description'] as String,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$FeesInToJson(FeesIn instance) => <String, dynamic>{
      'plan_id': instance.planId,
      'name': instance.name,
      'feePercentage': instance.feePercentage,
      'description': instance.description,
      'active': instance.active,
    };

FeesOut _$FeesOutFromJson(Map<String, dynamic> json) => FeesOut(
      id: json['id'] as int,
      name: json['name'] as String,
      feePercentage: (json['feePercentage'] as num).toDouble(),
      description: json['description'] as String,
      active: json['active'] as bool,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      plans: json['plans'],
    );

Map<String, dynamic> _$FeesOutToJson(FeesOut instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'feePercentage': instance.feePercentage,
      'description': instance.description,
      'active': instance.active,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'plans': instance.plans,
    };

FeesUpdate _$FeesUpdateFromJson(Map<String, dynamic> json) => FeesUpdate(
      name: json['name'] as String?,
      feePercentage: (json['feePercentage'] as num?)?.toDouble(),
      description: json['description'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$FeesUpdateToJson(FeesUpdate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'feePercentage': instance.feePercentage,
      'description': instance.description,
      'active': instance.active,
    };

HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) =>
    HTTPValidationError(
      detail: (json['detail'] as List<dynamic>?)
              ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HTTPValidationErrorToJson(
        HTTPValidationError instance) =>
    <String, dynamic>{
      'detail': instance.detail?.map((e) => e.toJson()).toList(),
    };

PasswordChange _$PasswordChangeFromJson(Map<String, dynamic> json) =>
    PasswordChange(
      userId: json['user_id'] as int,
      email: json['email'] as String,
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$PasswordChangeToJson(PasswordChange instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'email': instance.email,
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };

PasswordReset _$PasswordResetFromJson(Map<String, dynamic> json) =>
    PasswordReset(
      email: json['email'] as String,
    );

Map<String, dynamic> _$PasswordResetToJson(PasswordReset instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

PlanCreate _$PlanCreateFromJson(Map<String, dynamic> json) => PlanCreate(
      businessId: json['business_id'] as int?,
      name: json['name'] as String,
      cost: (json['cost'] as num).toDouble(),
      pictures: (json['pictures'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      description: json['description'] as String,
      billingFrequency: json['billingFrequency'] as String?,
      billingInterval: json['billingInterval'] as int?,
    );

Map<String, dynamic> _$PlanCreateToJson(PlanCreate instance) =>
    <String, dynamic>{
      'business_id': instance.businessId,
      'name': instance.name,
      'cost': instance.cost,
      'pictures': instance.pictures,
      'description': instance.description,
      'billingFrequency': instance.billingFrequency,
      'billingInterval': instance.billingInterval,
    };

PlanEdit _$PlanEditFromJson(Map<String, dynamic> json) => PlanEdit(
      name: json['name'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      pictures: (json['pictures'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      description: json['description'] as String?,
      billingFrequency: json['billingFrequency'] as String?,
    );

Map<String, dynamic> _$PlanEditToJson(PlanEdit instance) => <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
      'pictures': instance.pictures,
      'description': instance.description,
      'billingFrequency': instance.billingFrequency,
    };

RequestIn _$RequestInFromJson(Map<String, dynamic> json) => RequestIn(
      title: json['title'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$RequestInToJson(RequestIn instance) => <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'type': instance.type,
    };

RequestResponse _$RequestResponseFromJson(Map<String, dynamic> json) =>
    RequestResponse(
      status: json['status'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$RequestResponseToJson(RequestResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

RequestVerification _$RequestVerificationFromJson(Map<String, dynamic> json) =>
    RequestVerification(
      email: json['email'] as String,
    );

Map<String, dynamic> _$RequestVerificationToJson(
        RequestVerification instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

SiteEdit _$SiteEditFromJson(Map<String, dynamic> json) => SiteEdit(
      name: json['name'] as String,
    );

Map<String, dynamic> _$SiteEditToJson(SiteEdit instance) => <String, dynamic>{
      'name': instance.name,
    };

SiteIn _$SiteInFromJson(Map<String, dynamic> json) => SiteIn(
      name: json['name'] as String,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$SiteInToJson(SiteIn instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };

SiteOut _$SiteOutFromJson(Map<String, dynamic> json) => SiteOut(
      id: json['id'] as int,
      name: json['name'] as String,
      type: json['type'] as String,
      createdBy: json['createdBy'] as int,
      customer: json['customer'],
      subscription: json['subscription'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$SiteOutToJson(SiteOut instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'createdBy': instance.createdBy,
      'customer': instance.customer,
      'subscription': instance.subscription,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      status: json['status'] as String,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'status': instance.status,
    };

Token _$TokenFromJson(Map<String, dynamic> json) => Token(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String?,
      user: json['user'] == null
          ? null
          : UserDetails.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'user': instance.user?.toJson(),
    };

TokenPasswordChange _$TokenPasswordChangeFromJson(Map<String, dynamic> json) =>
    TokenPasswordChange(
      token: json['token'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$TokenPasswordChangeToJson(
        TokenPasswordChange instance) =>
    <String, dynamic>{
      'token': instance.token,
      'new_password': instance.newPassword,
    };

UpdateAgency _$UpdateAgencyFromJson(Map<String, dynamic> json) => UpdateAgency(
      name: json['name'] as String?,
      description: json['description'] as String?,
      enablesEFilling: json['enablesEFilling'] as bool? ?? false,
      fillingFee: (json['fillingFee'] as num?)?.toDouble(),
      contractStatus: json['contractStatus'] as String?,
    );

Map<String, dynamic> _$UpdateAgencyToJson(UpdateAgency instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'enablesEFilling': instance.enablesEFilling,
      'fillingFee': instance.fillingFee,
      'contractStatus': instance.contractStatus,
    };

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => UserDetails(
      email: json['email'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      isSuperuser: json['is_superuser'] as bool? ?? false,
      isVerified: json['is_verified'] as bool? ?? false,
      id: json['id'] as int?,
      phone: json['phone'] as String?,
      profilePicture: json['profilePicture'] as String?,
      userType: json['userType'] as String?,
      address: json['address'] as String?,
      accountStatus: json['accountStatus'] as String?,
      lastSeen: json['lastSeen'] == null
          ? null
          : DateTime.parse(json['lastSeen'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deviceTokens: (json['deviceTokens'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      business: json['business'],
      customer: json['customer'],
      admin: json['admin'],
      billings: json['billings'],
    );

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'is_superuser': instance.isSuperuser,
      'is_verified': instance.isVerified,
      'id': instance.id,
      'phone': instance.phone,
      'profilePicture': instance.profilePicture,
      'userType': instance.userType,
      'address': instance.address,
      'accountStatus': instance.accountStatus,
      'lastSeen': instance.lastSeen?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deviceTokens': instance.deviceTokens,
      'business': instance.business,
      'customer': instance.customer,
      'admin': instance.admin,
      'billings': instance.billings,
    };

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) =>
    ValidationError(
      loc: (json['loc'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          [],
      msg: json['msg'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ValidationErrorToJson(ValidationError instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'msg': instance.msg,
      'type': instance.type,
    };
