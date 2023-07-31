import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button_screen.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart'
    as flutter_animated_button;
import 'package:animated_button/animated_button.dart' as animated_button;
import 'package:progress_state_button/iconed_button.dart'
    as progress_state_button;
import 'package:progress_state_button/progress_button.dart'
    as progress_state_button;
import 'package:rounded_loading_button/rounded_loading_button.dart'
    as rounded_loading_button;

// To disble any botton simply put onPressed:null
//Flat Button with text
class MyFlatButton extends StatelessWidget {
  const MyFlatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          debugPrint(
            'FlatButton pressed',
          );
        },
        style: TextButton.styleFrom(
          side: const BorderSide(width: 2.0, color: Colors.purple),
        ),
        child: const Text(
          'Click Here',
          style: TextStyle(color: Colors.purple),
        )
        // child: const Icon(Icons.trending_up, size: 30),
        );
  }
}

//Outline Button with text
class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          ('MyOutlineButton pressed',);
        },
        child: const Text(
          'Click Here',
          style: TextStyle(color: Colors.purple),
        )
        // child: const Icon(Icons.trending_up, size: 30),
        );
  }
}

// Material Button
class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showAboutDialog(context: context);
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.pink,

      //highlightColor: Colors.orange,
      //splashColor: Colors.deepOrange,
      child: Text(
        'BUTTON',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontSize: 12.0,
            ),
      ),
    );
  }
}

/*RawMaterialButton properties include:
onPressed: The function that is called when the button is pressed.
child: The widget that is displayed inside the button.
shape: The shape of the button.
fillColor: The fill color of the button.
*/
class MyRawMaterialButton extends StatelessWidget {
  const MyRawMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: () {
          debugPrint('Button pressed');
        },
        shape: const CircleBorder(),
        fillColor: Colors.orange,
        elevation: 0.0,
        highlightElevation: 0.0,
        splashColor: Colors.red,
        highlightColor: Colors.blue,
        hoverColor: Colors.green,
        // child:Text('
        //GO',
        //style: Theme.of(context).textTheme.titleSmall!.copyWith(
        //color: Colors.black,fontSize: 12.0,),),
        child: const Icon(
          Icons.favorite,
          size: 25.0,
          color: Color.fromARGB(255, 254, 0, 0),
          semanticLabel: 'ABC',
        ));
  }
}

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          debugPrint(
            'Elevated Button pressed',
          );
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(width: 3, color: Colors.white),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: const Text(
          'Click Here',
          //style: TextStyle(color: Colors.blue),
        )
        //child: const Icon(Icons.trending_up, size: 18),
        );
  }
}

class MyElevatedButton2 extends StatelessWidget {
  const MyElevatedButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          debugPrint(
            'Elevated Button pressed',
          );
        },
        // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
        style: ElevatedButton.styleFrom(
            elevation: 12.0, textStyle: const TextStyle(color: Colors.white)),
        child: const Text(
          'Click Here',
          //style: TextStyle(color: Colors.blue),
        )
        //child: const Icon(Icons.trending_up, size: 18),
        );
  }
}

class MyGradientButton extends StatelessWidget {
  const MyGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('Button pressed');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Container(
        //padding: const EdgeInsets.fromLTRB(10, 15, 5, 15),
        decoration: const BoxDecoration(
          color: Colors.pink, //ignored. if gradient is not null
          gradient: LinearGradient(
            colors: <Color>[Colors.green, Colors.lightBlue, Colors.red],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const Text(
          'Click Here',
          style: TextStyle(color: Colors.white),
        ),

        //style: TextStyle(color: Colors.blue),
      ),
    );
  }
}

/*Filled buttons have the most visual impact after the FloatingActionButton,
and should be used for important, final actions that complete a flow,
like Save, Join now, or Confirm.*/
class MyFilledButton extends StatelessWidget {
  const MyFilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        debugPrint('Button pressed');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: const Text('Click me'),
    );
  }
}

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          debugPrint(
            'Icon Button  pressed',
          );
        },
        iconSize: 35.0,
        splashRadius: 30.0,
        splashColor: Colors.amber,
        color: Colors.red,
        focusColor: Colors.blue,
        hoverColor: Colors.blueAccent,
        disabledColor: Colors.grey,
        tooltip: 'Icon Button',
        icon: const Icon(
          Icons.restaurant_menu,
          //size: 20,
          semanticLabel: 'Menu',
        ));
  }
}

