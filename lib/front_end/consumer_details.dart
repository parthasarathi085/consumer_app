import 'package:flutter/material.dart';

Widget consumer_details(BuildContext context) {

  late String fname ;
  late String lname ;
  late String dob ;

  final formKey = GlobalKey<FormState>() ;

  final fnameController = TextEditingController() ;
  final lnameController = TextEditingController() ;
  final dobController = TextEditingController() ;

  @override
  void dispose() {

    fnameController.dispose() ;
    lnameController.dispose() ;
    dobController.dispose() ;

    // TODO: implement dispose
    dispose();
  }


  return Container(
    //height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height : 20) ,
          TextFormField(
            controller: fnameController,
            decoration: InputDecoration(
              icon: Icon(Icons.person , color: Colors.black,),
              hintText: 'First name',
              hintStyle: TextStyle(
                color: Colors.grey ,
                fontWeight: FontWeight.bold ,
              ),
                alignLabelWithHint: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
            onChanged: (val) => fname = val,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (fname) => fname != null && fname.length < 3 && fname.length > 0 ? 'Enter atleast 3 characters ...': null ,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height : 20) ,
          TextFormField(
            controller: lnameController,
            decoration: InputDecoration(
                icon: Icon(Icons.person , color : Colors.black),
                hintText: 'Last name',
                hintStyle: TextStyle(
                  color: Colors.grey ,
                  fontWeight: FontWeight.bold,
                ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            //obscureText: true,
            onChanged: (val) => lname = val ,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (lname) => lname != null && lname.length < 1 && lname.length > 0 ? 'Enter atleast 1 characters...' : null ,
              textInputAction: TextInputAction.next,
              //textInputAction: TextInputAction.done
          ) ,
          const SizedBox(height : 20) ,
          TextFormField(
            controller: dobController,
            decoration: InputDecoration(
                icon: Icon(Icons.password , color : Colors.black),
                hintText: 'DOB',
                hintStyle: TextStyle(
                  color: Colors.grey ,
                  fontWeight: FontWeight.bold,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
            //obscureText: true,
            onChanged: (val) => dob = val ,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (dob) => dob != null && dob != dob ? 'Password Miss Match' : null ,
            textInputAction: TextInputAction.done,
          ) ,
        ],
      ),
    ),
  ) ;
}