class ActividadModel {
   final int? id;
   final String? nombre;
   final String descripcion;

  ActividadModel({
    this.id ,
    this.nombre,
    this.descripcion = ''
  });

  ActividadModel copyWith({
    String? nombre,
    String? descripcion,
  }) => ActividadModel(
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
    );

  factory ActividadModel.fromJson(Map<String, dynamic> json) => ActividadModel(
        id: json["id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"]
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "descripcion": descripcion,
      };
}
