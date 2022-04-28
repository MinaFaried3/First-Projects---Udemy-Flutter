import 'package:flutter/material.dart';
import 'package:mino1/modules/login/home.dart';
import 'package:mino1/shared/components/components.dart';

class mo extends StatefulWidget {
  @override
  State<mo> createState() => _moState();
}

class _moState extends State<mo> {
  Color bla = Colors.white54;

  Color lon = Colors.brown;

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();


 bool isPass = true;

 GlobalKey<FormState> formKey = GlobalKey<FormState>();

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          leading: Icon(
            Icons.water_damage_outlined,
            color: bla,
          ),
          title: Text(
            "TODO",
            style: TextStyle(fontSize: 20, color: Colors.white70,letterSpacing: 4),
          ),
          elevation: 10,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check,
                  color: bla,
                )),
            IconButton(
              icon: Icon(
                Icons.menu_outlined,
                color: bla,
              ),
              onPressed: () {},
            )
          ],
          centerTitle: true,
        ),
        body: Container(
          color: Colors.brown[300],
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.brown[100],
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "LOGIN......",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: lon,
                            letterSpacing: 5
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                       MinoTextForm(
                         controller: email,
                         keyboard: TextInputType.emailAddress,
                         lbl: "Email Address",
                         pre: Icons.email,
                         validate1: (val){
                           if(val!.isEmpty){
                             return "Please ,Enter your email";
                           }else return null;
                         }
                       ),
                        SizedBox(
                          height: 20,
                        ),
                        MinoTextForm(
                            controller: password,
                            lbl: "Password",
                            pre: Icons.lock,
                            keyboard: TextInputType.visiblePassword,
                            validate1: (val){
                              if(val!.isEmpty){
                                return "Please ,Enter your Password";
                              }
                              return null;
                            },
                          isPassword: isPass,
                          suffix:isPass? Icons.remove_red_eye_outlined : Icons.visibility_off_outlined,
                          suffix_change: (){
                              setState(() {
                                isPass = !isPass;
                              });
                          }
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        defaultbutton(
                            function: () {
                              tryValidate();
                              if(tryValidate()){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context){
                                          return home();
                                        })
                                );
                              }


                            },
                            text: 'login',
                            backcolor: lon),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: defaultbutton(
                              function: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return home();
                                }));
                              },
                              text: 'register',
                              isUpper: true,
                              width: 200),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Text(
                                "Don't have account ...",
                                style: TextStyle(color: lon),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  ""
                                  "Register Now",
                                  style: TextStyle(color: lon, fontSize: 18),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
bool tryValidate(){
    if(formKey.currentState!.validate()){
      print(email.text);
      print(password.text);
      return true;
    }else return false;

  }

}
