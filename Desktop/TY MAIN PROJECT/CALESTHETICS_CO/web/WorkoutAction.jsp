<%@page contentType="text/html" pageEncoding="UTF-8"
	import="cal_java.*,java.io.*,java.lang.*,java.sql.*,java.io.File,java.io.FileInputStream"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>

<%
                String name = null;
		String price= null;
		String photo = request.getParameter("photo");
		String description = null;
                
                File savedFile;
		try {
			String fileimage = "";
			String itemName = "";
			boolean isMultipartRequest = ServletFileUpload.isMultipartContent(request);
			if (!isMultipartRequest) {
				 System.out.println("<br>Not a Multipart Request"); 
			} else {
				FileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);
				List items = null;
				try {
					items = upload.parseRequest(request);
				} catch (FileUploadException e) {
					e.getMessage();
				}

				Iterator itr = items.iterator();

				while (itr.hasNext()) {
					FileItem item = (FileItem) itr.next();
					if (item.isFormField()) {
						if ("name".equals(item.getFieldName()))
						 	name = item.getString();
						if ("desc".equals(item.getFieldName()))
							description = item.getString();
						if ("price".equals(item.getFieldName()))
							price = item.getString();
						
					} else {
						try {
							itemName = item.getName();
							String path = Workoutworker.getPath();
							savedFile = new File(path + File.separator + itemName);
							item.write(savedFile);
							System.out.println("<br>Saved file path is " + savedFile);
							System.out.println("<br>Item Name is " + itemName); 
						} catch (Exception e) {
							 out.println("<br>Error" + e.getMessage()); 
						}
					}
				}

		try {
					Workout work = new Workout();
					work.setId(0);
					work.setName(name);
					work.setDesc(description);
					work.setIcon(itemName);
					work.setPrice(price);
					
					String result = Workoutworker.addWorkout(work);
					 if (result.equals(Results.SUCCESS)) { 
                                            response.sendRedirect("WorkoutSucess.jsp");
                                   %>
                                  
                                   
                                   <%
					}
					
				   else {
						 System.out.println("<br>Image NOT uploaded"); 
                                                  response.sendRedirect("TryAgain.jsp");
                                     %>
                                  
                                      <%
					}
 

				} catch (Exception e1) {
					System.out.println("<br>Image Insertion Error : " + e1.getMessage());
				}
			}
		} catch (Exception e) {
			out.println(e.getMessage());
		}
  

%>