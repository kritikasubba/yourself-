import 'package:flutter/material.dart';

import 'package:yourself/app/resources/size_constants.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
            color:const Color(0xff5B8C5A),
          ),
          child: Stack(
            children: [
              Positioned(
                  bottom:40,
                  
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Bank Details', style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold
                    ))),
                  )),
            ],
          ),
        ),

      
     
               
               
             
             
        
      ],
    ));
  }
}

class FeildWidget extends StatelessWidget {
  String? title;
  FeildWidget({
    required this.title,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixText: title,
        prefixStyle: TextStyle(color:  Colors.red)
        
      ),
    );
  }
}
