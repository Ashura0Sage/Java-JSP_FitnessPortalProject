
<%@ page import="cal_java.*"%>
<%

 
String caption = request.getParameter("caption");
  
String date = request.getParameter("date");
String days=request.getParameter("days");
  

Event event = new Event();
event.setId(0);

event.setCaption(caption);
event.setDate(date);
event.setDays(days);
event.setAdminId(101);
 

String result = EventWorker.addEvent(event);


 if(result.equals("success"))
 {
%>	 
	 $("[event-success]").modal();
<%
 }
else
{
%>
	$("[event-unsuccess]").modal();
<% 
}
%>	
