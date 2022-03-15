class CharacterModel
{
  int? charId;
  String? name;
  //List<CharacterModel>? occupation;
  String? img;
  String? status;
  String? nickname;
  //List<CharacterModel>? appearance;
  String? portrayed;
  String? category;
  //List<Null>? betterCallSaulAppearance;//better_call_saul_appearance

  CharacterModel.fromJson( Map<String, dynamic> json)
  {
    charId = json['char_id'];
    name = json['name'];
    //occupation = json['occupation'].cast<String>();
    img = json['img'];
    status = json['status'];
    nickname = json['nickname'];
   // appearance = json['appearance'].cast<int>();
    portrayed = json['portrayed'];
    category = json['category'];
   // betterCallSaulAppearance = json["better_call_saul_appearance"];
  }
}