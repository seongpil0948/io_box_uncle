import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:io_box_uncle/config/index.dart';
import 'package:io_box_uncle/util/fb/index.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart' as k;
import 'package:shared_preferences/shared_preferences.dart';

part 'index.freezed.dart';
part 'index.g.dart';
part './model.dart';
part './repo.dart';
