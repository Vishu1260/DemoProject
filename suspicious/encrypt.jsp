<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Enter</title>
<!--<link rel="stylesheet" type="text/css" href="images/sddm.css" >
<link rel="stylesheet" type="text/css" href="images/cour.css" >-->
</head>
  <form method="POST" name="form"  action="aes.jsp">
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
				</table>
				<table>
		<tr>

		<td width="2%" height="100" valign="top">
                 <div class="subItem">
                 <b><a href="enter1.jsp?user=<%=request.getParameter("user")%>">
              Manage Keywords</a></b></div>
			<div class="subItem" ><b><font size="4"><a HREF="encrypt.jsp?user=<%=request.getParameter("user")%>">Encrypted Keywords</a></font></b></div>
                    <div class="subItem"> <b><a HREF="display1.jsp?user=<%=request.getParameter("user")%>">Display Keywords</a></b></div>
					<b><a HREF="display.jsp?user=<%=request.getParameter("user")%>">Display encrypted Keywords</a></b></div>
					</tr></table>
					<table align="center">
					<tr><td><font face="Arial" size="2" color="Green"><b>Enter Keywords</b></font><td>
					<input type="text" name="keywords"></td></tr>
					
					<tr align="center"><td align="center"><input type="submit" name="ENCRYPT" value="ENCRYPT" align="center">

					</table>
					</form>
					</body>
					
					</html>
