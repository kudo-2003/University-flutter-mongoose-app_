
import 'package:flutter/material.dart';

class SignUpInput {

  Widget textInputName({required TextEditingController controller, required String hint, required IconData icon}) { // Thêm từ khóa 'required' cho các tham số
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Don"t leave anything blank here!🙄';
          }
          return null;
          },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }

  Widget textInputEmail({required TextEditingController controller, required String hint, required IconData icon}) { // Thêm từ khóa 'required' cho các tham số
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Don"t leave anything blank here!';
          }
          if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
            return 'The email address is not in the correct format!🙄';
          }
          return null;
          },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
  Widget textInputPhone({required TextEditingController controller, required String hint, required IconData icon}) { // Thêm từ khóa 'required' cho các tham số
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Don"t leave anything blank here!🙄';
          }
           if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
            return 'The phone number is not in the correct format!🙄 ';
          }
          return null;
          },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }

  Widget textInputPassword({required TextEditingController controller, required String hint, required IconData icon}) { // Thêm từ khóa 'required' cho các tham số
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Don"t leave anything blank here!🙄';
          }
          if (value.length < 8) {
              return 'Password must be at least 8 characters!🙄';
            }
          return null;
          },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
