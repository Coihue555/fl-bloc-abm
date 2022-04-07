class ActividadModel {
   int? id;
   String nombre;
   String descripcion;

  ActividadModel({
    this.id ,
    required this.nombre,
    this.descripcion = ''
  });

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
