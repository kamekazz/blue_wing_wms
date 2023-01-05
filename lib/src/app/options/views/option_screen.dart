// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:blue_wing_wms/src/app/options/views/widgets/options.dart';
import 'package:blue_wing_wms/src/app/providers/user_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OptionScreen extends StatefulWidget {
  static const String routeName = '/OptionScreen';
  const OptionScreen({super.key});

  @override
  State<OptionScreen> createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  String username = '';

  @override
  void initState() {
    super.initState();
    getUsername();
  }

  void getUsername() async {
    UserProvider _userProvider = Provider.of(context, listen: false);
    await _userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Options(),
    );
  }
}
