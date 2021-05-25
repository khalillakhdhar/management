package classes;

public class User {
private String nom,prenom,adresse,profession,email,password;
private int age;
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getPrenom() {
	return prenom;
}
public void setPrenom(String prenom) {
	this.prenom = prenom;
}
public String getAdresse() {
	return adresse;
}
public void setAdresse(String adresse) {
	this.adresse = adresse;
}
public String getProfession() {
	return profession;
}
public void setProfession(String profession) {
	this.profession = profession;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
public User(String nom, String prenom, String adresse, String profession, String email, String password, int age) {
	super();
	this.nom = nom;
	this.prenom = prenom;
	this.adresse = adresse;
	this.profession = profession;
	this.email = email;
	this.password = password;
	this.age = age;
}
@Override
public String toString() {
	return "User [nom=" + nom + ", prenom=" + prenom + ", adresse=" + adresse + ", profession=" + profession
			+ ", email=" + email + ", password=" + password + ", age=" + age + "]";
}

}
