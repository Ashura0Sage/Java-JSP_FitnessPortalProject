/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cal_java;

import static cal_java.MemberWorker.jspPath;
import static cal_java.MemberWorker.path;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class Workoutworker {
      public static final String path = "C://Users//Aniket J//Desktop//TY MAIN PROJECT//CALESTHETICS_CO//web//Images//";
      public static final String jspPath = "Images//";
      
      public static String getPath() {
		return (path);
	}
	
	public static String getJspPath() {
		return (jspPath);
	}
	
	
	public static String addWorkout(Workout work)
   {
       String result = "";
       try
       {
       
          String query = "Insert into workouts (id,Name,Description,Price,IconPicture) values (?,?,?,?,?)";
          PreparedStatement pstmt = DatabaseConnector.getPreparedStatement(query);
          pstmt.setInt(1,work.getId());
          pstmt.setString(2,work.getName());
          pstmt.setString(3,work.getDesc());
          pstmt.setString(4,work.getPrice());
          pstmt.setString(5,work.getIcon());
         
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

         public static ArrayList<Workout> getAllWorkouts()
   {
       ArrayList<Workout> list=new ArrayList<>();
       
       try
       {
           String query = "select * from workouts;" ;
           ResultSet rs = DatabaseConnector.getResultSet(query);
           while(rs.next())
           {
               Workout work = new Workout();

                work.setId(rs.getInt("Id"));
                work.setName(rs.getString("Name"));
                work.setDesc(rs.getString("Description"));
                work.setPrice(rs.getString("Price"));
                work.setIcon(rs.getString("IconPicture"));
                 list.add(work);
                 work=null;
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
