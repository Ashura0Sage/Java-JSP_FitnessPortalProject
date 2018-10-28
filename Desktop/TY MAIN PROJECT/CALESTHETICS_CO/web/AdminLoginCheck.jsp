<%@ page import="cal_java.*" %>

 <%
String username = request.getParameter("username");
String password = request.getParameter("password");

Admin admin= AdminWorker.loginVerify(username,password); 
if(admin.getEmailId()==null)
{
%>
$("[login-failed-modal]").modal();
<%
}
else if(admin.getEmailId()!=null)
{
	session.setAttribute("admin",admin.getEmailId());
        session.setAttribute("id",String.valueOf(admin.getId()));
%>	
	window.location.href = "AdminAccount.jsp";
<%    
}
else
{	
%>	
	window.location.href = "AdminLogin.jsp";
<%
}
%>