class MyToggleButton extends StatefulWidget {
  const MyToggleButton({super.key});
  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  final _toggleValues = [true, false, false];
  int? dropDownValue = 1;
  int? dropDownValue1 = 1;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
        onPressed: (int index) {
          setState(() {
            _toggleValues[index] = !_toggleValues[index];
          });

//implement mutually exclusive selection while requiring at least one selection.
//Assumes that isSelected was properly initialized with one selection.
/*
 onPressed: setState(() {
      for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
        if (buttonIndex == index) {
          isSelected[buttonIndex] = true;
        } else {
          isSelected[buttonIndex] = false;
        }
      }
    }) */
        },
        isSelected: _toggleValues,
        children: const <Widget>[
          Icon(Icons.format_bold),
          Icon(Icons.format_italic),
          Icon(Icons.format_underline),
        ]);
  }
}

class MyPopupMenuBotton extends StatelessWidget {
  const MyPopupMenuBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: Border.all(
              color: Colors.red,
              width: 8.0,
            ) +
            Border.all(
              color: Colors.green,
              width: 8.0,
            ) +
            Border.all(
              color: Colors.blue,
              width: 8.0,
            ),
      ),
      child: const Text('RGB', textAlign: TextAlign.center),
    );
  }
}

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String dropdownvalue = 'Profile';

  var items = [
    'Profile',
    'Settings',
    'Account',
    'Go Premium',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      focusColor: Colors.pink,
      value: dropdownvalue,
      elevation: 20,
      icon: const Icon(Icons.keyboard_arrow_down),
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: const TextStyle(
              color: Colors.green,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownvalue = newValue!;
        });
      },
    );
  }
}

class MyDropdownButton2 extends StatelessWidget {
  const MyDropdownButton2({super.key});
  //List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        onChanged: (dynamic t) {},
        items: const [
          DropdownMenuItem(value: 1, child: Text('Profile')),
          DropdownMenuItem(value: 2, child: Text('Settings')),
          DropdownMenuItem(value: 3, child: Text('Account')),
          DropdownMenuItem(value: 4, child: Text('Premium')),
          DropdownMenuItem(value: 5, child: Text('Logout')),
        ],
        value: 3,
      ),
    );
  }
}

class MyPopupMenuButton extends StatefulWidget {
  const MyPopupMenuButton({super.key});

  @override
  State<MyPopupMenuButton> createState() => _MyPopupMenuButton();
}

class _MyPopupMenuButton extends State<MyPopupMenuButton> {
  // This is the type used by the popup menu below.

  int? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        onSelected: (item) {
          debugPrint('Selected item: $item');
          setState(() {
            selectedMenu = item;
          });
        },
        initialValue: selectedMenu,
        itemBuilder: (context) => [
              const PopupMenuItem(value: 1, child: Text('One')),
              const PopupMenuItem(value: 2, child: Text('Two')),
              const PopupMenuItem(
                value: 3,
                child: Row(
                  children: [
                    Icon(Icons.chrome_reader_mode),
                    SizedBox(
                      width: 10,
                    ),
                    Text("About")
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 4,
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Get The App")
                  ],
                ),
              ),
            ]);
  }
}

class MyFloatActionButton extends StatelessWidget {
  const MyFloatActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Do something when the FAB is clicked.
      },
      heroTag: UniqueKey(), //
      key: UniqueKey(),
      child: const Icon(Icons.add),
    );
  }
}

class MyFloatActionExtButton extends StatelessWidget {
  const MyFloatActionExtButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: const Text('More'),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MyFABPop()));
      },
      heroTag: UniqueKey(), //
      key: UniqueKey(),
    );
  }
}

class MyFABPop extends StatelessWidget {
  const MyFABPop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          MyButtonWidget(
            name: 'Back Button',
            child: BackButton(),
          ),
          MyButtonWidget(
            name: 'Close Button',
            child: CloseButton(),
          )
        ]));
  }
}

class MyResponsiveButton extends StatefulWidget {
  const MyResponsiveButton({super.key});

  @override
  State<MyResponsiveButton> createState() => _MyResponsiveButtonState();
}

