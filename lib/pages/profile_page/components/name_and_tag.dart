import 'package:flutter/material.dart';

import '../../../constant.dart';

class NameAndTagContainer extends StatelessWidget {
  const NameAndTagContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "John Doe",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black87),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Hikers",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: textColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}