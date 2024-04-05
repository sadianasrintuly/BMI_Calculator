import 'package:flutter/material.dart';

class Second_page extends StatefulWidget {
  //const Second_page({super.key});
  String bmi_result;
  Second_page({required this.bmi_result});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  String bmiCategory = '';
  String advice = '';

  determine_BMICategory() {
    double bmi = double.parse(widget.bmi_result);
    if (bmi < 18.5) {
      setState(() {
        bmiCategory = 'Underweight';
        advice = "Eat More";
      });
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      setState(() {
        bmiCategory = 'Normal';
        advice = "Perfect & Maintain";
      });
    } else if (bmi >= 25 && bmi <= 29.9) {
      setState(() {
        bmiCategory = 'Overweight';
        advice = "Exercise";
      });
    } else {
      setState(() {
        bmiCategory = 'Obesity';
        advice = "Exercise & Follow Doctors Advice";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    determine_BMICategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: Column(
            children: [
              Text(
                "\n" "BMI Result",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 400,
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        bmiCategory,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.accessibility,
                        color: Colors.black,
                      ),
                      Text(
                        double.parse(widget.bmi_result).toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xffeb1555),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        advice,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffeb1555),
                  minimumSize: Size(180, 40),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Re-Calculate",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
