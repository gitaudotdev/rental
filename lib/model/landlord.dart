class Landlord {
  int id; //gotten from db and generated for each landlord
  final String full_name;
  final String email;
  final String phone;
  final String id_number;
  final String image;

  Landlord(this.full_name, this.email, this.phone, this.id_number, this.image);

  Map<String,dynamic> toMap(){
    
  }
}
