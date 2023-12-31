import 'package:app_fundamentals/app_fundamentals.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/user_types/user_strategy_type.dart';

import '../../../core/user_types/base_user_type.dart';
import '../../products/view/products_view.dart';
import 'package:flavorizer_config/flavorizer_config.dart';

class MainViewMobile extends BaseStatefulWidget {
  const MainViewMobile({Key? key}) : super(key: key);

  @override
  State<MainViewMobile> createState() => _MainViewMobileState();
}

class _MainViewMobileState extends BaseState<MainViewMobile> {
  DateTime? currentBackPressTime;
  Encryptor _encryptor = Encryptor();
  var encryptedData1;
  var encryptedData2;
  var encryptedData3;
  var encryptedData4;
  int userTypeValue = 0; // The initial value representing the user type
  UserStrategyType userStrategyType = UserStrategyType();
  BaseUserType? userType;
  FlavorizerConfig flavorizerConfig=FlavorizerConfig.instance;
  @override
  void initState() {
    super.initState();
    userType = userStrategyType.getUserType(userTypeValue);
    debugPrint('flavorizerConfig.variables?.toString() : ${flavorizerConfig.variables?.toString()}');
    _encryptor.init();
    navBarBloc.naveBarItemList = [
      NavBarItem(
          title: 'Main',
          widget: Container(
            height: 1000,
            width: 1000,
            color: Colors.blue,
          ),
          selectedIcon: const Icon(
            Icons.import_contacts_sharp,
            color: Colors.red,
          ),
          unSelectedIcon: const Icon(Icons.import_contacts_sharp),
          onTap: () {
            print('index 0');
            encryptedData1 = _encryptor.encryptData('mohamed ghoneim');
            print('encryptedData 1 : $encryptedData1}');
            encryptedData2 = _encryptor.encryptData('ali ali');
            print('encryptedData 2 : $encryptedData2}');
            encryptedData3 = _encryptor.encryptData('ahmed walid');
            print('encryptedData 2 : $encryptedData3}');
            encryptedData4 = _encryptor.encryptData('sayed ghali');
            print('encryptedData 4 : $encryptedData3}');
          }),
      NavBarItem(
          title: 'Products',
          widget: const ProductsView(),
          selectedIcon: const Icon(
            Icons.account_box_outlined,
            color: Colors.red,
          ),
          unSelectedIcon: const Icon(Icons.account_box_outlined),
          onTap: () {
            print('index 1');
          }),
      NavBarItem(
          title: 'Notifications',
          widget: Container(
            height: 1000,
            width: 1000,
            color: Colors.green,
          ),
          selectedIcon: const Icon(
            Icons.ac_unit_outlined,
            color: Colors.red,
          ),
          unSelectedIcon: const Icon(Icons.ac_unit_outlined),
          onTap: () {
            print('index 2');
            var d1 = _encryptor.decryptData(encryptedData1);
            print('decryptedData 1 : $d1');
            var d2 = _encryptor.decryptData(encryptedData2);

            print('decryptedData 2 : $d2');
            var d3 = _encryptor.decryptData(encryptedData3);

            print('decryptedData 3 : $d3');
            var d4 = _encryptor.decryptData(encryptedData4);

            print('decryptedData 4 : $d4');
          }),
      NavBarItem(
          title: 'Settings',
          widget: Container(
            height: 1000,
            width: 1000,
            color: Colors.black,
          ),
          selectedIcon: const Icon(
            Icons.access_alarm_rounded,
            color: Colors.red,
          ),
          unSelectedIcon: const Icon(Icons.access_alarm_rounded),
          onTap: () {
            print('userType?.getTitle() : ${userType?.getTitle()}');

            print('index 3');
          }),
    ];
  }

  @override
  Widget setBody(BuildContext context) {
    return StreamBuilder<Widget>(
        stream: navBarBloc.selectedWidget.stream,
        builder: (context, snapshot) {
          return snapshot.data ??
              Container(
                color: Colors.blue,
                height: 1000,
                width: 1000,
              );
        });
  }

  @override
  bool setResizeToAvoidBottomInset() {
    return true;
  }

  @override
  bool showBottomNavigationBar() {
    return true;
  }

  @override
  Widget? setBottomNavigationBar() {
    return const NavBarWidget(
      height: 80,
      textFontSize: 16,
      background: Colors.white,
      borderColor: Colors.grey,
      selectedColor: Colors.red,
      unSelectedColor: Colors.black,
    );
  }

// @override
// Widget? setDrawer() {
//   // TODO: implement setDrawer
//   return Column(
//     children: [
//       const Text('data'),
//     ],
//   );
// }
}
