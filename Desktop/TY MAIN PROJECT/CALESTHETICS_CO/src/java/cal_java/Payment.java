/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;
import java.sql.*;
public class Payment {
     
        int id;
	String fname;
	String lname;
        String emailid;
	String price;
        String Gender;
        String Program;
        

	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}

	public void setfname(String fname)
	{
		this.fname = fname;
	}
	public String getfname()
	{
		return fname;
	}

	public void setlname(String lname)
	{
		this.lname = lname;
	}
	public String getlname()
	{
		return lname;
	}

	public void setemail(String email)
	{
		this.emailid = email;
	}
	public String getemail()
	{
		return emailid;
	}

	public void setprice(String price)
	{
		this.price = price;
	}
	public String getprice()
	{
		return price;
	}  
        public void setProgram(String Program)
	{
		this.Program = Program;
	}
	public String getProgram()
	{
		return Program;
	}

        public void setgender(String gender)
	{
		this.Gender = gender;
	}
	public String getgender()
	{
		return Gender;
	}  
}
