package testes;

import classes.User;
import classes.Users;
public class MainTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
User u1=new User("teste","teste","teste","teste","test@gmail.com","teste",22);
User u2=new User("teste2","teste2","teste2","teste2","test2@gmail.com","teste2",33);
Users us=new Users();
us.add(u1);
us.add(u2);
for(User x: Users.mylist)
{
	
System.out.println(x.toString());
}


//boolean tst=us.existe("test2@gmail.com", "teste2");
//System.out.println(tst);
	}

}
