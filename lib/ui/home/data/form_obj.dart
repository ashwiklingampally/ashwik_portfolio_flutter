class FormObj{
  String email;
  String mobile;
  String message;
  String name;
  FormObj(this.email,this.mobile,this.message,this.name);
  String toParams()=>"?email=$email&mobile=$mobile&message=$message&name=$name";
}