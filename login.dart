import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/wedjet/login_to_acount.dart';
import 'package:flutter_application_3/wedjet/logincustom.dart';


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon:Icon(Icons.arrow_back,
        size: 20,
        color: Colors.black,) ,
      ),
      ),
      body: Container(height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child:Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children:<Widget> [
                Column(
                  children: <Widget> [
                  
                      LoginTitle(), // Replaced with custom widget
                      LoginSubtitle(), 
                  ],
                ),
                     Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(label: "Password", obscureText: true)
                    ],
                  ),
                ),
                Padding(padding:EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  padding:EdgeInsets.only(top: 30,left:3 ),
                  decoration: 
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 20,

                    onPressed:(){},
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)
                    ),
                       child: Text(
      "Login",
      style: TextStyle(
       
        fontWeight: FontWeight.w600,
        fontSize: 18,
       
      ),
    ),

                     ),
                ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children:<Widget> [
                    Text("yoy dont have account ?"),
                    Text(
      " Sin up",
      style: TextStyle(
       
        fontWeight: FontWeight.w600,
        fontSize: 18,
     
      ),
                    ),
                   ]
                ),
                      Container(
                  padding: EdgeInsets.only(top: 100),
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/background.png"),
                      fit: BoxFit.fitHeight
                    ),
                  ),
                      ),

               ],
          ),
          
          )
        ],
      ),)
      ,
    );
  }
  Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color:Colors.black87
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            ),

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
}