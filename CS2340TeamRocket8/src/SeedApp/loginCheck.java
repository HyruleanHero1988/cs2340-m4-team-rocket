package SeedApp;
 import java.text.*;
   import java.util.*;
import java.sql.*;
/**
 * @author Team Rocket
 * @version 1.0
 */

   public class loginCheck 	
   {
	   /**
	    * 
	    * @param user
	    * @return if user is in database and passwords match
	    */
      public static User login(User user) 
      {
    	  userDatabase.init(); //creates users
          user = userDatabase.check(user); // 
          
          return user;
      }	
   }