class _MyResponsiveButtonState extends State<MyResponsiveButton>
    with TickerProviderStateMixin {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHighlightChanged: (value) {
          setState(
            () {
              isTapped = value;
            },
          );
          debugPrint('Highlight Changed');
        },
        onTap: () {
          debugPrint('onTap InkWell');
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastLinearToSlowEaseIn,
            height: isTapped ? 45 : 50,
            width: isTapped ? 140 : 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 30,
                    offset: const Offset(3, 7))
              ],
            ),
            child: const Center(child: Text('Tap Here'))));
  }
}

class MySimpleAnimatedButton extends StatelessWidget {
  const MySimpleAnimatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return flutter_animated_button.AnimatedButton(
      onPress: () {
        debugPrint('Animated Button Pressed');
      },
      height: 50,
      width: 150,
      text: 'SUBMIT',
      isReverse: true,
      selectedTextColor: Colors.amber,
      transitionType: flutter_animated_button.TransitionType.CENTER_ROUNDER,
      textStyle: const TextStyle(
          fontSize: 18,
          letterSpacing: 5,
          color: Colors.white,
          fontWeight: FontWeight.bold),
      backgroundColor: Colors.amber,
      borderColor: Colors.white,
      borderRadius: 50,
      borderWidth: 2,
    );
  }
}

class MyStripAnimatedButton extends StatelessWidget {
  const MyStripAnimatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: flutter_animated_button.AnimatedButton.strip(
      onPress: () {
        debugPrint('Strip Animated Button Pressed');
      },
      height: 50,
      width: 150,
      text: 'SUBMIT',
      isReverse: true,
      selectedTextColor: Colors.orange,
      stripTransitionType:
          flutter_animated_button.StripTransitionType.LEFT_TO_RIGHT,
      textStyle: const TextStyle(
          fontSize: 18,
          letterSpacing: 5,
          color: Colors.white,
          fontWeight: FontWeight.bold),
      backgroundColor: Colors.orange,
    ));
  }
}

class My3DAnimatedButton extends StatelessWidget {
  const My3DAnimatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return animated_button.AnimatedButton(
      height: 50,
      width: 150,
      shadowDegree: animated_button.ShadowDegree.dark,
      child: const Text(
        'Simple button',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: () {
        debugPrint('Simple Animated Button Pressed');
      },
    );
  }
}

class MyAnimatedIconButton extends StatefulWidget {
  const MyAnimatedIconButton({super.key});

  @override
  State<MyAnimatedIconButton> createState() => _MyAnimatedIconButtonState();
}

class _MyAnimatedIconButtonState extends State<MyAnimatedIconButton>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation _arrowAnimation;
  late AnimationController _arrowAnimationController;
  bool isTapped = false;

  @override
  void initState() {
    super.initState();
    _arrowAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController);
  }

  @override
  void dispose() {
    super.dispose();
    _arrowAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHighlightChanged: (value) {
        setState(() {
          isTapped = value;
        });
      },
      onTap: () {
        setState(() {
          _arrowAnimationController.isCompleted
              ? _arrowAnimationController.reverse()
              : _arrowAnimationController.forward();
        });
      },
      child: AnimatedContainer(
          duration: const Duration(microseconds: 300),
          curve: Curves.fastLinearToSlowEaseIn,
          height: isTapped ? 45 : 50,
          width: isTapped ? 45 : 50,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 30,
                  spreadRadius: 5,
                  offset: const Offset(5, 5),
                )
              ]),
          child: AnimatedBuilder(
            animation: _arrowAnimationController,
            builder: (context, child) => Transform.rotate(
              angle: _arrowAnimation.value,
              child: const Icon(
                Icons.expand_more,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          )),
    ));
  }
}

class MyAnimatedChangeIconButton extends StatefulWidget {
  const MyAnimatedChangeIconButton({super.key});

  @override
  State<MyAnimatedChangeIconButton> createState() =>
      _MyAnimatedChangeIconButtonState();
}

class _MyAnimatedChangeIconButtonState
    extends State<MyAnimatedChangeIconButton> {
  bool isPressed = true;
  bool isHighlighted = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: AnimatedContainer(
          height: 50,
          width: 50,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(microseconds: 300),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(isPressed ? 0.2 : 0.0),
                  offset: const Offset(5, 10))
            ],
            color: isPressed ? Colors.white : Colors.black.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite,
            color: isPressed
                ? Colors.black.withOpacity(0.7)
                : Colors.black.withOpacity(0.5),
          ),
        ));
  }
}

