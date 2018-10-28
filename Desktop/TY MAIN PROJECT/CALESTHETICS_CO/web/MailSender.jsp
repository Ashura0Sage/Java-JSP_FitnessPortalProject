
<%@page import="cal_java.*,javax.mail.*,javax.mail.internet.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String toEmail=request.getParameter("email");
String subject=request.getParameter("subject");
String message=request.getParameter("message");



MailEx mail = new MailEx();

mail.mail(toEmail,subject,message);
if(mail.status){
    out.print("MailSent!!!!!!!!");
    
}
else{
    out.print("fail");
}



%>
