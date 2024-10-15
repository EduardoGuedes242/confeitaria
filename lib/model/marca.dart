class MarcaModel {
  int? mrcId;
  String? mrcNome;

  MarcaModel({this.mrcId, this.mrcNome});

  MarcaModel.fromJson(Map<String, dynamic> json) {
    mrcId = json['mrcId'];
    mrcNome = json['mrcNome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.mrcNome;
    return data;
  }
}
