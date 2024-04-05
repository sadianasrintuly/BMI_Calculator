import 'package:flutter/material.dart';
import 'package:fourthhw/second_page.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});
  @override
  State<First_page> createState() => _First_pageState();
}
class _First_pageState extends State<First_page> {

  double height = 0.0;
  int weight = 58;
int age = 23;

  double bmi = 0.0;

  calculate_bmi() {
      setState(() {
        bmi = weight  / ((height / 100) * (height / 100));
      });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculate_bmi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,

        title: Center(child: Text("BMI Calculator",
        style: TextStyle(
          color: Colors.white, fontSize: 23,
        ),
        )),
      ),

      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
            child: Column(
children: [
  Row(
    children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 168,
                width: 185,
                child: Column(
                  children: [
                    Icon(Icons.male,
                    color: Colors.black, size: 120,
                    ),
                   Text("Male",
                     style:
                       TextStyle(
                         color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                       ),
        )
                  ],

                ),

    ),
            ),

        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height:168,
              width: 185,
              child: Column(
                children: [
                  Icon(Icons.female,
                    color: Colors.black, size: 120,
                  ),
                  Text("Female",
                    style:
                    TextStyle(
                      color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                    ),
                  )
                ],

              ),

            ),
        ),
    ],
  ),


  Container(
    height: 168,
    width: 388,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
   child: Column(
     children: [
         Text( "Height",
               style:
               TextStyle(
                 color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
               ),
         ),
         TextField(

            decoration: InputDecoration(
              labelText: "HEIGHT",
              labelStyle: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              prefixIcon: Icon(
                Icons.trending_up,
                color: Colors.black,
                size: 28,
              ),
            ),
 keyboardType: TextInputType.number,

 onChanged: (input){
              height = double.parse(input);

    },

         )
     ],
   ),

  ),
  Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 168,
          width: 185,
          child: Column(
            children: [
              Text("\n""Weight",
                style:
                TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                ),
              ),
              Text(weight.toString(),
                style:
                TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey, // Set your desired background color here
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white, // Set the icon color to contrast with the background
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Adjust spacing between icons as needed
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey, // Set your desired background color here
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          weight--;
                        });
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 30,
                        color: Colors.white, // Set the icon color to contrast with the background
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 168,
          width: 185,
          child: Column(
            children: [
              Text("\n" "Age",
                style:
                TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                ),
              ),
              Text(age.toString(),
                style:
                TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey, // Set your desired background color here
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white, // Set the icon color to contrast with the background
                      ),
                    ),
                  ),
                  SizedBox(width: 20), // Adjust spacing between icons as needed
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      // Set your desired background color here
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      },
                      icon: Icon(
                        Icons.remove,

                        size: 30,
                        color: Colors.white, // Set the icon color to contrast with the background
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      )
    ],
  ),

  TextButton(
    style: TextButton.styleFrom(
      backgroundColor: Color(0xffeb1555),
      minimumSize: Size(180, 40),
    ),
      onPressed: () {
        calculate_bmi();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Second_page(bmi_result: bmi.toString(),)));
      },

    child:

    Text("Calculate",
      style: TextStyle(
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,),


  ),
  )
],


          ),
      ),

      ),
    );
  }
}
