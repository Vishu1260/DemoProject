
    
                <%@page import="java.sql.*" %>
               <%
                try
                {
                	String user=null;
                	String p=null;
                	String r=null;
					String role=null;
					 int ctr=5;
	                user=request.getParameter ("user");
	                System.out.println(user);
                    p=request.getParameter ("pass");
                    System.out.println(p);
					
                   	Class.forName("oracle.jdbc.driver.OracleDriver");
                   	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
					
                   	Statement st=con.createStatement();
	
                   	ResultSet rs=st.executeQuery("select role from login where userid='"+user+"' and pass='"+p+"'");
						System.out.println(rs);			
                    if(rs.next())
                    {
                       
                        role=rs.getString ("role"); 
						System.out.println(role);
						if(role.equals("user"))
                        {
                            role="user";
                            ctr=0;
                            session.setAttribute ("user",user);
							response.sendRedirect("user.jsp?user="+user);
						}
						else if(role.equals("admin"))
                        {
                            role="admin";
                            ctr=1;
							response.sendRedirect("admin.jsp?user="+user);
                        }
					}
					else
					out.println("you are not authenticated");
                      
				}
                
                catch(Exception e)
                {
                    out.println ("done exception" +e.toString());
                }
             %>        