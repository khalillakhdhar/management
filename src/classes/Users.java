package classes;

import java.util.ArrayList;

public class Users {
public static ArrayList<User> mylist=new ArrayList<User>();
public void add(User u)
{
	
mylist.add(u);

}
public static ArrayList<User> getMylist() {
	return mylist;
}
public static void setMylist(ArrayList<User> mylist) {
	Users.mylist = mylist;
}
public User exist(String mail,String password)
{

for(User x: Users.mylist)
{
if(x.getEmail().equals(mail)&&(x.getPassword().equals(password)))
{
return x;

}

}

return null;
}
public static void delete(int index)
{
	Users.mylist.remove(index);
	


}
public static User findbyId(int index)
{
return Users.mylist.get(index);	
}
}
