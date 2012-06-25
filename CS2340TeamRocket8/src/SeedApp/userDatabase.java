package SeedApp;

import java.util.ArrayList;

public class userDatabase {
	static ArrayList<User> users = new ArrayList<User>();
	
	public static void init()
	{
		//so it doesnt keep create new users
		if (users.isEmpty())
		{
			User user1 = new User("AdminEugene", "park", "Adeugene", "1234", "admin", true, true);
			User user2 = new User("FarmerEugene", "park", "Fmeugene", "1234", "farmer", true, true);
			
			users.add(user1);
			users.add(user2);
			
			System.out.println("Its Empty! Creating new ones");
		}
	
		
	}
	
	public static User check(User user)
	{
		String tmpUN, tmpPW;
		
		for (int i = 0; i < users.size(); i++)
		{
			tmpUN = users.get(i).getUsername();
			tmpPW = users.get(i).getPassword();
			
			if (user.getUsername().equals(tmpUN))
			{
				user.setValidUser(true);
				
				if (user.getPassword().equals(tmpPW))
				{
					
//					user.setValid(true);
//					user.setFirstName(users.get(i).getFirstName());
//					user.setLastName(users.get(i).getLastName());
//					user.setRole(users.get(i).getRole());
					return users.get(i);
				}
				else
				{
					int num = users.get(i).getNumTry();
					num++;
					users.get(i).setNumTry(num);
					user.setNumTry(num);
					
					//check to see if the acc is locked 3 times
					if (num == 3)
					{
						//if admin dont lock him
						user.setLocked(true);
						users.get(i).setLocked(true);
					}
				}
			}	
		}
		return user;
	}
}
