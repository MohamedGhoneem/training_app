import 'package:app_fundamentals/app_fundamentals.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/user_types/user_strategy_type.dart';
import 'package:flavorizer_config/flavorizer_config.dart';

import '../../../../core/user_types/base_user_type.dart';
import '../../../products/presentation/view/products_view.dart';

class MainViewMobile extends BaseStatefulWidget {
  const MainViewMobile({Key? key}) : super(key: key);

  @override
  State<MainViewMobile> createState() => _MainViewMobileState();
}

class _MainViewMobileState extends BaseState<MainViewMobile> {
  DateTime? currentBackPressTime;
  final Encryptor _encryptor = Encryptor();
  var encryptedData1;
  var encryptedData2;
  var encryptedData3;
  var encryptedData4;

  //int userTypeValue = 0; // The initial value representing the user type
  UserStrategyType userStrategyType = UserStrategyType();
  BaseUserType? userType;
  FlavorizerConfig flavorizerConfig = FlavorizerConfig.instance;

  @override
  void initState() {
    super.initState();
    //userType = userStrategyType.setUserType(userTypeValue);
    debugPrint(
        'flavorizerConfig.variables?.toString() : ${flavorizerConfig.variables}',);
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
          if (kDebugMode) {
            print('index 0');
          }
          encryptedData1 = _encryptor.encryptData('mohamed ghoneim');
          if (kDebugMode) {
            print('encryptedData 1 : $encryptedData1}');
          }
          encryptedData2 = _encryptor.encryptData('ali ali');
          if (kDebugMode) {
            print('encryptedData 2 : $encryptedData2}');
          }
          encryptedData3 = _encryptor.encryptData('ahmed walid');
          if (kDebugMode) {
            print('encryptedData 2 : $encryptedData3}');
          }
          encryptedData4 = _encryptor.encryptData('sayed ghali');
          if (kDebugMode) {
            print('encryptedData 4 : $encryptedData3}');
          }
        },
      ),
      NavBarItem(
        title: 'Products',
        widget: const ProductsView(),
        selectedIcon: const Icon(
          Icons.account_box_outlined,
          color: Colors.red,
        ),
        unSelectedIcon: const Icon(Icons.account_box_outlined),
        onTap: () {
          if (kDebugMode) {
            print('index 1');
          }
        },
      ),
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
          if (kDebugMode) {
            print('index 2');
          }
          final d1 = _encryptor.decryptData(encryptedData1);
          if (kDebugMode) {
            print('decryptedData 1 : $d1');
          }
          final d2 = _encryptor.decryptData(encryptedData2);

          if (kDebugMode) {
            print('decryptedData 2 : $d2');
          }
          final d3 = _encryptor.decryptData(encryptedData3);

          if (kDebugMode) {
            print('decryptedData 3 : $d3');
          }
          final d4 = _encryptor.decryptData(encryptedData4);

          if (kDebugMode) {
            print('decryptedData 4 : $d4');
          }
        },
      ),
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
          if (kDebugMode) {
            print('userType?.getTitle() : ${userType?.getTitle()}');
          }

          if (kDebugMode) {
            print('index 3');
          }
        },
      ),
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
              child: Center(
                  child: Text(userStrategyType.baseUserType?.getTitle() ?? ""),),
            );
      },
    );
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
