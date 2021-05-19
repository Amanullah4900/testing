

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/AppConstants/AppContents.dart';

class AppUtils{


  descriptionTextStyle(color)
  {
    return TextStyle(color: color,fontSize: normalFontSize,fontFamily: "Schyler2132",fontWeight: normalFontWeight);
  }


  titleTextStyle(color)
  {
    return TextStyle(color: color,fontSize: titleFontSize,fontFamily: "Schyler2137",fontWeight: titleFontWeight);
  }


  buttonSmall(bgColor,text,textColor,onTap,)
  {
    return null;
  }

  settingsRowItem(title,icon,iconColor,onTap){
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: titleTextStyle(redColor),),
            Icon(icon,color: iconColor,size: 20,)
          ],
        ),
      ),
    );
  }

  settingsRowItem2(title,icon,onTap){
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: titleTextStyle(redColor),),
            icon
          ],
        ),
      ),
    );
  }






}