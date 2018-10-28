<%@ page import="cal_java.*, java.sql.*;" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	String name = (String) session.getAttribute("username");
	if (name == null) {
		response.sendRedirect("MemberLogin.jsp");
	} else {
		String id = (String) session.getAttribute("id");
		String entity = (String) session.getAttribute("entity");
		String amount = request.getParameter("amount");
		String cardId = request.getParameter("cardId");
		String cvv = request.getParameter("cvv");
	
		String pin = request.getParameter("pin");
		if (CardWorker.verifyCvv(cardId, cvv).equals("exists") && pin.equals("9999")) {
			
			int memberId = Integer.parseInt(id);
			float Amount = Float.parseFloat(amount);
			String paymentMode = "Saved Cards";
			int paymentId =  PaymentWorker.getPreviousPaymentId()+1;
			
			PaymentGate pay = new PaymentGate();
			pay.setId(paymentId);
			pay.setMemberId(memberId);
			pay.setCardId(cardId);
			pay.setAmount(Amount);
			pay.setTime(null);
			pay.setPaymentMode(paymentMode);
			String result = PaymentWorker.addPaymentGate(pay);
			if(result.equals("success"))
			{
				session.setAttribute("paymentId",paymentId+"");
				session.setAttribute("paymentStatus","success");
                                System.out.println("payment success");
				%>
				DisplayPayment.jsp
                        
                                
				<%
			}
			else
			{       System.out.println("payment unsuccess");  
				session.setAttribute("paymentStatus","unsuccess");
				%>
				DisplayPayment.jsp
                              
                               
				<%
			}
			
		} else if (CardWorker.verifyCvv(cardId, cvv).equals("notexists") || !pin.equals("9999")) {
			session.setAttribute("paymentStatus","unsuccess");
                        System.out.println("invalid");
			%>
			DisplayPayment.jsp
                    
			<%
		}

	}
%>