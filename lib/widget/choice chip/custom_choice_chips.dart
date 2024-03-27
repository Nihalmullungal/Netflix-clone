import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ["TV shows", "Movies", "Categories"];
    return Row(
      children: [
        Wrap(
          children: List.generate(
              3,
              (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: Colors.transparent),
                        child: ChoiceChip(
                            backgroundColor: Colors.black,
                            label: index != 2
                                ? Text(
                                    names[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                : Row(
                                    children: [
                                      Text(
                                        " ${names[index]} ",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      DropdownButton(
                                        items: null,
                                        onChanged: (value) {},
                                      ),
                                    ],
                                  ),
                            selected: false,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                      ),
                    ],
                  )),
        ),
      ],
    );
  }
}
