<%@ page import="cal_java.*" %>

<% 
String postId = request.getParameter("postId");
String userId = request.getParameter("userId");
String status = ShareWorker.shareStatusCheck(postId,userId);
if(status.equals("") || status.equals("unshared"))
{
%>
	<a><span class="glyphicon glyphicon-ok"></span><span>&nbsp;&nbsp;Share</span></a>
<%
	ShareWorker.postShare(postId, userId);
}
else if(status.equals("shared"))
{
%>
	<span class="glyphicon glyphicon-share"></span><span>&nbsp;&nbsp;Shared</span>
<%
	ShareWorker.postUnshare(postId,userId);
}
%>
