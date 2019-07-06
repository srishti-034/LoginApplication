<%@page import="java.sql.*" %>
<%
   //reading request parameter value
   String uname=request.getParameter("loginName");
   String pwd=request.getParameter("pwd");
   //connecting with database
   try
      {
	    Class.forName("oracle.jdbc.OracleDriver");
	    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","AdvJava","AJ1234");
	    PreparedStatement stmt=con.prepareStatement("select count(*) from login where loginid=? and loginpwd=?");
	    stmt.setString(1,uname);
	    stmt.setString(2,pwd);
	    ResultSet rs=stmt.executeQuery();
	    rs.next();
	    int x=rs.getInt(1);
	    if(x==1)
	       response.sendRedirect("index.jsp?message=success");
	    else
	    	response.sendRedirect("index.jsp?message=failed");
      }catch(Exception e)
        {
    	  e.printStackTrace();
        }
%>        