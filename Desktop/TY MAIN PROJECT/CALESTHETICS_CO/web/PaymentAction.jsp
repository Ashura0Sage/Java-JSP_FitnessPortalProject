<%@page import="cal_java.*" contentType="text/html" language="java" pageEncoding="UTF-8"%>

<%
  int id=0;
  String Fname = request.getParameter("firstName");
  String Lname = request.getParameter("lastName");
  String emailId = request.getParameter("email");
  String Price = (String) session.getAttribute("Price");
  String gender = request.getParameter("gender");
  
   Payment pay = new Payment();
   
  pay.setId(id);
  pay.setfname(Fname);
  pay.setlname(Lname);
  pay.setemail(emailId);
  pay.setprice(Price);
  pay.setgender(gender);

     String result = PaymentWorker.addpayment(pay);
      System.out.println(result);
      if(result.equals("success"))
    {      
      response.sendRedirect("PaymentGate.jsp");
      
    }
      else
   {      
      response.sendRedirect("Payment.jsp");
      
    }

%>