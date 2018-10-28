<%@ page import="cal_java.*" %>

<% 
String postId = request.getParameter("postId");
String userId = request.getParameter("userId"); 
String status = ShareWorker.shareStatusCheck(postId,userId);


if(status.equals("") || status.equals("unshared"))
{
%>
	$("[post-share-yes-modal='"+postId+"']").modal();
<%
}
else if(status.equals("shared"))
{
%>
	$("[post-share-no-modal='"+postId+"']").modal();
<%
}
%>