import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatablePckg extends StatelessWidget {
  const EquatablePckg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Equatable use"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Person person = new Person(name: "Tushar", age: "21");
        Person person1 = new Person(name: "Tushar", age: "21");

        print(person.hashCode.toString());
        print(person1.hashCode.toString());
        print(person == person1);
      }),
    );
  }
}

class Person extends Equatable {
  final String name;
  final String age;

  Person({required this.name, required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [name, age];
}
