<html>
<%@page  import="java.sql.DriverManager"%>
<%@page import="java.lang.*"%>  
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%> 
<%@page import="oracle.jdbc.driver.*"%>
    
<%! ResultSet rs;
    Statement pt;
    Connection con;
    String s1,s2,s3,s4,s5;
%>
<%
  try
  {
  s1=request.getParameter("username");
  s2=request.getParameter("tipto");
  s3=request.getParameter("des");
  Cookie[] ck2=request.getCookies(); 
  out.println(s1+s2+s3+ck2[1].getValue());
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","prakash");
  pt=con.createStatement();
  rs=pt.executeQuery("select count(*) from tips");rs.next();
  int a=rs.getInt(1)+1;
  pt.executeUpdate("insert into tips values("+a+",'"+s1+"','"+s2+"','"+s3+"','"+ck2[1].getValue()+"')");    
  }
  catch(Exception ec)
  {out.println(ec);}
  RequestDispatcher rd=request.getRequestDispatcher("ti.jsp");
  rd.forward(request,response);  
%>   
</html>