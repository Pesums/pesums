import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pesumsdownloads/feedback/user_feedback.dart';

class UserFeedback extends StatefulWidget {
const UserFeedback({super.key});
@override
State<UserFeedback> createState() => _UserFeedbackState();
}

class _UserFeedbackState extends State<UserFeedback> {
final _formKey = GlobalKey<FormState>();
var name = "";
var feedback = "";

final nameController = TextEditingController();
final feedbackController = TextEditingController();

@override
void initState() {
super.initState();
}

@override
void dispose() {
super.dispose();
}

bool smartuser = false;
Future<void> nOMa() async {
try {
final result = await InternetAddress.lookup('google.com');
if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
setState(() {
smartuser = true;
});
}
} on SocketException catch (_) {
setState(() {
smartuser = false;
});
}
}

@override
Widget build(BuildContext context) {
nOMa();
return Scaffold(
resizeToAvoidBottomInset: true,
backgroundColor: Colors.white,
appBar: AppBar(
backgroundColor: Color.fromARGB(155, 121, 172, 255),
foregroundColor: Color(0xFF797979),
surfaceTintColor: Color(0xFFFFFFFF),
actions: [
Padding(
padding: EdgeInsets.fromLTRB(0, 0, 22, 0),
child: SvgPicture.asset(
'img/comments-svgrepo-com.svg',
// ignore: deprecated_member_use
color: Colors.white,

height: 33,
),
)
],
leading: IconButton(
onPressed: () {
Navigator.of(context).pop();
},
icon: SvgPicture.asset(
'img/3.svg',
height: 22,
color: Colors.white,
),
),
title: Text(
'Feedback',
style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: "OSSB"),
),
),
body: smartuser
? Form(
key: _formKey,
child:
ListView(
padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
children: [
Container(padding: EdgeInsets.fromLTRB(0, 3, 0, 2)),
TextFormField(
onChanged: (value) => {
if (_formKey.currentState!.validate()) {},
},
style: TextStyle(
fontSize: 18,
color: Colors.black,
height: 1,
fontFamily: 'LTR',
),
minLines: 1,
maxLines:27,
maxLength: 5000,
autofocus: true,

cursorWidth: 1.2,
// cursorHeight:33,
cursorColor: Color(0xFF61A3FF),
controller: feedbackController,
textInputAction: TextInputAction.newline,
decoration: InputDecoration(
contentPadding: EdgeInsets.fromLTRB(11, 4, 3, 6),
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(6),
borderSide:
BorderSide(color: Color(0xFF909090), width: 1)),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(6),
borderSide:
BorderSide(color: Color(0xFF2F82FF), width: 1),
),
hintText:
'Please describe your problems or suggestions,\nhere providing as many details as possible.\nIf you are reporting a problem include the,\ndate and time the problem occurred,\nand the exact text of the error message you,\nreceived.\n',
hintStyle: TextStyle(
fontFamily: "LTR",
fontSize: 14,
height: 1.3,
wordSpacing: 1.9,
fontWeight: FontWeight.normal,
color: Color(0xFF3F3F3F)),
errorStyle: TextStyle(
decorationColor: Colors.grey,
color: Color(0xFFFF452C),
fontFamily: 'LTR',
fontSize: 11),
),
validator: (value) {
if (value!.isEmpty) {
return 'Please write the feedback';
} else if (value.contains('  ')) {
return 'Please write the feedback not the white space';
} else if (value.contains('11111')) {
return 'Please write the feedback What are you doign???';
} else if (value.contains('12345678')) {
return 'This is your Hotspot password (1to8)\nOkay now Write a useful Feedback!';
} else if (value.contains('1')) {
return 'Please write the feedback in Strings 1 as (one)';
} else if (value.contains('2')) {
return 'Please write the feedback in Strings 2 as (two)';
} else if (value.contains('3')) {
return 'Please write the feedback in Strings 3 as (three)';
} else if (value.contains('4')) {
return 'Please write the feedback in Strings 4 as (four)';
} else if (value.contains('5')) {
return 'Please write the feedback in Strings 5 as (five)';
} else if (value.contains('6')) {
return 'Please write the feedback in Strings 6 as (six)';
} else if (value.contains('7')) {
return 'Please write the feedback in Strings 7 as (seven)';
} else if (value.contains('8')) {
return 'Please write the feedback in Strings 8 as (eight)';
} else if (value.contains('9')) {
return 'Please write the feedback in Strings 9 as (nine)';
} else if (value.contains('0')) {
return 'Please write the feedback in Strings 0 as (zero)';
} else if (value.contains('\n\n\n\n')) {
return 'Nope you also click four time enter!!!!';
} else if (value.contains('<')) {
return 'Nope';
} else if (value.contains('>>>')) {
return 'Nope';
} else if (value.contains('%%%')) {
return 'Nope';
} else if (value.contains('@@@@@@')) {
return 'Nope';
} else if (value.contains('^^^')) {
return 'Nope';
} else if (value.contains('~~~')) {
return 'Nope';
} else if (value.contains('```')) {
return 'Nope';
} else if (value.contains('abcdefghi')) {
return 'Nope';
} else if (value.contains('/')) {
return 'Nope';
} else {
return null;
}
},
),
Container(
padding: EdgeInsets.all(22),
child: Text(
'Please leave your e-mail or WhatsApp for us to better serve you (mandatory):',
style: TextStyle(
color: Color.fromARGB(255, 56, 56, 56),
fontSize: 13,
fontFamily: ' OpenSans',
wordSpacing: 2,
height: 1.3,
fontWeight: FontWeight.normal),
)),
Container(
height: 77,
padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
child: TextFormField(
onChanged: (value) => {
if (_formKey.currentState!.validate()) {},
},
style: TextStyle(
fontSize: 18,
color: Colors.black,
height: 1,
fontFamily: 'LTR',
),
minLines: 1,
maxLines:3,
maxLength: 99,
cursorWidth: 1.2,
// cursorHeight: 31,
textInputAction: TextInputAction.newline,
cursorColor: Color(0xFF489DFF),
decoration: InputDecoration(
contentPadding: EdgeInsets.fromLTRB(11, 6, 3, 6),
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(6),
borderSide:
BorderSide(color: Color(0xFF909090), width: 1)),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(6),
borderSide:
BorderSide(color: Color(0xFF2F82FF), width: 1),
),
hintText: '',
errorStyle: TextStyle(
decorationColor: Colors.grey,
color: Color(0xFFFF452C),
fontSize: 11,
fontFamily: 'LTR',
),
),
// ignore: body_might_complete_normally_nullable
validator: (value) {
if (value!.isEmpty) {
return 'Please leave your e-mail or WhatsApp\nfor us to better serve you (mandatory):';
}
},
controller: nameController,
),
),

