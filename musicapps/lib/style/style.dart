import 'package:flutter/material.dart';

Color offpink=Color(0xffFDE2F3);
Color Black=Color(0xff070808);
Color Bule=Color(0xff917FB3);
Color White= Colors.white;
Color Listcolor= Color(0xff3b3a57);



TextStyle Head24Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 24,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400
  );
}

TextStyle Head9Text(textColor){
  return TextStyle(
      color: textColor,
      fontSize: 9,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w500
  );
}
InputDecoration AppInputDecoration(label){
  return InputDecoration(
     prefixIcon: Icon(Icons.search_outlined,color: White,),
     prefixIconConstraints: BoxConstraints(
        minWidth: 60,
       // minHeight: 25,
      ),
      focusedBorder:  const OutlineInputBorder(
         borderRadius: BorderRadius.all(Radius.circular(40)),
        //borderSide: const BorderSide(color:Colors.amber, width: 1),
      ),
      fillColor: Color(0xff917FB3),
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(60, 10, 10, 20),
      enabledBorder: const OutlineInputBorder(
         borderRadius: BorderRadius.all(Radius.circular(40)),
       // borderSide: const BorderSide(color: Colors.white, width: 0.0),
      ),
      border: OutlineInputBorder(
       
      ),
      labelText: label, labelStyle:
                  new TextStyle(color: Colors.white, fontSize: 16.0)
  );
}

TextStyle Head20Text(textColor, fontsize){
  return TextStyle(
      color: textColor,
      fontSize: fontsize,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w500
  );}