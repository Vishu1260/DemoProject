<%@page import="java.sql.*"%>
<%@page import="java.security.*"%>
<%@page import="java.security.spec.InvalidKeySpecException"%>
<%@page import="javax.crypto.Cipher"%>
<%@page import="javax.crypto.spec.SecretKeySpec"%>
<%@page import="sun.misc.*"%>
<%
try
	{
		
	                String ALGORITHM = "AES";
				    byte[] keyValue = new byte[] { 'T', 'h', 'i', 's', 'I', '$', 'A', '*', 'e', 'c', 'r', 'e', 't', '0', 'e', '@' };
					Key key1 = new SecretKeySpec(keyValue,ALGORITHM);
					Cipher c = Cipher.getInstance(ALGORITHM); 
					c.init(Cipher.ENCRYPT_MODE, key1);
       				String key=null;
                    String valueToEnc;
                    key=request.getParameter ("keywords");
					byte[] encValue = c.doFinal(key.getBytes());
					String encryptedValue = new BASE64Encoder().encode(encValue);
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                   	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","admin");
             PreparedStatement pst= con.prepareStatement("insert into Encryptedwords(awords,ewords)values(?,?)");
		pst.setString(1,key);
		pst.setString(2,encryptedValue);
			
		int r=pst.executeUpdate();
		if(r>0)
		{
                    out.println("inserted Successfully");
		}
		else
			out.println("insertion failed");
					
}
catch(Exception e)
	{
	out.println(e);
	}
%>