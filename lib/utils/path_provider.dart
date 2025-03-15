///------------PACKAGES---------------///

export 'dart:convert';

export 'package:connectivity_plus/connectivity_plus.dart';
export 'package:flutter/material.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:get/get.dart';
export 'package:shared_preferences/shared_preferences.dart';

///------------ASSETS---------------///

export 'package:ui_app/utils/assets.dart';

///------------MODELS---------------///

///------------MODULES---------------///
//authentication
export '../modules/authentication/authentication_bindings.dart';
export '../modules/authentication/authentication_controller.dart';
export '../modules/authentication/authentication_page.dart';
//home
export '../modules/home/home_bindings.dart';
export '../modules/home/home_controller.dart';
export '../modules/home/home_page.dart';

///------------ROUTES---------------///

export '../routes/app_pages.dart';
export '../routes/app_routes.dart';

///------------SERVICES---------------///

///------------THEME---------------///
export '../themes/app_theme.dart';
export '../themes/theme_controller.dart';

///------------UTILS---------------///
export '../utils/colors.dart';
export "../utils/constant.dart";
export '../utils/dependency_injection.dart';
export '../utils/local_storage.dart';
export '../utils/string.dart';
export '../utils/styles.dart';
export "../widgets/common_widgets.dart";

///------------WIDGETS---------------///

export '../widgets/snackbars.dart';
