class RoomData {
  int adults = 0;
  int children = 0;
  int rooms = 0;
  DateTime? checkInController;
  DateTime? checkOutController;
  String placementType ='hotels';
  String? location;
  String? vent;
  set setPlacementType(String placement){
    placementType=placement;
  }
  set setCheckOutController (DateTime chOut){
    checkInController =chOut;
  }
  set setCheckInController (DateTime chIn){
    checkInController =chIn;
  }
  set setLocation(String location){
    this.location=location;
  }
  set setVent(String vent){
    this.vent=vent;
  }
  set setAdults(int ad) {
    adults = ad;
  }
  set setRooms(int room) {
    rooms = room;
  }
  set setChildren(int ch) {
    children = ch;
  }

  int get getAdults {
    return adults;
  }
  int get getRooms {
    return rooms;
  }
  int get getChildren {
    return children;
  }
  String? get getVent{
    return vent;
  }
  String? get getLocation{
    return location;
  }
  String? get getPlacementType{
    return placementType;
  }
  DateTime? get getCheckInController{
    return checkInController;
  }
  DateTime? get getCheckOutController{
    return checkOutController;
  }

}
