import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("images/icon.png",height: 45),
        Row(
          children: [
            const Icon(Icons.location_on,
                size: 17, color: Color(0xff176FF2)),
            DropdownButton(
              iconEnabledColor: const Color(0xff176FF2),
              style: const TextStyle(fontWeight: FontWeight.normal,color: Colors.black),
              underline: const Text(''),
              elevation: 0,
              dropdownColor: Colors.transparent,
              items: const [
                DropdownMenuItem(child: Text("dhaka, mirpur 10"))
              ],
              onChanged: (value) {},
            ),
          ],
        )
      ],
    );
  }
}
