/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Aniket J
 */
public class PaymentWorker {
      public static String addpayment(Payment pay)
   {
       String result = "";
       try
       {
       
          String query = "Insert into payment (Id,Fname,Lname,EmailId,Price,Program,Gender) values (?,?,?,?,?,?,?)";
          PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
          pstmt.setInt(1,pay.getId());
          pstmt.setString(2,pay.getfname());
          pstmt.setString(3,pay.getlname());
          pstmt.setString(4,pay.getemail());
          pstmt.setString(5,pay.getprice());
          pstmt.setString(6,pay.getProgram());
          pstmt.setString(7,pay.getgender());
          int i = pstmt.executeUpdate();
           if(i==1){
               
               result = Results.SUCCESS;
             
           }
           else
               result = Results.FAILURE;
       }
       catch(Exception ex)
       {
           ex.printStackTrace();
           result = Results.PROBLEM;
       }
       finally
       {
           DatabaseConnector.closeConnection();
       }
       return result;
   }

      
         
    public static ArrayList<Payment> getAllPayment()
   {
       ArrayList<Payment> list=new ArrayList<>();
       
       try
       {
           String query = "select * from payment;" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
                Payment pay= new Payment();

               pay.setId(rs.getInt("Id"));
               pay.setfname(rs.getString("Fname"));
               pay.setlname(rs.getString("Lname"));
               pay.setemail(rs.getString("EmailId"));
               pay.setprice(rs.getString("Price"));
               pay.setProgram(rs.getString("Program"));
               pay.setgender(rs.getString("Gender"));
               list.add(pay);
               pay=null;
           }
       }
   catch(Exception e)
   {
       e.printStackTrace();
   }
   finally
   {
       DatabaseConnector.closeConnection();
   }
   return list;
   }
   
    public static int getPreviousPaymentId() 
   {
       int id = 0;
       try
       {
    	   String query = "select max(id) from paymentgate;" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
              id = rs.getInt(1);
           }
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       finally
       {
           DatabaseConnector.closeConnection();
       }
       return id; 
   }
    
    
      public static String addPaymentGate(PaymentGate pay)
   {
       String result = "";
       try
       {

           String query = "Insert into paymentgate (Id,MemberId,CardId,Amount,Time,PaymentMode) values (?,?,?,?,?,?)";
           PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
          pstmt.setInt(1,pay.getId());
          pstmt.setInt(2,pay.getMemberId());
          pstmt.setString(3,pay.getCardId());
          pstmt.setFloat(4,pay.getAmount());
          pstmt.setTimestamp(5,pay.getTime());
          pstmt.setString(6,pay.getPaymentMode());
           int i = pstmt.executeUpdate();
           if(i==1)
               result = Results.SUCCESS;
           else
               result = Results.FAILURE;
       }
       catch(Exception ex)
       {
           ex.printStackTrace();
           result = Results.PROBLEM;
       }
       finally
       {
           DatabaseConnector.closeConnection();
       }
       return result;
   }
      
      
      public static PaymentGate getPaymentById(int id) 
   {
       PaymentGate pay = null;
       try
       {
           String query = "select * from paymentgate where Id =" +id+";" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
               pay = new PaymentGate();

                pay.setId(rs.getInt("Id"));
                pay.setMemberId(rs.getInt("MemberId"));
                pay.setCardId(rs.getString("CardId"));
                pay.setAmount(rs.getFloat("Amount"));
                pay.setTime(rs.getTimestamp("Time"));
                pay.setPaymentMode(rs.getString("PaymentMode"));
           }
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       finally
       {
           DatabaseConnector.closeConnection();
       }
       return pay;
   }

 public static ArrayList<PaymentGate> getAllDonations()
   {
       ArrayList<PaymentGate> list=new ArrayList<>();
       try
       {
           String query = "select * from paymentgate;";
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
               PaymentGate pay = new PaymentGate();

                pay.setId(rs.getInt("Id"));
                pay.setMemberId(rs.getInt("MemberId"));
                pay.setCardId(rs.getString("CardId"));
                pay.setAmount(rs.getFloat("Amount"));
                pay.setTime(rs.getTimestamp("Time"));
                pay.setPaymentMode(rs.getString("PaymentMode"));
               list.add(pay);
               pay=null;
           }
       }
   catch(Exception e)
   {
       e.printStackTrace();
   }
   finally
   {
       DatabaseConnector.closeConnection();
   }
   return list;
   }

}
