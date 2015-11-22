<body bgcolor="#CACFFA">
       
<%@ page import="java.sql.*"%>
<%
	try
	{
		String uname=request.getParameter("uname");
        String pass=request.getParameter("pw1");
        String pass1=request.getParameter("pw2");
        String secq=request.getParameter("hintq");
        String secans=request.getParameter("hinta");
        String ccno=request.getParameter("ccno");
        String cctype=request.getParameter("cctype");
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
        String lname=request.getParameter("lname");
        String date=request.getParameter("date");
        String month=request.getParameter("month");
        String year=request.getParameter("year");
        String email=request.getParameter("email");
        String ad1=request.getParameter("adl1");
        String ad2=request.getParameter("adl2");
        String city=request.getParameter("city");
        String state1=request.getParameter("state");
        String country=request.getParameter("country");
        String B1=request.getParameter("submit");
        String B2=request.getParameter("B2");
        String dob=year+"-"+month+"-"+date;
       	System.out.println("connection established");
			
		Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
		PreparedStatement pst= con.prepareStatement("insert into userinfo(secretquestion,secretanswer,firstname,middlename,lastname,dob,email)values(?,?,?,?,?,?,?)");
		pst.setString(1,secq);
		pst.setString(2,secans);
			pst.setString(3,fname);	
			pst.setString(4,mname);	
			pst.setString(5,lname);	
			pst.setString(6,dob);	
			pst.setString(7,email);
		int r=pst.executeUpdate();
		if(r>0)
			out.println("inserted");
		else
			out.println("error");
        
        session.setAttribute("username",uname);
		Statement st;
		
		st=con.createStatement();
st.executeUpdate("insert into login(userid,pass,role)values('"+email+"','"+pass+"','user')");
	    
			out.println("successfully inserted");
		
		session.setAttribute("username",uname);
        con.close();
    }
    catch(Exception e)
    {
        out.println("done exception"+e);
    }
%>
  <jsp:forward page="login.html"/>
</body>