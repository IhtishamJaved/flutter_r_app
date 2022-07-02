import 'package:flutter/material.dart';

class OutletServiceModel {
  String servicename;
  int nonmember, silver, gold, platinum;
  OutletServiceModel(
      {@required this.servicename,
      @required this.gold,
      @required this.platinum,
      @required this.silver,
      @required this.nonmember});
}

class OutletPackageModel {
  String packagename;
  int nonmember, silver, gold, platinum;
  OutletPackageModel(
      {@required this.packagename,
      @required this.nonmember,
      @required this.gold,
      @required this.platinum,
      @required this.silver});
}

class OutletStaffModel {
  String name, id;
  OutletStaffModel({@required this.name, @required this.id});
}

List<OutletServiceModel> outletservicemodel = [
  OutletServiceModel(
    servicename: "Service Name 1",
    gold: 20,
    platinum: 15,
    silver: 10,
    nonmember: 20,
  ),
  OutletServiceModel(
    servicename: "Service Name 2",
    gold: 25,
    platinum: 20,
    silver: 15,
    nonmember: 200,
  ),
];
List<OutletPackageModel> outletpackagemodel = [
  OutletPackageModel(
    packagename: "Package Name 1",
    gold: 100,
    platinum: 150,
    silver: 50,
    nonmember: 400,
  ),
  OutletPackageModel(
    packagename: "Package Name 2",
    gold: 150,
    platinum: 250,
    silver: 100,
    nonmember: 400,
  ),
];
List<OutletStaffModel> outletstaffmodel = [
  OutletStaffModel(name: "Ava Loh", id: "w238823"),
  OutletStaffModel(name: "AvaLoh", id: "asdw238823"),
  OutletStaffModel(name: "Avah", id: "wsadf238823"),
  OutletStaffModel(name: "AvaL", id: "r238823"),
  OutletStaffModel(name: "Ava Loh", id: "w238823"),
  OutletStaffModel(name: "Ava Loh", id: "w238823"),
  OutletStaffModel(name: "Ava Loh", id: "w238823"),
  OutletStaffModel(name: "Ava Loh", id: "w238823"),
  OutletStaffModel(name: "Ava Loh", id: "w238823"),
];