class MyAnimatedbgChangeIconButton extends StatefulWidget {
  const MyAnimatedbgChangeIconButton({super.key});

  @override
  State<MyAnimatedbgChangeIconButton> createState() =>
      _MyAnimatedbgChangeIconButtonState();
}

class _MyAnimatedbgChangeIconButtonState
    extends State<MyAnimatedbgChangeIconButton> {
  bool isPressed = true;
  bool isHighlighted = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onHighlightChanged: (value) {
          setState(() {
            isHighlighted = !isHighlighted;
          });
        },
        onTap: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(microseconds: 300),
          curve: Curves.fastLinearToSlowEaseIn,
          margin: EdgeInsets.all(isHighlighted ? 0 : 2.5),
          height: isHighlighted ? 50 : 45,
          width: isHighlighted ? 50 : 45,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(isPressed ? 0.2 : 0.0),
                  offset: const Offset(5, 10))
            ],
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: isPressed
              ? const Icon(Icons.favorite_border, color: Colors.pink)
              : const Icon(Icons.favorite, color: Colors.pink),
        ));
  }
}

/* Ripple Animation Button 
*/
class MyRippleAnimatedButton extends StatefulWidget {
  const MyRippleAnimatedButton({super.key});

  @override
  State<MyRippleAnimatedButton> createState() => _MyRippleAnimatedButtonState();
}

class _MyRippleAnimatedButtonState extends State<MyRippleAnimatedButton>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Container(
          decoration: ShapeDecoration(
            color: Colors.blue.withOpacity(0.3),
            shape: const CircleBorder(),
          ),
          child: Padding(
              padding: EdgeInsets.all(
                8.0 * animationController.value,
              ),
              child: child),
        );
      },
      child: Container(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: IconButton(
              icon: const Icon(Icons.calendar_today, size: 24),
              color: Colors.blue,
              onPressed: () {
                debugPrint('Ripple Animation button Pressed');
              })),
    );
  }
}

/*
Animated Foldable Buttom
*/
class MyFoldableButton extends StatefulWidget {
  const MyFoldableButton({super.key});

  @override
  State<MyFoldableButton> createState() => _MyFoldableButtonState();
}

class _MyFoldableButtonState extends State<MyFoldableButton>
    with TickerProviderStateMixin {
  bool isTapped = true;
  bool isExpanded = false;

  final List<IconData> options = [
    Icons.settings,
    Icons.person,
    Icons.favorite,
    Icons.home,
    Icons.star,
  ];
  late Animation<Alignment> firstAnim;
  late Animation<Alignment> secondAnim;
  late Animation<Alignment> thirdAnim;
  late Animation<Alignment> fourthAnim;
  late Animation<Alignment> fifthAnim;
  late Animation<double> verticalPadding;
  late AnimationController _animationController;
  final duration = const Duration(milliseconds: 200);
  Widget getItem(IconData source) {
    const size = 45.0;
    return GestureDetector(
      onTap: () => _animationController.reverse(),
      child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
              color: const Color(0XFFE95A8B),
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFFE95A8B).withOpacity(0.8),
                    blurRadius: verticalPadding.value),
              ]),
          child: Icon(
            source,
            color: Colors.white.withOpacity(1.0),
            size: 20,
          )),
    );
  }

  Widget buildPrimaryItem(IconData source) {
    const size = 45.0;
    return Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
            color: Color(0XFFE95A8B),
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: Icon(
          source,
          color: Colors.white.withOpacity(1.0),
          size: 20,
        ));
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: duration);
    final anim =
        CurvedAnimation(parent: _animationController, curve: Curves.linear);
    firstAnim = Tween(begin: Alignment.bottomCenter, end: Alignment.topRight)
        .animate(anim);
    secondAnim = Tween(begin: Alignment.bottomCenter, end: Alignment.topLeft)
        .animate(anim);
    thirdAnim = Tween(begin: Alignment.bottomCenter, end: Alignment.centerLeft)
        .animate(anim);
    fourthAnim = Tween(begin: Alignment.bottomCenter, end: Alignment.centerLeft)
        .animate(anim);
    fifthAnim = Tween(begin: Alignment.bottomCenter, end: Alignment.bottomRight)
        .animate(anim);
    verticalPadding = Tween(begin: 0.0, end: 16.0).animate(anim);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Stack(children: [
            Align(
                alignment: firstAnim.value,
                child: getItem(options.elementAt(0))),
            Align(
                alignment: secondAnim.value,
                child: getItem(options.elementAt(1))),
            Align(
                alignment: thirdAnim.value,
                child: getItem(options.elementAt(2))),
            Align(
                alignment: fourthAnim.value,
                child: getItem(options.elementAt(3))),
            Align(
                alignment: fifthAnim.value,
                child: getItem(options.elementAt(4))),
            Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                    onTap: () {
                      _animationController.isCompleted
                          ? _animationController.reverse()
                          : _animationController.forward();
                    },
                    child: buildPrimaryItem(_animationController.isCompleted ||
                            _animationController.isAnimating
                        ? Icons.close
                        : Icons.add)))
          ]);
        });
  }
}

