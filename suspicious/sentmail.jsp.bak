<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>User Login</title>
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
		<h2><a href="user.jsp?user=<%=request.getParameter("user")%>">Back to Home</a><br><br></h2></tr>
<tr>
				<tr>
							
							<table>
			<tr><td width="15%" align="right">
                <img src="images/email_laptop.jpg" width="20%" />
                </td>
	
				</tr>
        </table>
		

</form>

<%@page import="java.sql.*"%>

<%
				try
		  		{
		  			Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
					//out.println("Connection created");
					Statement st=con.createStatement();
					//System.out.println("in outbox");
					String user=request.getParameter("user");
					//System.out.println("user:"+user);
					
					ResultSet rs=st.executeQuery("select mailto,subject,message from inbox where mailfrom='"+user+"' ");
						System.out.println(rs);
						
						%>
					<table bgcolor="white" border=1 bordercolor="#00FFFF" style="position:absolute; overflow:hidden; left:220px; top:280px; width:430px; height:56px; z-index:18">
						<tr><th>To</th>
					    <th>Subject</th>
					  
					    <th>Body</th></tr>
					<%while(rs.next())
					{ System.out.println("in while");
				%>						
					    <tr><td><%=rs.getString(1)%></td>
					    <td><%=rs.getString(2)%></a></td>
					    <td><%=rs.getString(3) %></td>
					   </tr>
					    
					    <%}
					    st.close();
					    rs.close();
					    con.close(); %>
					    </table>
				<%	
				}
				catch(Exception e){}
				%>  

              
