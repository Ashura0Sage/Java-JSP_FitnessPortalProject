
package cal_java;

import java.sql.*;

public class Comment {
        int id;
	String postId;
	String userId;
	String description;
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

	public void setDescription(String description)
	{
		this.description = description;
	}
	public String getDescription()
	{
		return description;
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
