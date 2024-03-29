import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter App")),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Text(
                    state.counter.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    context.read<CounterBloc>().add(DecrementCounter());
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 7.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "Decrement",
                      style: TextStyle(
                          color: Colors.purple[400],
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    context.read<CounterBloc>().add(IncrementCounter());
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 7.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      "Increment",
                      style: TextStyle(
                          color: Colors.purple[400],
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
