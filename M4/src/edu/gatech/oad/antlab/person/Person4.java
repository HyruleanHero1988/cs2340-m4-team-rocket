package edu.gatech.oad.antlab.person;

/**
 *  A simple class for person 1
 *  returns their name and a
 *  modified string 
 *  
 *  @author Bob
 *  @version 1.1
 */
public class Person4 {
	
  /** Holds the persons real name */
  private String name;
   
  /**
     * The constructor, takes in the persons
     * name
     * @param pname the person's real name
     */
  public Person4(String pname) {
    name = pname;
  }
    
  /**
     * This method should take the string
     * input and return its characters rotated
     * 2 positions.
     * given "gtg123b" it should return
     * "g123bgt".
     *
     * @param input the string to be modified
     * @return the modified string
     */
    private String calc(String input) {

    	String rot = "";
    	String rest = "";
    	
    	//take the first two letter of the string that needs to be rotated
    	for (int i = 0; i < 2; i++)
    	{
    		rot += input.charAt(i);
    	}
    	
    	//take the string without the first two
    	for (int i = 2; i < input.length(); i++)
    	{
    		rest += input.charAt(i);
    	}
    	
    	//put rot at the end of rest
    	rest = rest + rot;
    	
    	return rest;
    }
    
    /**
     * Return a string rep of this object
     * that varies with an input string
     *
     * @param input the varying string
     * @return the string representing the 
     *         object
     */
    public String toString(String input) {
      return name + calc(input);
    }
}

