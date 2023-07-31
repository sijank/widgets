import 'package:flutter/material.dart';
import 'button_widgets.dart';

class MyButtonScreen extends StatelessWidget {
  const MyButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Button Widgets'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: 'Back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const SafeArea(
          child: MyGridView(),
        ));
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        // here u can simply use Gridview.count..remove gridDelegate & recieve the same result
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 0.7,
        ),
        children: const <Widget>[
          MyButtonWidget(
            name: "Flat Button",
            child: MyFlatButton(),
          ),
          MyButtonWidget(name: "Outline Button ", child: MyOutlineButton()),
          MyButtonWidget(name: "Material Button", child: MyMaterialButton()),
          MyButtonWidget(
              name: "Raw Material Button", child: MyRawMaterialButton()),
          MyButtonWidget(name: "Elevated Button", child: MyElevatedButton()),
          MyButtonWidget(
              name: "Elevated Button 2 ", child: MyElevatedButton2()),
          MyButtonWidget(name: "Gradient Button  ", child: MyGradientButton()),
          MyButtonWidget(name: "Filled Button  ", child: MyFilledButton()),
          MyButtonWidget(name: "Icon Button ", child: MyIconButton()),
          MyButtonWidget(name: "Toggle Buttons ", child: MyToggleButton()),
          MyButtonWidget(
              name: "PopupMenu Buttons ", child: MyPopupMenuBotton()),
          MyButtonWidget(name: "Dropdown Buttons ", child: MyDropdownButton()),
          MyButtonWidget(
              name: "Without Underline Dropdown Button ",
              child: MyDropdownButton2()),
          MyButtonWidget(
              name: "Popup Menu Button ", child: MyPopupMenuButton()),
          MyButtonWidget(
              name: "Floating Action Button ", child: MyFloatActionButton()),
          MyButtonWidget(
              name: "Floating Action Extended Button ",
              child: MyFloatActionExtButton()),
          MyButtonWidget(
              name: "Responsive Button ", child: MyResponsiveButton()),
          MyButtonWidget(
              name: "Simple Animated Button ", child: MySimpleAnimatedButton()),
          MyButtonWidget(
              name: "Strip Animated Button ", child: MyStripAnimatedButton()),
          MyButtonWidget(
              name: "3D Animated Button ", child: My3DAnimatedButton()),
          MyButtonWidget(
              name: "Animated Icon Button 1 ",
              child: MyAnimatedChangeIconButton()),
          MyButtonWidget(
              name: "Animated Icon Button 2 ",
              child: MyAnimatedbgChangeIconButton()),
          MyButtonWidget(
              name: "Animated Icon Button 3 ", child: MyAnimatedIconButton()),
          MyButtonWidget(
              name: "Ripple Animation Button ",
              child: MyRippleAnimatedButton()),
          MyButtonWidget(
              name: "Foldable Animation Button ", child: MyFoldableButton()),
          MyButtonWidget(
              name: "Progress Animation Button ", child: MyProgressButton()),
          MyButtonWidget(
              name: "Rounded Loading Button ", child: MyRoundedLoadingButton()),
          // MyButtonWidget(name: "Download Button ", child: MyDownloadButton(context)),
        ]);
  }
}

class MyButtonWidget extends StatelessWidget {
  final String? name;
  final Widget? child;

  const MyButtonWidget({
    super.key,
    this.name,
    this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              name!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          child!,
        ],
      ),
    );
  }
}