class MyProgressButton extends StatefulWidget {
  const MyProgressButton({super.key});

  @override
  State<MyProgressButton> createState() => _MyProgressButtonState();
}

class _MyProgressButtonState extends State<MyProgressButton> {
  progress_state_button.ButtonState stateOnlyText =
      progress_state_button.ButtonState.idle;
  progress_state_button.ButtonState stateTextWithIcon =
      progress_state_button.ButtonState.idle;

  @override
  Widget build(BuildContext context) {
    return progress_state_button.ProgressButton.icon(iconedButtons: {
      progress_state_button.ButtonState.idle:
          progress_state_button.IconedButton(
              text: 'Send',
              icon: const Icon(Icons.send, color: Colors.white),
              color: Colors.deepPurple.shade300),
      progress_state_button.ButtonState.loading:
          progress_state_button.IconedButton(
              text: 'Loading',
              icon: const Icon(Icons.send, color: Colors.white),
              color: Colors.deepPurple.shade700),
      progress_state_button.ButtonState.fail:
          progress_state_button.IconedButton(
              text: 'Failed',
              icon: const Icon(Icons.cancel, color: Colors.white),
              color: Colors.red.shade300),
      progress_state_button.ButtonState.success:
          progress_state_button.IconedButton(
              text: 'Success',
              icon: const Icon(Icons.check_circle, color: Colors.white),
              color: Colors.green.shade400),
    }, onPressed: onPressedIconWithText, state: stateTextWithIcon);
  }

  void onPressedIconWithText() {
    switch (stateTextWithIcon) {
      case progress_state_button.ButtonState.idle:
        stateTextWithIcon = progress_state_button.ButtonState.loading;
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            stateTextWithIcon = Random.secure().nextBool()
                ? progress_state_button.ButtonState.success
                : progress_state_button.ButtonState.fail;
          });
        });
        break;
      case progress_state_button.ButtonState.loading:
        break;
      case progress_state_button.ButtonState.success:
        stateTextWithIcon = progress_state_button.ButtonState.idle;
        break;
      case progress_state_button.ButtonState.fail:
        stateTextWithIcon = progress_state_button.ButtonState.idle;
        break;
    }
    setState(() {
      stateTextWithIcon = stateTextWithIcon;
    });
  }
}

/*
 * Rounded Loading Button
 * RoundedLoadingButton is a Flutter package with a simple implementation
 * of an animated loading button, complete with success and error animations.
 * configurable properties:
 * duration - The duration of the button animation
 * loaderSize - The size of the CircularProgressIndicator
 * animateOnTap - Whether to trigger the loading animation on the tap event
 * resetAfterDuration - Reset the animation after specified duration, defaults to 15 seconds
 * errorColor - The color of the button when it is in the error state
 * successColor - The color of the button when it is in the success state
 * successIcon - The icon for the success state
 * failedIcon - The icon for the failed state
 */

class MyRoundedLoadingButton extends StatefulWidget {
  const MyRoundedLoadingButton({super.key});

  @override
  State<MyRoundedLoadingButton> createState() => _MyRoundedLoadingButtonState();
}

class _MyRoundedLoadingButtonState extends State<MyRoundedLoadingButton> {
  final rounded_loading_button.RoundedLoadingButtonController _btnController1 =
      rounded_loading_button.RoundedLoadingButtonController();

