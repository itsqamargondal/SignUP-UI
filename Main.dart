import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xffffd701),
          title: const Center(
              child: Text(
            'Live Chat App',
            style: TextStyle(color: Color(0xff3450b9)
                ,fontFamily: 'Lobster', fontSize: 30),
          ),),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 5, top: 30),
                        width: 180,
                        height: 180,
                        child: Image(image: NetworkImage('https://img.freepik.com/premium-vector/live-chat-speech-bubbles-symbol-vector-flat-illustrations-concept-live-dialogue-bubbles-chat-badge-isolated-white-background-message-concept-sms-chat-icon-blue-yellow-colors_175838-3186.jpg?w=2000'),)
                      ),
                    ),

                    Column(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 25),
                            child: Text('SignUp',
                              style: TextStyle(
                                  color: Color(0xff3450b9),
                                  fontSize: 50,
                                  fontFamily: 'Lobster'
                              ),),
                          ),
                        ),

                        Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text('for a free account',
                              style: TextStyle(
                                  color: Color(0xff3450b9),
                                  fontSize: 20,
                                  fontFamily: 'Lobster'
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                



              //text form field widget

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0, right: 10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    //agar ham chahte hain user textfield me
                    //kuch b enter na kr sakte tu ham following syntex use kre ge
                   // enabled: false,

                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,),

                    decoration: InputDecoration(
                      hintText: 'Email',

                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,),
                      prefixIcon: const Icon(Icons.email, color: Color(0xff3450b9),),

                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xff3450b9), width: 2),
                        borderRadius: BorderRadius.circular(15)
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.green, width: 2,)
                      ),

                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.red, width: 2,)
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.red, width: 2,)
                      ),


                     // labelText: 'Enter your email',
                     // labelStyle: const TextStyle(fontSize: 14, color: Colors.green,),
                      ),

                    //onChanged method input text ko record krne k liye use hota hai
                    onChanged: (emailvalue){
                      print(emailvalue);
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,),

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintText: 'Phone number',
                      hintStyle:
                      const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,),

                      prefixIcon: const Icon(Icons.phone, color: Color(0xff3450b9),),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Color(0xff3450b9), width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:const BorderSide(color: Colors.green, width: 2)
                      )
                       ),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,),

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      hintText: 'Password',
                      hintStyle:
                    const  TextStyle(
                        fontSize: 14,
                        color: Colors.grey,),

                      suffixIcon: const Icon(Icons.visibility_off, color: Color(0xff3450b9),),
                      prefixIcon: const Icon(Icons.lock, color: Color(0xff3450b9),),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Color(0xff3450b9), width: 2)
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2),
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  width: 200,
                  margin: EdgeInsets.only(top: 20),
                 // color: Color(0xff3450b9),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff3450b9), width: 2,),
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffffd701),
                    
                  ),
                  child: const Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xff3450b9),
                        fontSize: 30,
                        fontFamily: 'Lobster'
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: RichText(text: TextSpan(text: 'Already have an account? ',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 15,
                      color: Color(0xff3450b9),),
                 children: [
                   TextSpan(text: 'Login',
                   style: TextStyle(
                     fontFamily: 'MochiyPopOne',
                     fontSize: 17,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic,
                   ))
                 ],
                  ),),
                ),
                Container(
                  child: Text(
                    'OR',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff3450b9),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 45,
                        width: 45,
                        child: Image(image: NetworkImage('https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png')),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 55,
                        child: Image(image: NetworkImage('https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-facebook-icon-png-images-icons-and-png-backgrounds-1.png')),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        child: Image(image: NetworkImage('https://www.freepnglogos.com/uploads/instagram-logos-png-images-free-download-5.png')),
                      )
                    ],
                  ),
                )
              ],
                ),
          ),
        ),
        ),
    );
  }
}