GestureDetector(
onTap: () async {
if (_formKey.currentState!.validate()) {
Navigator.of(context).pop();
}
if (_formKey.currentState!.validate()) {
showDialog(
context: context,
builder: (context) {
Future.delayed(Duration(microseconds:700)).then((value) =>Navigator.of(context).pop() );
return Dialog(
elevation: 0,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(3)),
backgroundColor: Colors.white,
surfaceTintColor: Colors.white,
child: Stack(
children: [
Container(
padding: EdgeInsets.all(12),
alignment: Alignment.center,
height: 88,
width: 488,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(63),
color: Color(0xFFFFFFFF),
),
child: ListTile(
leading: CircularProgressIndicator(
strokeWidth: 3,
backgroundColor: Color(0xFFEDEDED),
valueColor:
const AlwaysStoppedAnimation<
Color>(Colors.blue),
),
title: Text(
'Directing to gmail.....',
style: TextStyle(
fontSize: 15,
fontFamily: 'OpenSans',
fontWeight: FontWeight.bold,
color: Color(0xFF5197FF)),
),
),
),
],
),
);
});
await userFeedback(nameController.text, feedbackController.text);
}
},
child: Container(
padding: EdgeInsets.fromLTRB(22, 4, 24, 0),
child: Container(
padding: EdgeInsets.all(6),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(33),
color: Color.fromARGB(155, 121, 172, 255)),
child: Center(
child: Text(
'Submit',
style: TextStyle(
color: Color(0xFFFFFFFF),
fontFamily: 'OpenSans',
fontSize: 18,
fontWeight: FontWeight.bold),
),
)),
),
),
Container(
padding: EdgeInsets.all(22),
child: Text(
'Or send us an email at: jamesthompson6.0x@gmail.com.\nIf possible please take a screenshot when the problem occurred and attach the screenshot to your email.',
style: TextStyle(
color: Color.fromARGB(255, 56, 56, 56),
fontSize: 13,
fontFamily: ' OpenSans',
wordSpacing: 2,
height: 1.3,
fontWeight: FontWeight.normal),
)),
],
),
)
: Center(
child: Stack(children: [
LinearProgressIndicator(
color: Color(0xFF3A96FF),
minHeight: 1,
backgroundColor: Color(0xFFD7D7D7),
),
Center(
child: Text(''),
),
])

//
),
);
}
}
