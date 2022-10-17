import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/bloc/seach_bloc.dart';
import 'package:travel_app/widgets/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SeachBloc(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 30,
                  ),
                  child: BlocBuilder<SeachBloc, SeachState>(
                    builder: (context, state) {
                      return TextFormField(
                        autofocus: true,
                        onEditingComplete: () {
                          FocusScopeNode currentFocus = FocusScope.of(context);

                          if (!currentFocus.hasPrimaryFocus) {
                            currentFocus.unfocus();
                          }
                        },
                        onChanged: (value) {
                          context.read<SeachBloc>().add(
                                OnSearchEvent(input: value),
                              );
                        },
                        decoration: InputDecoration(
                            enabled: true,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.deepPurple[300],
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.deepPurple.shade800,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.deepPurple,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            label: const Text(
                              "Search",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      );
                    },
                  ),
                ),
                BlocBuilder<SeachBloc, SeachState>(
                  builder: (context, state) {
                    return state.searchResult.isEmpty
                        ? Center(
                            child: Text(
                            state.message,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ))
                        : SearchResult(searchResult: state.searchResult);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
