import 'package:flutter/material.dart';

class PaymentMethodModel {
  String name, accountnumber, accounttype, bankname;
  PaymentMethodModel({
    @required this.name,
    @required this.accountnumber,
    @required this.bankname,
    @required this.accounttype,
  });
}

List<PaymentMethodModel> paymentmethodmodel = [
  PaymentMethodModel(
      name: "Josh Wheeler",
      accountnumber: "Pk12345",
      bankname: "MCB",
      accounttype: "Saving"),
  PaymentMethodModel(
      name: "Hector Phillips",
      accountnumber: "qw12345",
      bankname: "HBL",
      accounttype: "Current"),
  PaymentMethodModel(
      name: "Christine Wong",
      accountnumber: "qwk12345",
      bankname: "MEEZAN",
      accounttype: "Current"),
  PaymentMethodModel(
      name: "Brian Paul",
      accountnumber: "Psdk12345",
      bankname: "Other",
      accounttype: "Saving"),
  PaymentMethodModel(
      name: "Christopher Wade",
      accountnumber: "Psdgk12345",
      bankname: "MCB",
      accounttype: "Saving"),
  PaymentMethodModel(
      name: "Lucas Day",
      accountnumber: "Pasdk12345",
      bankname: "MCB",
      accounttype: "Saving"),
  PaymentMethodModel(
      name: "Desmond Goh",
      accountnumber: "asdPk12345",
      bankname: "MCB",
      accounttype: "Saving"),
  PaymentMethodModel(
      name: "Brian Paul",
      accountnumber: "Pkss12345",
      bankname: "MCB",
      accounttype: "Saving"),
];
