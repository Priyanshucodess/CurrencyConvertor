

import 'package:flutter/material.dart';


class CurrencyConvertor extends StatefulWidget {
  const CurrencyConvertor({super.key});

  @override
  State<CurrencyConvertor> createState() => _CurrencyConvertorState();
 
}

class _CurrencyConvertorState extends State<CurrencyConvertor> {
  
   final TextEditingController textEditingController=TextEditingController();
    double result=0;
  @override
  Widget build(BuildContext context) {
      

    return  Scaffold(
      backgroundColor: Colors.brown.shade700,
      
      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        centerTitle: true,
        title: const Text('Currency Convertor',
        style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600)
        ),
      ),

      body: Padding(
        padding:  const EdgeInsets.all(14.0),
        child:  Center(
          child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                          Text('INR ${result!=0 ?result.toStringAsFixed(2): result.toStringAsFixed(0)}',
                         style: const TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.white)
                         ,),
                          const SizedBox(height: 20,),
                      TextField(
                           controller: textEditingController,
                           decoration: const InputDecoration(
                            
                            filled: true,
                            fillColor: Colors.white,
                            
                            enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                             borderSide: BorderSide(color: Colors.black,)),
        
                            focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
                             borderSide: BorderSide(color: Colors.black,)),
                             prefixIcon: Icon(Icons.monetization_on_rounded),
                             hintText: 'Please enter the amount in USD',
                               
                           ),
                           keyboardType: const TextInputType.numberWithOptions(),
                      ),
                      const SizedBox(height: 20,),

                      TextButton(onPressed:(){
                        setState(() {
                          
                        result=double.parse(textEditingController.text)*83.38;
                        });
                      },

                      style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))) ),
                      minimumSize: MaterialStatePropertyAll(Size(150, 20)),
                      ), 
                      
                      child: const Text('Convert',
                      style: TextStyle(color: Colors.white,fontSize: 15),) 
                      
                      
                      ),

                 ],
          ),
        ),
      ),


    );
  }
}