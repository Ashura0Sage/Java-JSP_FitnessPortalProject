<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<%@ page import="cal_java.*" %>
<%@page import="java.util.Date"%>
<% 
    
 Date jd = new Date();
 DateFormat dateFormatYMD = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
 String sendate = dateFormatYMD.format(jd);
int id=0;
String subject = request.getParameter("subject");
String Message = request.getParameter("message");
Notification notify = new Notification();

notify.setId(id);
notify.setSub(subject);
notify.setMsg(Message);
notify.setTime(sendate);

String result = NotificationWorker.addNotification(notify);
if(result.equals("success"))
{
%>
 $("[added-success]").modal();
 <%
}
else
{
%>
	$("[added-unsuccess]").modal();
<%
}
%>
