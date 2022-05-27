import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  
  const Login({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Color.fromRGBO(253, 188, 89, 1),
        child: Center(
          child: Campos(),
        ),
      ),
    );
  }
}

class Campos extends StatefulWidget {
  Campos({Key? key}) : super(key: key);
  
  @override
  State<Campos> createState() => _CamposState();
}

class _CamposState extends State<Campos> {
  TextEditingController controluser  = new TextEditingController();
  TextEditingController controlpassword  = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding:EdgeInsets.only(top: 150.0, bottom: 50.0) ,
            child:CircleAvatar(
              backgroundImage: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/295/295128.png'),
              radius: 90,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 5, 50, 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              children: [
                
                Padding(
                  padding:EdgeInsets.fromLTRB(50, 20, 50, 10),
                  child: TextField(
                    enableInteractiveSelection: false,
                    controller:controluser,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.verified_user),
                      filled: true,
                      labelText: 'User',
                      
                    ),
                  ),
                ),
              
                Padding(
                  padding:EdgeInsets.fromLTRB(50, 10, 50, 15),
                  child:TextField(
                    enableInteractiveSelection: false,
                    controller:controlpassword,
                    decoration: InputDecoration(
                      
                      suffixIcon: Icon(Icons.lock_open_outlined),
                    //Color.fromRGBO(253, 188, 89, 1),
                      filled: true,
                      labelText: 'Password',
                      
                    ),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(244, 48, 85, 1),
                      fixedSize: const Size(300, 50),
                    ),
                    onPressed: (){
                      
                    }, 
                    child: Text('Entrar')),
                ),
                Divider(
                  color: Colors.grey,
                  height: 40,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(53, 161, 31, 1),
                      fixedSize: const Size(150, 50),
                    ),
                    onPressed: (){
                      
                    }, 
                    child: Text('Registrate')),
                ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}