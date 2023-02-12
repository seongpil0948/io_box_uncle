import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:io_box_uncle/config/index.dart';
import 'package:io_box_uncle/module/fcm/model.dart';
import 'package:io_box_uncle/module/ship/model/index.dart';
import 'package:io_box_uncle/util/common/index.dart';
import 'package:io_box_uncle/util/fb/index.dart';
import 'package:io_box_uncle/util/logger.dart';
import 'package:io_box_uncle/view/page/index.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as k;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
part 'index.freezed.dart';
part 'index.g.dart';
part './model.dart';
part './repo.dart';
