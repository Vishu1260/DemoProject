<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'postmail1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
 
try{
 
     Connection con;
 PreparedStatement pst;

  
   String mailto=request.getParameter("to");
   session.setAttribute("mailto",mailto);
   String subject=request.getParameter("sub");
    session.setAttribute("subject",subject);
   String message=request.getParameter("body");
    session.setAttribute("message",message);
   String user=request.getParameter("user");
     Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
  System.out.println("connection estblished");
    pst=con.prepareStatement("insert into MAILS(mailto,mailfrom,subject,message) values(?,?,?,?) ");
       pst.setString(1,mailto);
       pst.setString(2,user);
       pst.setString(3,subject);
       pst.setString(4,message);
     
   int i=pst.executeUpdate();
     System.out.println("i:"+i);
 if(i>0)
 {
 	response.sendRedirect("blockmails.jsp?user="+user);
 }}
 catch(Exception e)
 {
   out.println(e);
 }
 

  %>
   <br>
  </body>
</html>
