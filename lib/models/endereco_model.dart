import 'dart:convert';

class EnderecoModel {
  final String cep;
  final String logradouro;
  final String complemento;

  EnderecoModel({
    required this.cep,
    required this.logradouro,
    required this.complemento,
  });

  EnderecoModel copyWith({
    String? cep,
    String? logradouro,
    String? complemento,
  }) {
    return EnderecoModel(
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      complemento: complemento ?? this.complemento,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
    };
  }

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
      cep: map['cep'] as String,
      logradouro: map['logradouro'] as String,
      complemento: map['complemento'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EnderecoModel.fromJson(String source) =>
      EnderecoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'EnderecoModel(cep: $cep, logradouro: $logradouro, complemento: $complemento)';

  @override
  bool operator ==(covariant EnderecoModel other) {
    if (identical(this, other)) return true;

    return other.cep == cep &&
        other.logradouro == logradouro &&
        other.complemento == complemento;
  }

  @override
  int get hashCode => cep.hashCode ^ logradouro.hashCode ^ complemento.hashCode;
}
