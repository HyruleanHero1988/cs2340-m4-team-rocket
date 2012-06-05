package edu.gatech.oad.antlab.person;

/**
 *  A simple class for person 2
 *  returns their name and a
 *  modified string 
 *
 * @author Bob
 * @version 1.1
 */
public class Person2 {
    /** Holds the persons real name */
    private String name;
	 	/**
	 * The constructor, takes in the persons
	 * name
	 * @param pname the person's real name
	 */
	 public Person2(String pname) {
	   name = pname;
	 }
	/**
	 * This method should take the string
	 * input and return its characters in
	 * random order.
	 * given "gtg123b" it should return
	 * something like "g3tb1g2".
	 *
	 * @param input the string to be modified
	 * @return the modified string
	 */
	private String calc(String input) {
	  //Person 2 put your implementation here
	  String newString = "";
	  String oldString = input;
	  int size = input.length();
	  int index;
	  
	  /*
	   * Grabs a random character from the original string, then recreate the string without the "grabbed" character.
	   * The character is then concatenated onto the new string to create a random shuffle of the original string.
	   */
	  while (size != 0) {
		  index = (int) Math.floor((Math.random() * 10) % size);	// to get a random number from 0 to size-1
		  char c = oldString.charAt(index);
		  oldString = oldString.substring(0, index) + oldString.substring(index+1);
		  newString += c;
		  size--;
	  }
		  
	  return newString;
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
