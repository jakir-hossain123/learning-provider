import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/buisness_logic/counter.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      backgroundColor: Colors.grey,

      body:Column(
        children: [
          SizedBox(height: 70,),
          Text(counter.value.toString(),style: TextStyle(
            fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white
          ),),
          Row(
            children: [
              SizedBox(height: 600,),
              SizedBox(width: 20,),
              ElevatedButton(
                  onPressed:() =>counter.increment(), child: Text("increment"),
              style: ElevatedButton.styleFrom(elevation: 15),
              ),
              SizedBox(width: 95,),
              ElevatedButton(onPressed: () =>counter.decrement(), child: Text("decrement"),
                style: ElevatedButton.styleFrom(elevation: 15),

              )
            ],
          )
        ],
      ),
    );
  }
}
