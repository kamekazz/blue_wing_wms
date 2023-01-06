// ignore_for_file: prefer_final_fields

import 'package:blue_wing_wms/src/app/equipment/controller/equipment_methods.dart';
import 'package:blue_wing_wms/src/app/wave/views/wave_screen.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:blue_wing_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:blue_wing_wms/src/app/auth/models/user_model.dart';
import 'package:blue_wing_wms/src/app/providers/user_provider.dart';

// ignore: must_be_immutable
class RepleOptions extends StatelessWidget {
  EquipmentMethods _equipmentMethods = EquipmentMethods();
  RepleOptions({super.key});

  void handelEquipmentChange(String val) {
    _equipmentMethods.setUserEquipment(val);
  }

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).getUser;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pick Equipment',
                style: Theme.of(context).textTheme.headline1,
              ),
              const Icon(
                Icons.arrow_downward_sharp,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  handelEquipmentChange('cherry_picker');
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: ctPrimaryColor),
                child: const Text('Cherry Picker'),
              ),
              ElevatedButton(
                onPressed: () {
                  handelEquipmentChange('reach_truck');
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: ctPrimaryColor),
                child: const Text('Reach Truck '),
              ),
              ElevatedButton(
                onPressed: () {
                  handelEquipmentChange('wave_picker');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WaveScreen()),
                  );
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: ctPrimaryColor),
                child: const Text('Wave Picker '),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '',
                style: Theme.of(context).textTheme.headline1,
              ),
              const Icon(
                Icons.arrow_downward_sharp,
              )
            ],
          ),
          user.isAdmin
              ? SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Admin Panel')),
                )
              : SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(ttLogout)),
                )
        ],
      ),
    );
  }
}
