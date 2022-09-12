import 'package:flutter/material.dart';

import 'flavor.dart';

///
/// App theme versions
///
enum ThemeVersion {
  /// Initial version
  v1,

  /// Version 2.0
  v2
}

///
/// App settings
///
class Environment {
  /// App name
  final String appName;

  /// Current [Flavor]
  final Flavor? flavor;

  /// App base URL
  final String baseUrl;

  /// App home base URL
  final String userOnboardingBaseUrl;

  /// Onboarding API secret
  final String apiSecret;

  /// Onboarding API KEY
  final String apiKey;

  /// Onboarding App base URL
  final String onBoardingBaseUrl;

  /// AllowMe API Key
  final String allowMeApiKey;

  /// AllowMe mode (release|debug)
  final String allowmeMode;

  /// Liveness service Id
  final String neowayId;

  /// Liveness service key
  final String neowayKey;

  /// Google Places API Key
  final String googlePlacesApiKey;

  /// Opening Terms URL
  final String openingTerms;

  /// Rules and Parameters URL
  final String rulesAndParameters;

  /// Pix Term URL
  final String pixTerm;

  /// Intermediation Contract URL
  final String intermediationContract;

  /// Current whitelabel code
  final String whitelabel;

  /// If the current whitelabel is the genial whitelabel
  bool get isGenial => whitelabel == 'genial';

  /// Value for X-Origin-ID header
  final String xOrigin;

  /// BolsaFacil App base URL
  final String bolsaFacilBaseUrl;

  /// BolsaFacil App bucket URL
  final String bolsaFacilBucket;

  /// BolsaFacil App mostraded URL
  final String bolsaFacilMostraded;

  /// The route to redirect after the login is completed
  final String homeRoute;

  /// Account opening prospectus document URL
  final String accountOpeningProspectusUrl;

  /// The theme mode to use in the app
  final ThemeMode themeMode;

  /// Theme version
  final ThemeVersion themeVersion;

  ///
  /// Create a new [Environment]
  ///
  Environment({
    required this.appName,
    required this.baseUrl,
    required this.userOnboardingBaseUrl,
    required this.apiSecret,
    required this.apiKey,
    required this.allowMeApiKey,
    required this.allowmeMode,
    required this.neowayId,
    required this.neowayKey,
    required this.googlePlacesApiKey,
    required this.whitelabel,
    required this.openingTerms,
    required this.rulesAndParameters,
    required this.pixTerm,
    required this.intermediationContract,
    required this.onBoardingBaseUrl,
    required this.xOrigin,
    required this.bolsaFacilBaseUrl,
    required this.bolsaFacilBucket,
    required this.bolsaFacilMostraded,
    required this.homeRoute,
    required this.accountOpeningProspectusUrl,
    required this.themeMode,
    this.themeVersion = ThemeVersion.v1,
    this.flavor,
  });
}
