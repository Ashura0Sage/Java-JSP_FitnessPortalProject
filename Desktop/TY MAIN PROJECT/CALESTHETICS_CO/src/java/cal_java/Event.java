
package cal_java;

/**
 *
 * @author Aniket J
 */
public class Event 
{
    
        int id;
	String caption;
	String date;
	String days;
	int AdminId;

	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}

	public void setCaption(String caption)
	{
		this.caption = caption;
	}
	public String getCaption()
	{
		return caption;
	}

	public void setDate(String date)
	{
		this.date = date;
	}
	public String getDate()
	{
		return date;
	}

	public void setDays(String days)
	{
		this.days = days;
	}
	public String getDays()
	{
		return days;
	}

	public void setAdminId(int AdminId)
	{
		this.AdminId = AdminId;
	}
	public int getAdminId()
	{
		return AdminId;
	}                         
}
