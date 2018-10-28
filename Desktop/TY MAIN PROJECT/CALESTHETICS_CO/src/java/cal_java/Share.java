
package cal_java;

import java.sql.Timestamp;
import java.sql.*;


public class Share {
    
	int id;
	String postId;
	String userId;
	String status;
	Timestamp time;

	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}

	public void setPostId(String postId)
	{
		this.postId = postId;
	}
	public String getPostId()
	{
		return postId;
	}

	public void setUserId(String userId)
	{
		this.userId = userId;
	}
	public String getUserId()
	{
		return userId;
	}

	public void setStatus(String status)
	{
		this.status = status;
	}
	public String getStatus()
	{
		return status;
	}

	public void setTime(Timestamp time)
	{
		this.time = time;
	}
	public Timestamp getTime()
	{
		return time;
	}
}
