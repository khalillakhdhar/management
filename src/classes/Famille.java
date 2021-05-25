package classes;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Famille {
String nom;
int num;
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}

@Override
public ResultSet liste() throws SQLException {
	// TODO Auto-generated method stub
	Connexion c=new Connexion();
	PreparedStatement pst;
	pst = (PreparedStatement)
	c.conn.prepareStatement("SELECT * FROM famille");
	pst.executeQuery();
	ResultSet rs = (ResultSet) pst.executeQuery();
	return rs;
}

}
