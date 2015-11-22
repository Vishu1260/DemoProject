<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  
  <body background="image321.GIF">
 <table border="0"  height="19">
            <tr bgcolor="">
                <td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif"><font face="Arial" size="2" color="Black"><b><%=request.getParameter("user")%></b></font></td>
                <td width="18%" height="13" valign="middle" align="center"background="images/tp_bg.gif" >
       
					<font face="verdana" size="6" color="Black"><b>
                        SECURE MAIL
                    </b></font>
                </td>
				<td width="9%" height="13" valign="middle" align="center"background="images/tp_bg.gif">
				<font face="Arial" size="2" color="Black"><a HREF="login.html"><b>Logout</b></a></font></td>
				</tr>
				<tr>
							
							<table>
     <table align="">
        <tr><td width="200"> 
		<h2><a href="user.jsp?user=<%=request.getParameter("user")%>">Back to Home</a><br><br></h2></tr>
<tr>
</td>
</tr>
<td>
<form name=form3 method="post" action="postmail1.jsp?user=<%=request.getParameter("user")%>">
<table align="right" width="6%">
					<tr><td>To:</td><td><input type="text" name="to" size="100"></td></tr>
					<tr><td>Subject:</td><td><input type="text" name="sub" size="100"></td></tr>
					
					</table>
				
					<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Body</td></tr>
					<tr><td></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea input type="text" rows="24" name="body" cols="77" valign="center"> </textarea></td></tr>
				   
					<tr align="center"><td><input type="submit" value="send" ></td></tr>
				</table></td>


        </tr>
    </table>
  </form>
</body>
</html>




                
				
               
              
