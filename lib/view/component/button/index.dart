import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_box_uncle/module/app/bloc/app_bloc.dart';
import 'package:io_box_uncle/module/ship/bloc/shipment_bloc.dart';
import 'package:io_box_uncle/module/ship/model/index.dart';
import 'package:io_box_uncle/view/component/input/single_image.dart';
import 'package:io_box_uncle/view/component/pop/index.dart';
import 'package:path/path.dart' as p;
part "./ship_status_button.dart";
part "./ship_filter.dart";
