<%@page %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Admin</title>
<!--<link rel="stylesheet" type="text/css" href="images/sddm.css" >
<link rel="stylesheet" type="text/css" href="images/cour.css" >-->
</head>
<body topmargin="0">
<table border="0"  height="19">
            <tr bgcolor="">
                <td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif"><font face="Arial" size="2" color="Black"><a HREF="login.html"><b><%=request.getParameter("user")%></b></font></td>
                <td width="18%" height="13" valign="middle" align="center"background="images/tp_bg.gif" >
                    <font face="verdana" size="6" color="Black"><b>
                        SECURE MAIL
                    </b></font>
                </td>
				<td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif"><font face="Arial" size="2" color="Black"><a HREF="login.html"><b>Logout</b></font></td>
				</tr>
				<tr>
							
			
		<table>
		<tr>
		<td width="15%" height="355" valign="top">

<div class="mainDiv" >
                
                <div class="dropMenu" >
                  <!-- -->
                  <div class="subMenu" style="display:inline;">
                    <div class="subItem" ><b><font size="4"><a HREF="enter1.jsp?user=<%=request.getParameter("user")%>">Manage Keywords</a></font></b></div>
					<div class="subItem" ><b><font size="4"><a HREF="encrypt.jsp?user=<%=request.getParameter("user")%>">Encrypted Keywords</a></font></b></div>
                    <div class="subItem"> <b><a HREF="display.jsp?user=<%=request.getParameter("user")%>">Display Encrypted Keywords</a></b></div>
					<div class="subItem"> <b><a HREF="display1.jsp?user=<%=request.getParameter("user")%>">Display Keywords</a></b></div>
					 <div class="subItem"><b><a HREF="blocklist.jsp?user=<%=request.getParameter("user")%>">Alert List</a></b></div>
                   	  </div>
                </div>
              </div>

</td>
</tr></table>

</body>
</html>