  void _doSomething(
      rounded_loading_button.RoundedLoadingButtonController controller) async {
    Timer(const Duration(seconds: 10), () {
      controller.success();
    });
  }

  @override
  void initState() {
    super.initState();
    _btnController1.stateStream.listen((value) {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return rounded_loading_button.RoundedLoadingButton(
      successIcon: Icons.cloud,
      failedIcon: Icons.cottage,
      controller: _btnController1,
      onPressed: () => _doSomething(_btnController1),
      child: const Text('Tap me!', style: TextStyle(color: Colors.white)),
    );
  }
}

/*
 * Download Button
 */

enum DownloadStatus {
  notDownloaded,
  fetchingDownload,
  downloading,
  downloaded,
}

class MyDownloadButton extends StatefulWidget {
  const MyDownloadButton({
    Key? key,
    this.progress = 0.0,
    required this.status,
    required this.onDownload,
    required this.onCancel,
    required this.onOpen,
    this.transitionDuration = const Duration(milliseconds: 500),
  }) : super(key: key);

  final double progress;
  final DownloadStatus status;
  final Duration transitionDuration;

  final VoidCallback onDownload;
  final VoidCallback onCancel;
  final VoidCallback onOpen;

  @override
  State<MyDownloadButton> createState() => _MyDownloadButtonState();
}

class _MyDownloadButtonState extends State<MyDownloadButton> {
  bool get _isDownloading => widget.status == DownloadStatus.downloading;
  bool get _isFetching => widget.status == DownloadStatus.fetchingDownload;
  bool get _isDownloaded => widget.status == DownloadStatus.downloaded;

  void _onPressed() {
    switch (widget.status) {
      case DownloadStatus.notDownloaded:
        widget.onDownload();
        break;
      case DownloadStatus.fetchingDownload:
        // do nothing
        break;
      case DownloadStatus.downloading:
        widget.onCancel();
        break;
      case DownloadStatus.downloaded:
        widget.onOpen();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onPressed,
        child: Stack(
          children: [
            _buildButtonShape(
              child: _buildText(),
            ),
            _buildDownloadingProgress(),
          ],
        ));
  }

  Widget _buildButtonShape({
    required Widget child,
  }) {
    return AnimatedContainer(
      duration: widget.transitionDuration,
      curve: Curves.ease,
      width: double.infinity,
      decoration: _isDownloading || _isFetching
          ? ShapeDecoration(
              shape: const CircleBorder(),
              color: Colors.white.withOpacity(0.0),
            )
          : const ShapeDecoration(
              shape: StadiumBorder(),
              color: CupertinoColors.lightBackgroundGray),
      child: child,
    );
  }

  Widget _buildText() {
    final text = _isDownloaded ? 'OPEN' : 'GET';
    final opacity = _isDownloading || _isFetching ? 0.0 : 1.0;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: AnimatedOpacity(
          duration: widget.transitionDuration,
          opacity: opacity,
          curve: Curves.ease,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.activeBlue,
                ),
          ),
        ));
  }

  Widget _buildDownloadingProgress() {
    return Positioned.fill(
        child: AnimatedOpacity(
            duration: widget.transitionDuration,
            opacity: _isDownloading || _isFetching ? 1.0 : 0.0,
            curve: Curves.ease,
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildProgressIndicator(),
                if (_isDownloading)
                  const Icon(
                    Icons.stop,
                    size: 14.0,
                    color: CupertinoColors.activeBlue,
                  )
              ],
            )));
  }

  Widget _buildProgressIndicator() {
    return AspectRatio(
      aspectRatio: 1.0,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: widget.progress),
        duration: const Duration(milliseconds: 200),
        builder: (BuildContext context, double progress, Widget? child) {
          return CircularProgressIndicator(
            backgroundColor: _isDownloading
                ? CupertinoColors.lightBackgroundGray
                : Colors.white.withOpacity(0.0),
            valueColor: AlwaysStoppedAnimation(_isFetching
                ? CupertinoColors.lightBackgroundGray
                : CupertinoColors.activeBlue),
            strokeWidth: 2.0,
            value: _isFetching ? null : progress,
          );
        },
      ),
    );
  }
}
