class Plants {
  int id;
  String name;
  int howManyWeeks;
  String plantsForm;
  int time;
  int notifyId;

  Plants(
      {required this.id,
      required this.howManyWeeks,
      required this.time,
      required this.plantsForm,
      required this.name,
      required this.notifyId});

  //------------------set plants to map-------------------

  Map<String, dynamic> plantToMap() {
    Map<String, dynamic> map = Map();
    map['id'] = this.id;
    map['name'] = this.name;
    map['howManyWeeks'] = this.howManyWeeks;
    map['plantsForm'] = this.plantsForm;
    map['time'] = this.time;
    map['notifyId'] = this.notifyId;
    return map;
  }

  //---------------------create plants object from map---------------------
  Plants plantMapToObject(Map<String, dynamic> plantMap) {
    return Plants(
        id: plantMap['id'],
        name: plantMap['name'],
        howManyWeeks: plantMap['howManyWeeks'],
        plantsForm: plantMap['medicineForm'],
        time: plantMap['time'],
        notifyId: plantMap['notifyId']);
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
