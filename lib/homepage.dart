import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var no1Controller =TextEditingController();
  var no2Controller= TextEditingController();

  var Result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: no1Controller,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 11,
          ),
          TextField(
            controller: no2Controller,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                int no1 = int.parse(no1Controller.text.toString());
                int no2 = int.parse(no2Controller.text.toString());
                Result= no1+no2;
                setState(() {

                });
              },
                  child: Text("Add")),

              SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: (){
                int no1 = int.parse(no1Controller.text.toString());
                int no2 = int.parse(no2Controller.text.toString());
                Result = no1-no2;
                setState(() {

                });
              },
                  child: Text("sub")),
SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: (){
                int no1 = int.parse(no1Controller.text.toString());
                int no2 = int.parse(no2Controller.text.toString());
                Result= no1*no2;
                setState(() {

                });
              },
                  child: Text("multi")),
SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: (){
                int no1 = int.parse(no1Controller.text.toString());
                int no2 = int.parse(no2Controller.text.toString());
                Result= no1/no2;
                setState(() {

                });
              },
                  child: Text("div")),

            ],
          ),
          SizedBox(
            height: 11,
          ),
          Text(Result=="" ?"" :"Result:$Result")
        ],
      ),
    );
  }
}
