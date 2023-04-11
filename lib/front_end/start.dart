import 'package:consumer_app/front_end/consumer_details.dart';
import 'package:flutter/material.dart';


class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {

  var completed = 0 ;

  var visited = [1,0,0] ;

  List<Step> steps_details() => [
    Step(
        title: visited[0] == 0 ? Text("") : Text('Consumer details'),
        isActive: completed >= 1,
        content: Center(
          child: consumer_details(context),
        )
    ),
    Step(
        title: visited[1] == 0 ? Text("") : Text('Feedback'),
        isActive: completed >= 2,
        content: Center(
          child: Text('feedback'),
        )
    ),
    Step(
        title: visited[2] == 0 ? Text("") : Text('Confirm'),
        isActive: completed >= 3,
        content: Center(
          child: Text('Confirm'),
        )
    )
  ] ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Stepper(

          steps: steps_details(),

          currentStep: completed,

          type: StepperType.horizontal,

          onStepContinue: () {
            if(completed == steps_details().length - 1){
              print("===\ncompleted\n===");
            }
            else {
              setState(() {
                completed++ ;
                if(completed > 0) {
                  setState(() {
                    visited[completed - 1] = 0;
                  });
                }
                setState(() {
                  visited[completed] = 1 ;
                });
              });
            }
          },

          onStepCancel: () {
            if (completed == 0) {
              return;
            }

            setState(() {
              completed -= 1;
            });
          },

          onStepTapped: (int index) {
            setState(() {
              completed = index;
            });
          },
        ),
      ),
    );
  }
}
