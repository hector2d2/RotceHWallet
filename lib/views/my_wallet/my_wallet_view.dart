import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/routes/route_app.dart';
import 'package:rwallet/views/my_wallet/my_wallet_controller.dart';
import 'package:rwallet/views/my_wallet/widgets/card_wallet_widget.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return GetBuilder<MyWalletController>(
      init: MyWalletController(),
      builder: (MyWalletController controller) {
        return Expanded(
          child: Column(
            children: [
              CardWalletWidget(
                widthSizeCard: widthSize,
                heightSizeCard: 120,
                titleText: 'Mi Saldo Mensual',
                subTitleText: '\$1000.00',
                subTitleTextStyle: Theme.of(context).textTheme.titleLarge!,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardWalletWidget(
                    widthSizeCard: widthSize * .45,
                    heightSizeCard: 120,
                    titleText: 'Deuda De Septiembre',
                    subTitleText: '\$500.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                  ),
                  CardWalletWidget(
                    widthSizeCard: widthSize * .45,
                    heightSizeCard: 120,
                    titleText: 'Deuda Anual',
                    subTitleText: '\$500.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'SERVICIOS',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  CardWalletWidget(
                    titleText: 'CARRO',
                    subTitleText: '\$100.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    icon: Icon(
                      Icons.car_repair,
                      color: Color(0xffF3C981),
                      size: 80,
                    ),
                    onTap: () {
                      Get.toNamed(RouteApp.serviceswallet);
                    },
                  ),
                  CardWalletWidget(
                    titleText: 'TARJETAS',
                    subTitleText: '\$100.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    icon: Icon(
                      Icons.credit_card,
                      color: Color(0xffF3C981),
                      size: 80,
                    ),
                    onTap: () {
                      Get.toNamed(RouteApp.serviceswallet);
                    },
                  ),
                  CardWalletWidget(
                    titleText: 'RENTA',
                    subTitleText: '\$100.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    icon: Icon(
                      Icons.house,
                      color: Color(0xffF3C981),
                      size: 80,
                    ),
                    onTap: () {
                      Get.toNamed(RouteApp.serviceswallet);
                    },
                  ),
                  CardWalletWidget(
                    titleText: 'COMIDAS',
                    subTitleText: '\$100.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    icon: Icon(
                      IconData(58026, fontFamily: 'MaterialIcons'),
                      color: Color(0xffF3C981),
                      size: 80,
                    ),
                    onTap: () {
                      Get.toNamed(RouteApp.serviceswallet);
                    },
                  ),
                  CardWalletWidget(
                    titleText: 'VIAJES',
                    subTitleText: '\$100.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    icon: Icon(
                      Icons.airplane_ticket,
                      color: Color(0xffF3C981),
                      size: 80,
                    ),
                    onTap: () {
                      Get.toNamed(RouteApp.serviceswallet);
                    },
                  ),
                  CardWalletWidget(
                    titleText: 'INVERSIONES',
                    subTitleText: '\$100.00',
                    subTitleTextStyle: Theme.of(context).textTheme.titleMedium!,
                    icon: Icon(
                      Icons.money,
                      color: Color(0xffF3C981),
                      size: 80,
                    ),
                    onTap: () {
                      Get.toNamed(RouteApp.serviceswallet);
                    },
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
