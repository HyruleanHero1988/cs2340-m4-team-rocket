package SeedApp;

import java.util.ArrayList;

/**
 * @author Team Rocket
 * @version 1.0
 */
public class User {
	private String firstName;
	private String lastName;
	private String username;
	private String password;
	private String role;
	private String email;
	
	private Boolean newUser = false;
	private boolean validUser = false;
	public boolean valid = false;
	private boolean locked = false;
	private int numTry = 0;
	
	private ArrayList<Seed> seeds = new ArrayList<Seed>();
	
	/**
	 * Represents user
	 * @param first name
	 * @param last name
	 * @param user username
	 * @param pass password
	 * @param role admin or farmer
	 * @param vu valid user
	 * @param v valid
	 */
	public User(String first, String last, String user, String pass, String role, boolean vu, boolean v) //admin makes acc
	{
		this.firstName = first;
		this.lastName = last;
		this.username = user;
		this.password = pass;
		this.role = role;
		this.validUser = vu;
		this.valid = v;
	}
	
	public User(String first, String last, String user, String pass) //user makes acc (can only make farmer acc)
	{
		this(first, last, user, pass, "farmer", true, true);
	}
	
	/*
	 * @param seed to be added to user's account
	 */
	public void addSeed (Seed seed)
	{
		seeds.add(seed);
	}
	
	/*
	 * @return whether user has any seeds
	 */
	public Boolean existSeed()
	{
		if (seeds.isEmpty())
		{
			return false;
		}
		return true;
	}
	
	/*
	 * @return all the seeds associated w/ users accoutn
	 */
	public ArrayList getSeeds()
	{
		return seeds;
	}
	
	public User() 
	{
		
	}

	public String getFirstName() {
        return firstName;
	}
	
	public String getLastName() 
	{
		return lastName;
	}
	 
	 public String getPassword() {
         return password;
	}
	 
	 public String getUsername() {
         return username;
			}
	 public int getNumTry()
	 {
		 return numTry;
	 }
	 
	 public String getRole()
	 {
		 return role;
	 }
	 
	 public void setRole(String role)
	 {
		 this.role = role;
	 }
	 
	 public void setFirstName(String newFirstName) {
         firstName = newFirstName;
	}
	 
	 public void setLastName(String newLastName) {
         lastName = newLastName;
			}
	 
	 public void setUserName(String newUsername) {
         username = newUsername;
	}
	 
	 public void setPassword(String newPassword) {
         password = newPassword;
	}
	 
	public void setNumTry(int num)
	{
		this.numTry = num;
	}
	 
	 public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}
      public boolean isLocked()
      {
    	  return locked;
      }
      public void setLocked(boolean newLocked)
      {
    	  locked = newLocked;
      }
      
      public boolean isValidUser()
      {
    	  return validUser;
      }
      public void setValidUser(boolean newValidUser)
      {
    	  validUser = newValidUser;
      }
      
      public boolean isNewUser()
      {
    	  return newUser;
      }
      public void setNewUser(boolean newUser)
      {
    	  this.newUser = newUser;
      }
      
      public String toString(){
    	  return firstName + ", " + lastName + ", " + username + ", " +password + ", " +role + ", " +email + ", " +newUser + ", " +validUser + ", " +valid + ", " +locked + ", " +numTry; 
      }
}
