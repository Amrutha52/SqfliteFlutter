
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget
{
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final _ageFormKey = GlobalKey<FormState>();
  final _heightFormKey = GlobalKey<FormState>();
  final _weightFormKey = GlobalKey<FormState>();
  var calculatedBMI = 0;
  Color myColor = Colors.transparent;

  TextEditingController _ageController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  var bmiText = TextEditingController();
  var resultText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          height: 500,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text("BMI Calculator", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.amber),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _ageFormKey,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _ageController,
                      style: TextStyle(color: Colors.white),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid Age:';
                        }

                      },

                      decoration: InputDecoration(
                        label: Text("Age"),
                        labelStyle: TextStyle(color: Colors.white),
                        // suffixIcon: Icon(Icons.email, color: Colors.white,),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                        ),
                        errorBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _heightFormKey,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _heightController,
                      style: TextStyle(color: Colors.white),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid Height ';
                        }

                      },

                      decoration: InputDecoration(
                        label: Text("Height (CM)"),
                        labelStyle: TextStyle(color: Colors.white),
                        //suffixIcon: Icon(Icons.email, color: Colors.white,),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                        ),
                        errorBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _weightFormKey,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _weightController,
                      style: TextStyle(color: Colors.white),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Please enter a valid Width:';
                        }


                      },

                      decoration: InputDecoration(
                        label: Text("Weight (Kg)"),
                        labelStyle: TextStyle(color: Colors.white),
                        //suffixIcon: Icon(Icons.email, color: Colors.white,),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.blueAccent),
                        ),
                        errorBorder: OutlineInputBorder(

                          borderSide: BorderSide(width: 2, color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: (){

                      if(_weightFormKey.currentState!.validate() && _heightFormKey.currentState!.validate())
                        {
                          CalculateBMI(_weightController.text, _heightController.text);
                        }
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                    child: Text("Calculate BMI", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                ),
                SizedBox(width: 50,),
                Text("BMI : ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text(bmiText.text, style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),),
                SizedBox(width: 10,),
                Text("Result : ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text(resultText.text, style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),),
              ],
            ),
          )
        ),
      ),
    );
  }

  void CalculateBMI(String customerWeight, String customerHeight)
  {
     var myWeight = double.parse(customerWeight);
     var myHeight = double.parse(customerHeight);

     calculatedBMI = (myWeight/((myHeight*myHeight))).toInt();
     print('calculatedBMI' + calculatedBMI.toString());

     setState(() {
       bmiText.text = calculatedBMI.toStringAsFixed(2);
       if(calculatedBMI<18.5){
         myColor = Color(0xFF87B1D9);
         resultText.text = "Under Weight";
       }
       else if(calculatedBMI>=18.5 && calculatedBMI<=24.9){
         myColor = Color(0xFF3DD365);
         resultText.text = "Medium Weight";
       }
       else if(calculatedBMI>=25 && calculatedBMI<=29.9){
         myColor = Color(0xFFEEE133);
         resultText.text = "Healthy";
       }
       else if(calculatedBMI>=30 && calculatedBMI<=34.9){
         myColor = Color(0xFFFD802E);
         resultText.text = "Medium Healthy";
       }
       else if(calculatedBMI>=35){
         myColor = Color(0xFFF95353);
         resultText.text = "Perfect Healthy";
       }
     });
  }
}
