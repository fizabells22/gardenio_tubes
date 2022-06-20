class Plants {
  int id;
  String name;
  int howManyWeeks;
  String plantsForm;
  int time;
  int notifyId;

  int get _id => id;
  String get _name => this.name;
  set _name(String value) => this.name = value;
  get _howManyWeeks => this.howManyWeeks;
  set _howManyWeeks(value) => this.howManyWeeks = value;
  get _plantsForm => this.plantsForm;
  set _plantsForm(value) => this.plantsForm = value;
  get _time => this.time;
  set _time(value) => this.time = value;
  get _notifyId => this.notifyId;
  set _notifyId(value) => this.notifyId = value;

  Plants(
      {required this.id,
      required this.howManyWeeks,
      required this.time,
      required this.plantsForm,
      required this.name,
      required this.notifyId});

  //------------------set plants to map-------------------

  Map<String, dynamic> plantToMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this.id;
    map['name'] = this.name;
    map['howManyWeeks'] = this.howManyWeeks;
    map['plantsForm'] = this.plantsForm;
    map['time'] = this.time;
    map['notifyId'] = this.notifyId;
    return map;
  }

  //---------------------create plants object from map---------------------
  Plants plantMapToObject(Map<String, dynamic> map) {
    return Plants(
        id: map['id'],
        name: map['name'],
        howManyWeeks: map['howManyWeeks'],
        plantsForm: map['plantsForm'],
        time: map['time'],
        notifyId: map['notifyId']);
  }

  //---------------------| Get the plants image path |-------------------------
  String get image {
    switch (this.plantsForm) {
      case "Monstera":
        return "assets/images/1. monstera.jpg";
        break;
      case "Aloevera":
        return "assets/images/1. aloevera.jpg";
        break;
      case "Sansevieria":
        return "assets/images/1. sansevieria.jpg";
        break;
      case "Pothos":
        return "assets/images/1. pothos.jpg";
        break;
      case "Cactus":
        return "assets/images/1. cactus.jpg";
        break;
      case "Spider Plant":
        return "assets/images/1. spider plant.jpg";
        break;
      default:
        return "assets/images/1. peace lily.jpg";
        break;
    }
  }
}
