<%@ page import="cal_java.*"%>


<% 
   	String cardId = request.getParameter("cardId");
   	String result = CardWorker.deleteCard(Integer.parseInt(cardId));	
   	if(result.equals("success"))
   	{
%>
   		$("[card-deleted]").modal();
<%
   	}
   	else
   	{
%>	
   		$("[card-not-delete]").modal();
<% 
   	}
%>
