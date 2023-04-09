import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class ProjectSearchCard extends StatelessWidget {
  const ProjectSearchCard(
      {Key? key, required this.searchBar, required this.totalProject})
      : super(key: key);
  final Widget searchBar;
  final int totalProject;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 350,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            color: Color.fromARGB(94, 0, 0, 0),
            offset: Offset(0, 5),
          )
        ],
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 246, 255, 253),
            Color.fromARGB(255, 246, 255, 253),
          ],
          stops: [0, 1],
          begin: AlignmentDirectional(0, -1),
          end: AlignmentDirectional(0, 1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child:
                    Image.asset('assets/images/projectBackground.png', scale: 1)
                        .offset(offset: Offset(0, 2)),
              ),
              const SizedBox(
                width: 55,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 28,
                  ),
                  Text(
                    'Dự án tham gia',
                    style: GoogleFonts.openSans(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Text('$totalProject',
                      style: GoogleFonts.montserrat(
                        color: global.normalText,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      )),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                      child: FaIcon(FontAwesomeIcons.bookOpen,
                          color: global.primary2)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  searchBar,
                ],
              ),
              const SizedBox(
                height: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
