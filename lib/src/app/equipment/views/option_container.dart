import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:blue_wing_wms/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:blue_wing_wms/src/app/auth/models/user_model.dart';
import 'package:blue_wing_wms/src/app/providers/user_provider.dart';

class RepleOptions extends StatelessWidget {
  const RepleOptions({super.key});

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
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: ctPrimaryColor),
                child: const Text('Cherry Picker '),
              ),
              ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: ctPrimaryColor),
                child: const Text('Reach Truck '),
              ),
              ElevatedButton(
                onPressed: () {},
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
