import 'package:flutter/material.dart';

class CustomerModel {
  String name,
      customerid,
      customertype,
      membershipTier,
      emailaddress,
      contactnumber,
      outletname,
      comment;
  CustomerModel(
      {@required this.name,
      @required this.customerid,
      @required this.outletname,
      @required this.membershipTier,
      @required this.emailaddress,
      @required this.contactnumber,
      @required this.comment,
      @required this.customertype});
}

List<CustomerModel> customermodel = [
  CustomerModel(
      name: "Ava Loh",
      outletname: "Outlet name 1",
      customerid: "S129040 G",
      membershipTier: "Platinum",
      emailaddress: "Avaloh@gmail.com",
      contactnumber: "+65 9182 8029",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      customertype: "Member"),
  CustomerModel(
      name: "Adeline Tan",
      outletname: "Outlet name 2",
      customerid: "S129040 G",
      membershipTier: "Platinum",
      emailaddress: "Avaloh@gmail.com",
      contactnumber: "+65 9182 8029",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      customertype: "Member"),
  CustomerModel(
      name: "Ava Loh",
      customerid: "S129040 G",
      membershipTier: "Platinum",
      emailaddress: "Avaloh@gmail.com",
      outletname: "Outlet name 3",
      contactnumber: "+65 9182 8029",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      customertype: "Member"),
  CustomerModel(
      name: "Adeline Tan",
      customerid: "S129040 G",
      membershipTier: "Platinum",
      emailaddress: "Avaloh@gmail.com",
      contactnumber: "+65 9182 8029",
      outletname: "Outlet name 4",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      customertype: "Member"),
  CustomerModel(
      name: "Ava Loh",
      customerid: "S129040 G",
      outletname: "Outlet name 4",
      membershipTier: "Platinum",
      emailaddress: "Avaloh@gmail.com",
      contactnumber: "+65 9182 8029",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      customertype: "Member"),
  CustomerModel(
      name: "Adeline Tan",
      customerid: "S129040 G",
      membershipTier: "Platinum",
      emailaddress: "Avaloh@gmail.com",
      outletname: "Outlet name 4",
      contactnumber: "+65 9182 8029",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      customertype: "Member"),
];
