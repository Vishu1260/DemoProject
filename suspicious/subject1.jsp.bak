<?xml version="1.0" encoding="iso-8859-1"?>
<%@page import="java.sql.*"%>
<html>
<head>

<title>User Login</title>
<!--<link rel="stylesheet" type="text/css" href="images/sddm.css" >
<link rel="stylesheet" type="text/css" href="images/cour.css" >-->
</head>
<body topmargin="0">
<table border="0"  height="19">
            <tr bgcolor="">
                <td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif"><font face="Arial" size="2" color="Black"><b> <%=request.getParameter("user")%>@securemail.com</b></font></td>
				
                <td width="18%" height="13" valign="middle" align="center"background="images/tp_bg.gif" >
                    <font face="verdana" size="6" color="Black"><b>
                        SECURE MAIL
                    </b></font>
                </td>
				<td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif"><font face="Arial" size="2" color="Black"><a HREF="./login.html"><b>Logout</b></font></td>
				</tr>
				<tr>
							
							<table>
			<tr><td width="15%" align="right">
                <img src="images/email_laptop.jpg" width="20%" />
                </td>
	
				</tr>
        </table>
		

</form>
		   <%
		   try
		   {Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
	Statement st=con.createStatement();
	String user=request.getParameter("user");
	String sub=request.getParameter("sub");
	
	out.println("connection established");
	out.println("connection establishedinbox");
	out.println(user);
	ResultSet rs=st.executeQuery("select mailfrom,message from inbox where mailto='"+user+"' and subject='"+sub+"'");
	out.println(rs);
	
	while(rs.next())
	{out.println(rs.getString("message"));
	
	%>
	<table bgcolor="LIGHTPINK" border=1 bordercolor="#00FFFF" style="position:absolute; overflow:hidden; left:220px; top:280px; width:430px; height:56px; z-index:18">
	
    <tr><th colspan="0">MailFrom</th>
    
    </tr>
    <tr><td><%=rs.getString(1)%></td>
    
    
    
    <tr><td colspan="2"><%=rs.getString("message") %></td></tr>
    
    </table>
    
	
	<%}}
	catch(Exception e)
	{}
		    %>
              </body>

<!-- Mirrored from careerexpo.com/careerexpo_success.htm by HTTrack Website Copier/3.x [XR&CO'2007], Wed, 17 Feb 2010 12:36:17 GMT -->
</html>
