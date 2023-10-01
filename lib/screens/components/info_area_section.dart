
import 'package:flutter/material.dart';

import 'area_info_text.dart';

class InfoAreaSection extends StatelessWidget {
  const InfoAreaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InfoAreaText(
          title: "Residence",
          text: "Algeria",
        ),
        InfoAreaText(
          title: "City",
          text: "Saida",
        ),
        InfoAreaText(
          title: "Age",
          text: "25",
        ),
      ],
    );
  }
}
