/**
 * 
 */
package edu.nbcc.student;

import java.io.IOException;
import java.util.*;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

/**
 * @author joeye
 *
 */
public class Student extends SimpleTagSupport {
	private int id;
	private String firstName;
	private String lastName;
	
	/**
	 * @param id
	 * @param firstName
	 * @param lastName
	 */
	public Student(int id, String firstName, String lastName) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public List<Student> getStudents() {
		return new ArrayList<Student>();//remove after
	}
	
	public Student getStudent(int id){
		return new Student(1, "Test", "Test");//remove after
	}
	
	public boolean isStudentOnTeam() {
		return true;//remove after
	}
	
	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		super.doTag();
	}
}
