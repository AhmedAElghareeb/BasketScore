import 'package:basketball_game_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green,
          title: const Text(
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
                      const Text("Team A", style: TextStyle(
                        fontSize: 35,
                      ),),
                      Text("${BlocProvider.of<CounterCubit>(context).teamAPoints}", style: const TextStyle(
                        fontSize: 100,
                      ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: const Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "A",
                            buttonNumber: 1,
                          );
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: const Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "A",
                            buttonNumber: 2,
                          );
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: const Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "A",
                            buttonNumber: 3,
                          );
                        },
                        child: const Text(
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
                  child: const VerticalDivider(
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
                      const Text("Team B", style: TextStyle(
                        fontSize: 35,
                      ),),
                      Text("${BlocProvider.of<CounterCubit>(context).teamBPoints}", style: const TextStyle(
                        fontSize: 100,
                      ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: const Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "B",
                            buttonNumber: 1,
                          );
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: const Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "B",
                            buttonNumber: 2,
                          );
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: const Size(150, 50)),
                        onPressed: ()
                        {
                          BlocProvider.of<CounterCubit>(
                              context).TeamIncrement(
                            team: "B",
                            buttonNumber: 3,
                          );
                        },
                        child: const Text(
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
              style: ElevatedButton.styleFrom(primary: Colors.red, minimumSize: const Size(150, 50)),
              onPressed: ()
              {
                BlocProvider.of<CounterCubit>(context).ResetTeamAButton();

                BlocProvider.of<CounterCubit>(context).ResetTeamBButton();
              },
              child: const Text(
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
    );
  }
}