import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:r_app/views/pages/splash_screen/splash_screen.dart';

import 'contant/sizeconfig.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      });
    });
  }
}

// import 'package:dropdown_formfield/dropdown_formfield.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DropDownHelper(),
//     );
//   }


// class DropDownHelper extends StatefulWidget {
//   const DropDownHelper({Key key}) : super(key: key);

//   @override
//   State<DropDownHelper> createState() => _DropDownHelperState();
// }

// class _DropDownHelperState extends State<DropDownHelper> {
//   List dropDownListData = [
//     {"title": "BCA", "value": "1"},
//     {"title": "MCA", "value": "2"},
//     {"title": "B.Tech", "value": "3"},
//     {"title": "M.Tech", "value": "4"},
//   ];

//   String defaultValue = "";
//   String secondDropDown = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("DropDown Example"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: ListView(children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
            
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton<String>(
//                   isDense: true,
//                   value: defaultValue,
//                   isExpanded: true,
//                   menuMaxHeight: 350,
//                   items: [
//                     const DropdownMenuItem(
//                         child: Text(
//                           "Select Course",
//                         ),
//                         value: ""),
//                     ...dropDownListData.map<DropdownMenuItem<String>>((data) {
//                       return DropdownMenuItem(
//                           child: Text(data['title']), value: data['value']);
//                     }).toList(),
//                   ],
//                   onChanged: (value) {
//                     print("selected Value $value");
//                     setState(() {
//                       defaultValue = value;
//                     });
//                   }),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           InputDecorator(
//             decoration: InputDecoration(
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
//               contentPadding: const EdgeInsets.all(10),
//             ),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton<String>(
//                   isDense: true,
//                   value: secondDropDown,
//                   isExpanded: true,
//                   menuMaxHeight: 350,
//                   items: [
//                     const DropdownMenuItem(
//                         child: Text(
//                           "Select Course",
//                         ),
//                         value: ""),
//                     ...dropDownListData.map<DropdownMenuItem<String>>((data) {
//                       return DropdownMenuItem(
//                           child: Text(data['title']), value: data['value']);
//                     }).toList(),
//                   ],
//                   onChanged: (value) {
//                     print("selected Value $value");
//                     setState(() {
//                       secondDropDown = value;
//                     });
//                   }),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 if (secondDropDown == "") {
//                   print("Please select a course");
//                 } else {
//                   print("user selected course $defaultValue");
//                 }
//               },
//               child: const Text("Submit"))
//         ]),
//       ),
//     );
//   }
// }
