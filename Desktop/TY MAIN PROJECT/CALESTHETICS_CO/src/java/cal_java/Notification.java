/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;


public class Notification {
    int id;
    String subject;
    String message;
    String time;
    
    public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}

	public void setSub(String subject)
	{
		this.subject = subject;
	}
	public String getSub()
	{
		return subject;
	}
        public void setMsg(String message)
	{
		this.message = message;
	}
	public String getMsg()
	{
		return message;
	}
        
         public void setTime(String time)
	{
		this.time = time;
	}
	public String getTime()
	{
		return time;
	}
}
