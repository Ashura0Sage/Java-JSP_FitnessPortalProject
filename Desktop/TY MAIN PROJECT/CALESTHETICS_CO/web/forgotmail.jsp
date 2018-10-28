

<%@page import="cal_java.*"%>

<% 
   
    response.setContentType("text/html");
    String email=request.getParameter("txtEmail");

    
 Member memb = MemberWorker.emailVerify(email); 
if(memb.getEmailId()==null)
{
       response.sendRedirect("TryAgain2.jsp");
}
else if(memb.getEmailId()!=null)
{
	String emailID = memb.getEmailId();
        String Password =memb.getPassword();
	String Subject ="PASSWORD RECOVERY";
	MailEx mail = new MailEx();
            
        mail.mail(emailID,Subject,Password);
        if(mail.status){
                          response.sendRedirect("Sucess.jsp");
    
                        }
        else{
                     response.sendRedirect("TryAgain2.jsp");
            }
   
}


%>