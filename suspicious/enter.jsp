
   
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Admin</title>
<!--<link rel="stylesheet" type="text/css" href="images/sddm.css" >
<link rel="stylesheet" type="text/css" href="images/cour.css" >-->
</head>

                <%@page import="java.sql.*" %>
               <%
                try
                {
                	String key=null;
               key=request.getParameter ("keywords");
                    
                   	Class.forName("oracle.jdbc.driver.OracleDriver");
                   	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
                   	Statement st=con.createStatement();
                    st.executeUpdate("insert into swords(words)values('"+key+"')");
                    out.println("inserted Successfully");
					session.setAttribute("keywords",key);
				}
                catch(Exception e)
                {
                    out.println ("done exception" +e.toString());
                }
              %>
				
               
              
