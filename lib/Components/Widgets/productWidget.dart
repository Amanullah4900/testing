
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/AppConstants/AppContents.dart';
import 'package:testing/Components/AppUtils.dart';
import 'package:testing/Models/ApiModels/ProductModel.dart';

class ProductWidget extends StatefulWidget {

  Product product;
  Function onTap;
  ProductWidget(this.product,this.onTap);
  
  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {

  var utils = AppUtils();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        child: Text(widget.product.id.toString()+"  "+widget.product.title,style: utils.descriptionTextStyle(redColor),),
      ),
    );
  }
}
