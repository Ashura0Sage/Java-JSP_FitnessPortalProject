<%@ page import="cal_java.*, java.sql.*;"%>
<%
	String postId = request.getParameter("postId");
	String userId = request.getParameter("userId");
	String description = request.getParameter("desc");
	
	
	int id = 0;
	Timestamp time = null;

	Comment comment = new Comment();
	comment.setId(id);
	comment.setPostId(postId);
	comment.setUserId(userId);
	comment.setDescription(description);
	comment.setTime(time);

	String result = CommentWorker.addComment(comment);

	if (result.equals("success")) {
%>
Your comment has been added.
<%
	} else {
%>
Some problem has detected while commenting.
<%
	}
%>
