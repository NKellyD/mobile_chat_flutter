
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myCurrentIndex,
          backgroundColor: Colors.white,
          // selectedItemColor: AppColors.primary,
          // unselectedLabelStyle: AppTheme.titleSmall.copyWith(color: AppColors.white),

          onTap: (index){
            setState(() {
              myCurrentIndex = index;
            });
          },
          items:  const [
            BottomNavigationBarItem(icon:  Icon(FontAwesomeIcons.fileInvoice),label: 'Achat'),
            BottomNavigationBarItem(icon:  Icon(FontAwesomeIcons.boxesStacked),label: 'Stock'),
            BottomNavigationBarItem(icon:  Icon(FontAwesomeIcons.cartShopping),label: 'Vente')
          ]

      ),
      //body: ,
    );
  }
}
