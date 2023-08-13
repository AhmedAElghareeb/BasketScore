import 'package:basketball_game_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Basket Counter",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Team A", style: TextStyle(
                        fontSize: 35,
                      ),),
                      Text("${BlocProvider.of<CounterCubit>(context).teamAPoints}", style: TextStyle(
                        fontSize: 100,
                      ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "A",
                            buttonNumber: 1,
                          );
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "A",
                            buttonNumber: 2,
                          );
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "A",
                            buttonNumber: 3,
                          );
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Team B", style: TextStyle(
                        fontSize: 35,
                      ),),
                      Text("${BlocProvider.of<CounterCubit>(context).teamBPoints}", style: TextStyle(
                        fontSize: 100,
                      ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "B",
                            buttonNumber: 1,
                          );
                        },
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "B",
                            buttonNumber: 2,
                          );
                        },
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "B",
                            buttonNumber: 3,
                          );
                        },
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red, minimumSize: Size(150, 50)),
              onPressed: ()
              {
                BlocProvider.of<CounterCubit>(context).ResetTeamAButton();

                BlocProvider.of<CounterCubit>(context).ResetTeamBButton();
              },
              child: Text(
                "RESET",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      listener: (context, state) {},
    );
  }
}