import 'package:flutter/material.dart';
import 'package:mailnews/themeData.dart';
import 'package:riverpod/riverpod.dart';

final selectedTheme = Provider<ThemeData>((ref)=> darkTheme);