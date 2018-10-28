/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;

/**
 *
 * @author Aniket J
 */
public class Admin {
    int id;
	String emailId;
	String username;
	String password;

	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}

	public void setEmailId(String emailId)
	{
		this.emailId = emailId;
	}
	public String getEmailId()
	{
		return emailId;
	}

	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getUsername()
	{
		return username;
	}

	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getPassword()
	{
		return password;
	}
}
