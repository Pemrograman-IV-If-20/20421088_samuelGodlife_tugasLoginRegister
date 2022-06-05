import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/Components/default_button_custome_color.dart';
import 'package:toko_gitar_flutter/Screens/login/loginScreens.dart';
import 'package:toko_gitar_flutter/Screens/register/registrasi.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? fullname;
  String? username;
  String? email;
  String? passowrd;
  bool? remember = false;

  TextEditingController txtfullname = TextEditingController(),
      txtusername = TextEditingController(),
      txtemail = TextEditingController(),
      txtpassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildFullName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [],
          ),
          DefaultButtonCustomeColor(
            color: kPrimaryColor,
            text: "REGISTRASI",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, loginScreens.routeName);
              },
              child: Text(
                "Sudah Punya Akun? Login Disini",
                style: TextStyle(decoration: TextDecoration.underline),
              )),
          SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }

  TextFormField buildFullName() {
    return TextFormField(
      controller: txtfullname,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Nama Lengkap',
          hintText: 'Masukkan nama lengkap anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtusername,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukkan username anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtemail,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Masukkan email lengkap anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          )),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtpassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukkan password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }
}
