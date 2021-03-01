<%@page  import="java.sql.DriverManager"%>    
<%@page import="java.lang.*"%>  
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%> 
<%@page import="oracle.jdbc.driver.*"%>
    
<%! ResultSet rs;
    Statement pt;
    Connection con;
%>
<%
  try
  {  
  RequestDispatcher rd;
  Cookie[] ck2=request.getCookies(); 
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","prakash");
  pt=con.createStatement(); 
  rs=pt.executeQuery("select count(*) from suggestions");rs.next();
  pt.executeUpdate("insert into suggestions values("+(rs.getInt(1)+1)+",'"+session.getAttribute("username")+"','"+request.getParameter("des")+"')");
  rd=request.getRequestDispatcher("feedback.jsp");   
  rd.forward(request,response);
  }
  catch(Exception ec)
  {out.println(ec);}
%>