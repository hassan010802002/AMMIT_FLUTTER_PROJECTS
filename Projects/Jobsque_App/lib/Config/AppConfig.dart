// ignore_for_file: non_constant_identifier_names

String TextFontFamily = "SF Pro Display";

/// *******************************************************************************************

String loginApiUrl = "https://project2.amit-learning.com/api/auth/login";
String profileApiUrl = "https://project2.amit-learning.com/api/auth/profile";
String profileUpdateDataApiUrl = "https://project2.amit-learning.com/api/user/profile/edit?";
String profileUpdateUserDataApiUrl = "https://project2.amit-learning.com/api/auth/user/update";
String JobsApiUrl = "https://project2.amit-learning.com/api/jobs";
String filterJobsApiUrl = "https://project2.amit-learning.com/api/jobs/filter";

String MainTokenKey = "API_TOKEN_KEY";
String registrationTokenKey = "Registration Token";

String? _API_TOKEN_KEY ;
set ApiTokenKey(String? ApiToken) => _API_TOKEN_KEY=ApiToken;
String? get ApiTokenKey => _API_TOKEN_KEY;
String responseTokenKey = 'token';

/// *******************************************************************************************

String? _registrationToken ;
set registrationToken(String? token) => _registrationToken=token;
String? get registrationToken => _registrationToken;