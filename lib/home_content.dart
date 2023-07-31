import 'package:flutter/material.dart';
import 'index.dart';

class MyHomeUI extends StatefulWidget {
  const MyHomeUI({super.key});

  @override
  State<MyHomeUI> createState() => _MyHomeUIState();
}

class _MyHomeUIState extends State<MyHomeUI>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
      ..addListener(() {
        setState(() {});
      });
    _animation2 = Tween<double>(begin: 1, end: 0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Stack(children: [
      ListView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          children: [
            SizedBox(height: _w / 13),
            // CustomPaint(painter: MyPainter()),

            // myCard(title,desc,icon, linkpage()),
            myCard("Input Widgets", "Various Input Widget ", Icons.input,
                const MyInputsScreen()),
            myCard("Button Widgets", "Various Button Widget ",
                Icons.smart_button, const MyButtonScreen()),
            myCard("Tiles Widgets", "Various Tile Widget ", Icons.line_style,
                const MyTilesScreen()),
            myCard("Stack Widgets", "Various Stack Widget", Icons.tab,
                const MyStackScreen()),
            myCard("Chips Widgets", "Chips Widgets Demo ", Icons.line_style,
                const MyChipsScreen()),
            myCard("Progressbar", "Various Tile Widget ",
                Icons.local_activity_outlined, const MyTilesScreen()),

            // cards(),
            //cards(),
          ]),
    ]);
  }

/*
 * My Card -  Custom Card Widget
 */

  Widget myCard(String title, String desc, IconData icon, linkClass) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
        opacity: _animation.value,
        child: Transform.translate(
          offset: Offset(0, _animation2.value),
          child: GestureDetector(
            
            // enableFeedback: true,
            onTap: () {
              debugPrint('Card Pressed');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => linkClass));
            },
            // highlightColor: Colors.transparent,
            // splashColor: Colors.transparent,
            child: Container(
                margin: EdgeInsets.fromLTRB(_w / 20, _w / 20, _w / 20, 0),
                padding: EdgeInsets.all(_w / 20),
                height: _w / 4.2,
                width: _w,
                //alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        //spreadRadius: 1,
                        offset: const Offset(0, 2),
                      ),
                    ]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: _w / 10,
                        backgroundColor: Colors.white,
                        child: Icon(
                          icon,
                          size: _w / 10,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: _w / 2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title,
                                  style: TextStyle(
                                      fontSize: _w / 20,
                                      fontWeight: FontWeight.bold)),
                              Text(desc),
                            ]),
                      ),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: _w / 10,
                      )
                    ])),
          ),
        ));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_1 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    Path path_1 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * .1, 0)
      ..cubicTo(size.width * .05, 0, 0, 20, 0, size.width * 0.08);

    Path path_2 = Path()
      ..moveTo(size.width, 0)
      ..lineTo(size.width * .9, 0)
      ..cubicTo(
          size.width * .95, 0, size.width, 20, size.width, size.width * 0.08);
    Paint paint_2 = Paint()
      ..color = Colors.black
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
    Path path_3 = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0);

    canvas.drawPath(path_1, paint_1);
    canvas.drawPath(path_2, paint_1);
    canvas.drawPath(path_3, paint_2);
    // canvas.drawCircle( Offset(size.width / 2, size.height / 2), size.width / 2, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
