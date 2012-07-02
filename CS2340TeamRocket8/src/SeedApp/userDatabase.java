package SeedApp;

import java.util.ArrayList;

public class userDatabase {
	
	protected static ArrayList<User> users = new ArrayList<User>();
	
	public static void init()
	{
		//so it doesnt keep create new users, do this check
		if (users.isEmpty())
		{
			User user1 = new User("AdminEugene", "park", "Adeugene", "1234", "admin", true, true);
			User user2 = new User("FarmerEugene", "park", "Fmeugene", "1234", "farmer", true, true);
			
			User user3 = new User("LockedUser", "park", "blah1", "1234", "farmer", true, true);
			User user4 = new User("TestingUser", "park", "blah2", "1234", "farmer", true, true);
			
			User user5 = new User("NewUser", "park", "blah3", "1234", "farmer", true, true);
			
			User user6 = new User("Farmer", "park", "Farmer", "1234", "farmer", true, true);
			
			user2.addSeed(new Seed("Buffalo Grass", "100"));
			user2.addSeed(new Seed("Browntop", "24"));
			
			user3.setLocked(true);
			user4.setLocked(true);
			user5.setNewUser(true);
			
			users.add(user1);
			users.add(user2);
			users.add(user3);
			users.add(user4);
			users.add(user5);
			users.add(user6);
			
			System.out.println("Database is Empty! Creating Users");
		}
		else
		{
			System.out.println("Users already exists!");
		}
	}
	
	public static Boolean haveSeed (Seed seed)
	{
		ArrayList<Seed> seeds;
		
		for (int i = 0; i < users.size(); i++)
		{
			if (users.get(i).existSeed())
			{
				seeds = users.get(i).getSeeds();
				
				for (int j = 0; j < seeds.size(); j++)
				{
					if (seeds.get(j).getName().equals(seed.getName())) //seeds.get(j).getZone().equals(seed.getZone())
					{
						return true;
					}
					else if(seeds.get(j).getZone() != null)
					{
						if (seeds.get(j).getZone().equals(seed.getZone()))
						{
							return true;
						}
					}
				}
			}
		}
		return false;
	}
	
	public static Boolean userAdd(User user)
	{
		String tmpUN, tmpPW;
		
		for (int i = 0; i < users.size(); i++)
		{
			tmpUN = users.get(i).getUsername();
			tmpPW = users.get(i).getPassword();
			
			if (user.getUsername().equals(tmpUN))
			{
				return false;
			}
		}
		User createUser = new User(user.getFirstName(), user.getLastName(), user.getUsername(), user.getPassword());
		createUser.setNewUser(true);
		users.add(createUser);
		
		return true;
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
						if (users.get(i).getRole().equals("admin"))
						{
							
						}
						else //not admin
						{
							user.setLocked(true);
							users.get(i).setLocked(true);
						}
					}
				}
			}	
		}
		return user;
	}
	
	public static int getSize()
	{
		return users.size();
	}
	
	public static ArrayList getUsers()
	{
		return users;
	}
	
	public static Boolean existLocked()
	{
		for (int i = 0; i < users.size(); i++)
		{
			if(users.get(i).isLocked())
			{
				return true;
			}
		}
		return false;
	}
	
	public static Boolean existNewUser()
	{
		for (int i = 0; i < users.size(); i++)
		{
			if(users.get(i).isNewUser() == true)
			{
				return true;
			}
		}
		return false;
	}
	
}



