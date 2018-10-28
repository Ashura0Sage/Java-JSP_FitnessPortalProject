package cal_java;

import java.sql.*;
import java.util.*;

public class EventWorker 
{
   public static String addEvent(Event event)
   {
       String result = "";
       try
       {

           String query = "Insert into event (Id,Caption,Date,Days,AdminId) values (?,?,?,?,?)";
           PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
          pstmt.setInt(1,event.getId());
          System.out.println("1");
          pstmt.setString(2,event.getCaption());
          System.out.println("2");
          pstmt.setString(3,event.getDate());
          System.out.println("3");
          pstmt.setString(4,event.getDays());
          System.out.println("4");
          pstmt.setInt(5,event.getAdminId());
          System.out.println("5");
           int i = pstmt.executeUpdate();
           System.out.println("6");
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


   public static String updateEvent(Event event)
   {
       String result = " ";
       try
       {

          String query = "Update event set Caption=?, Date=?, Days=?, AdminId=? where Id=?;" ;
           PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);

           pstmt.setString(1,event.getCaption());
           pstmt.setString(2,event.getDate());
           pstmt.setString(3,event.getDays());
           pstmt.setInt(4,event.getAdminId());
          pstmt.setInt(5,event.getId());
           int i = pstmt.executeUpdate();
           if(i==1)
           {
               result = Results.SUCCESS;
           }
           else
           {
               result = Results.FAILURE;
           }
       }
       catch(Exception e)
       {
           e.printStackTrace();
           result = Results.PROBLEM;
       }
       finally
       {
           DatabaseConnector.closeConnection();
       }
       return result;
   }


   public static String deleteEvent(int id)
   {
       String result = " ";
       try
       {

         String query = "Delete from event where Id="+id+";" ;
           PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
           int i = pstmt.executeUpdate();
           if(i==1)
           {
               result = Results.SUCCESS;
           }
           else
           {
               result = Results.FAILURE;
           }
       }
       catch(Exception e)
       {
           e.printStackTrace();
           result = Results.PROBLEM;
       }
       finally
       {
           DatabaseConnector.closeConnection();
       }
       return result;
   }


   public static Event getEventById(int id) 
   {
       Event event = null;
       try
       {
           String query = "select * from event where Id =" +id+";" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
               event = new Event();

                event.setId(rs.getInt("Id"));
                event.setCaption(rs.getString("Caption"));
                event.setDate(rs.getString("Date"));
                event.setDays(rs.getString("Days"));
                event.setAdminId(rs.getInt("AdminId"));
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
       return event;
   }


   public static ArrayList<Event> getAllEvents()
   {
       ArrayList<Event> list=new ArrayList<>();
       
       try
       {
           String query = "select * from event;" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
               Event event = new Event();

                event.setId(rs.getInt("Id"));
                event.setCaption(rs.getString("Caption"));
                event.setDate(rs.getString("Date"));
                event.setDays(rs.getString("Days"));
                event.setAdminId(rs.getInt("AdminId"));
               list.add(event);
               event=null;
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
   
   public static int getEventCount(int id) 
   {
       int count=0;
       try
       {
           String query = "select count(memberId) from MemberEvent where EventId =" +id+";" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
                count = rs.getInt(1); 
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
       return count;
   }

   
}