<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Blocklist</title>
<!--<link rel="stylesheet" type="text/css" href="images/sddm.css" >
<link rel="stylesheet" type="text/css" href="images/cour.css" >-->
</head>
<body topmargin="0">
<table border="0"  height="19">
            <tr bgcolor="">
                <td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif"><font face="Arial" size="2" color="Black"><b> <%=request.getParameter("user")%></b></font></td>
				
                <td width="18%" height="13" valign="middle" align="center"background="images/tp_bg.gif" >
                    <font face="verdana" size="6" color="Black"><b>
                        SECURE MAIL
                    </b></font>
                </td>
				<td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif"><font face="Arial" size="2" color="Black"><a HREF="./login.html"><b>Logout</b></font></td>
				</tr>
				<tr><td width="200"> 
		<h2><a href="admin.jsp?user=<%=request.getParameter("user")%>">Back to Home</a><br><br></h2></tr>
<tr>
				<tr>
							
							<table>
			<tr><td width="15%" align="right">
                <img src="images/email_laptop.jpg" width="20%" />
                </td>
	
				</tr>
				
        </table>
		



<%@page import="java.sql.*"%>
  <%
try
		  {
			 
		  		Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
				Statement st=con.createStatement();
				System.out.println("connection established");
				
				String user=request.getParameter("user");
				
			    
				
				ResultSet rs=st.executeQuery("select * from alertlist");
				
				//out.println(rs);
				%>
				<table  border=1 style="position:absolute; overflow:hidden; left:220px; top:280px; width:500px; height:56px; z-index:18" bgColor="#c4c4ff">
	
	
			    <tr><th bgcolor="#fdfec5" colspan="0">MailTo</th>
				<th bgcolor="#fdfec5" colspan="0">MailFrom</th>
			    <th bgcolor="#fdfec5" colspan="0">Subject</th>
				<th bgcolor="#fdfec5" colspan="0">Message </th>
			   
			    </tr>
				<%
				
				while(rs.next())
				{
					System.out.println("from:"+rs.getString(1));
				%>
				
			    <tr><td bgcolor="#e6e6e6"><%=rs.getString(1)%></td>
			    
			    <td bgcolor="#e6e6e6">
				<%=rs.getString(2)%></td><td><%=rs.getString(3)%></td>
				<td bgcolor="#e6e6e6">
				<%=rs.getString(4)%></td><td></td>
			    
			    </tr>
			    <%}
			    st.close();
			    rs.close();
			    con.close(); %>
			    </table>
			    
				
		<%}
			catch(Exception e)
			{}
	
		%>  
