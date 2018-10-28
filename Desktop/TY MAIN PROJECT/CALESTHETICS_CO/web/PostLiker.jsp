<%@ page import="cal_java.*" %>

<% 
String postId = request.getParameter("postId");
String userId = request.getParameter("userId");

String status = PostLikeWorker.likeStatusCheck(postId,userId);
if(status.equals("") || status.equals("unliked"))
{
%>
	<a><span class="glyphicon glyphicon-ok"></span><span>&nbsp;&nbsp;Like</span></a>
<%
	PostLikeWorker.postLike(postId, userId);
}
else if(status.equals("liked"))
{
%>
	<span class="glyphicon glyphicon-thumbs-up"></span><span>&nbsp;&nbsp;Liked</span>
<%
	PostLikeWorker.postUnlike(postId,userId);
}
%>

