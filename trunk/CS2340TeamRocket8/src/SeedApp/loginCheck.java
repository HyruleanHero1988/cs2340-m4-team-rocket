package SeedApp;
 import java.text.*;
   import java.util.*;
import java.sql.*;

   public class loginCheck 	
   {
      public static User login(User user) 
      {
    	  userDatabase.init(); //creates users
          user = userDatabase.check(user); // 
          
          return user;
      }	
   }