import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/AppConstants/AppContents.dart';
import 'package:testing/Components/AppUtils.dart';
import 'package:testing/Components/Widgets/productWidget.dart';
import 'package:testing/Components/Widgets/saleProductWidget.dart';
import 'package:testing/Models/ApiModels/ProductModel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Product> products=[];

  var utils = AppUtils();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    products.add(Product(1,title: "P1",screen: HomeScreen()),);
    products.add(Product(2,title: "P2",screen: SaleProWidget()));
    products.add(Product(3,title: "P3"));
    products.add(Product(4,title: "P4"));
    products.add(Product(5,title: "P5"));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            children: [
              SaleProWidget(),
              for(var item in products)
                ProductWidget(item,(){print(item.id);}),

              for(var item in products)
                utils.settingsRowItem(item.title, CupertinoIcons.right_chevron, redColor, (){

                }),

              for(var item in products)
                utils.settingsRowItem2(item.title,Icon(CupertinoIcons.right_chevron,color: redColor,size: 20,) , (){})
            ],
        ),
      ),
    );
  }
}
