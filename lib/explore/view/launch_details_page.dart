// Flutter imports:
import 'package:flutter/material.dart';

class LaunchDetailsPage extends StatelessWidget {
  const LaunchDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
    // Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Flexible(
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           DataLine(
    //             icon: const Icon(Icons.rocket_launch_rounded),
    //             leftSide: const Text('Launch Vehicle: '),
    //             rightSide: Text(
    //               _rocket?.configuration?.fullName ?? 'N/A',
    //             ),
    //           ),
    //           const SizedBox(height: 5),
    //           DataLine(
    //             icon: const Icon(FontAwesomeIcons.helicopterSymbol),
    //             leftSide: const Text('Launch Location: '),
    //             rightSide: Text(widget.launch.pad?.name ?? 'N/A'),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SvgPicture.asset('assets/rockets/falcon_heavy/fh.svg'),
    //   ],
    // ),
  }
}
