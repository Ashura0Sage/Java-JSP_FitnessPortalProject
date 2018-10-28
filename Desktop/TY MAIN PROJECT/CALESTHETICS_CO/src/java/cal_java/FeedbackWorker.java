/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class FeedbackWorker {
      public static String addfeedback(Feedback feed)
   {
       String result = "";
       try
       {
       
          String query = "Insert into feedback (Id,Name,EmailId,Message) values (?,?,?,?)";
          PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
          pstmt.setInt(1,feed.getId());
          pstmt.setString(2,feed.getname());
          pstmt.setString(3,feed.getemail());
          pstmt.setString(4,feed.getMsg());
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

      
         
    public static ArrayList<Feedback> getAllFeedback()
   {
       ArrayList<Feedback> list=new ArrayList<>();
       
       try
       {
           String query = "select * from feedback;" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
               Feedback feed= new Feedback();

               feed.setId(rs.getInt("Id"));
               feed.setname(rs.getString("Name"));
               feed.setemail(rs.getString("EmailId"));
               feed.setMsg(rs.getString("Message"));
               list.add(feed);
               feed=null;
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
