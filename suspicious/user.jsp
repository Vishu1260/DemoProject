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
				<tr>
							
							<table>
			<tr><td width="20%" align="right">
                <img src="images/email_laptop.jpg" width="30%" />
                </td>
	
				</tr>
        </table>
		<table>
		<tr>
		<td width="15%" height="355" valign="top">

<div class="mainDiv" >
                
                <div class="dropMenu" >
                  <!-- -->
                  <div class="subMenu" style="display:inline;">
                    <div class="subItem" ><b><font size="4"><a HREF="composemail.jsp?user=<%=request.getParameter("user")%>">Compose Mail</a></font></b></div>
                    <div class="subItem"> <b><a HREF="inbox.jsp?user=<%=request.getParameter("user")%>">Inbox</a></b></div>
                    <div class="subItem"><b><a HREF="sentmail.jsp?user=<%=request.getParameter("user")%>">SentMail</a></b></div>
                    </div>
                </div>
              </div>

</td>
</tr></table>
<table border="0" width="100%" height="20">
<tr>

<td width="5%" height="5" valign="middle">
<p align="center" valign="center" style="margin-top: -5; margin-bottom: 1"><b>
<font face="Arial" color="#800000" size="2">Welcome to Secure Mail select your appropriate menu</font></b>
</form>
</td>
</tr>
</table>
<table width="100%">
            <tr height="5"><td bgcolor="brown"></td></tr>
            <tr>
    <td height="1" ><div align="center"><marquee>&copy; Secure Mail. All Rights Reserved</marquee></div></td>
  </tr>

        </table>
</body>
</html>