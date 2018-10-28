
package cal_java;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NotificationWorker {
    public static String addNotification(Notification notify)
   {
       String result = "";
       try
       {
       
          String query = "Insert into notification (Id,Subject,Message,Time) values (?,?,?,?)";
          PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
          pstmt.setInt(1,notify.getId());
          pstmt.setString(2,notify.getSub());
          pstmt.setString(3,notify.getMsg());
          pstmt.setString(4,notify.getTime());
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

    
    public static ArrayList<Notification> getAllNotifications()
   {
       ArrayList<Notification> list=new ArrayList<>();
       
       try
       {
           String query = "select * from Notification;" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
               Notification notify = new Notification();

               notify.setId(rs.getInt("Id"));
               notify.setSub(rs.getString("Subject"));
               notify.setMsg(rs.getString("Message"));
               notify.setTime(rs.getString("Time"));
               list.add(notify);
               notify=null;
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
