<%@ page import="cal_java.*" %>

<% 
 String spam=request.getParameter("spam");
 if(spam.equals("7"))
 {    
int id=0;

String name=request.getParameter("name");
String email = request.getParameter("emailId");
String Message = request.getParameter("message");
Feedback feed = new Feedback();

feed.setId(id);
feed.setname(name);
feed.setemail(email);
feed.setMsg(Message);

String result = FeedbackWorker.addfeedback(feed);
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
}
else
{
%>

$("[feedback-spam-modal]").modal();
<%
    }
%>