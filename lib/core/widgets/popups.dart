import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../assets/colors/colors.dart';
import '../bloc/show_pop_up/show_pop_up_bloc.dart';
import 'w_scale.dart';

class WPopUp extends StatelessWidget {
  final String text;
  final String icon;
  final Color color;
  const WPopUp({
    required this.text,
    required this.icon,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 4,
            color: black.withOpacity(0.12),
          )
        ],
      ),
      padding: const EdgeInsets.fromLTRB(16, 8, 12, 8),
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: [
            WScaleAnimation(
              onTap: () {
                context.read<ShowPopUpBloc>().add(ShowPopUpEvent.hide());
              },
              child: SvgPicture.asset(
                icon,
                height: 20,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 12, color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
