package SeedApp;
/**
 * @author Team Rocket
 * @version 1.0
 */

import java.util.ArrayList;
import java.io.*;
import java.util.*;

public class userDatabase {
	
	protected static ArrayList<User> users = new ArrayList<User>();
	//File f = new File("List_of_Users.txt");
	
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
			
			User user7 = new User("James", "", "UMichigan", "1234", "farmer", true, true);
			User user8 = new User("John", "", "UMAIMI", "1234", "farmer", true, true);
			User user9 = new User("Alex", "", "UFLORIDA", "1234", "farmer", true, true);
			User user10 = new User("Jake", "", "Florida State", "1234", "farmer", true, true);
			
			user2.addSeed(new Seed("Buffalo Grass", "3","64"));
			user2.addSeed(new Seed("Browntop", "7","11"));
			user2.addSeed(new Seed("Cabbage", "7","456"));
			user2.addSeed(new Seed("Carrots", "3","65"));
			
			user7.addSeed(new Seed("Buffalo Grass","3", "1256"));
			user7.addSeed(new Seed("Browntop", "7","34"));
			user7.addSeed(new Seed("Butterfly Weed", "3","23"));
			
			user8.addSeed(new Seed("Buffalo Grass", "3","661"));
			user8.addSeed(new Seed("Browntop", "7","1143"));
			
			user9.addSeed(new Seed("Buffalo Grass","3", "8"));
			user9.addSeed(new Seed("Browntop", "7","1"));
			
			user10.addSeed(new Seed("Buffalo Grass", "3","89"));
			user10.addSeed(new Seed("Browntop", "7","89"));
			
			user3.setLocked(true);
			user4.setLocked(true);
			user5.setNewUser(true);
			user9.setNewUser(true);
			
			users.add(user1);
			users.add(user2);
			users.add(user3);
			users.add(user4);
			users.add(user5);
			users.add(user6);
			users.add(user7);
			users.add(user8);
			users.add(user9);
			users.add(user10);
			
			File f = new File("List_of_Users.txt");
			try {
				System.out.println("Trying to save users");
				System.out.println(user1.toString());
				System.out.println(users.get(2).toString());
				userDatabase.saveTo(f);
			} catch (IOException e) {
				System.out.println("I couldn't save your users.");
			}
			
			System.out.println("Database is Empty! Creating Users");
		}
		else
		{
			System.out.println("Users already exists!");
		}
	}
	
	/**
	 * 
	 * @param seed Checks to see if any user in the database has a specific seed
	 * @return boolean true if the seed is owned by a user in the database, false if it is not
	 */
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
	
	/**
	 * 
	 * @param user The user to be added to the database
	 * @return boolean true if the user is not already in the database and is added to the database and false if it already exists
	 */
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
		
		File f = new File("List_of_Users.txt");
		try {
			System.out.println("Trying to save users");
			System.out.println(createUser.toString());
			System.out.println(users.get(2).toString());
			userDatabase.saveTo(f);
		} catch (IOException e) {
			System.out.println("I couldn't save your users.");
		}
		
		
		
		return true;
	}
	
	/**
	 * Checks if user is in database, and if username and password match returns the user
	 * if username and password don't match after 3 tries, sets the user as locked, unless is an admin
	 * @param user
	 * @return
	 */
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
	
	/**
	 * checks if user is locked out
	 * @return boolean true if locked out, false if not
	 */
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
	
	public static void saveTo(File f) throws IOException {
		PrintWriter writer = new PrintWriter(new BufferedWriter(new FileWriter(f)));
		
		//writer.println("Test1 ");
		//writer.println("Test2");
		
		
		for(User user : users) {
			writer.println(user);
		}
		
		writer.flush();
		writer.close();
	}
	
}



