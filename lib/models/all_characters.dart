class Character
{
  late int char_id;
  late String name;
  late String img;
  late String nickname;
  late List<dynamic> occupation;
  late String status;
  late List<dynamic> appearance;
  late String portrayed;
  late String category;
  late List<dynamic> betterCallSaulAppearance;//better_call_saul_appearance

  Character.fromJson(Map<String, dynamic>json)
  {
    char_id = json["char_id"];
    name = json["name"];
    img = json["img"];
    nickname = json["nickname"];
    occupation = json["occupation"];
    status = json["status"];
    appearance = json["appearance"];
    portrayed = json["portrayed"];
    category = json["category"];
    betterCallSaulAppearance = json["better_call_saul_appearance"];
  }


}