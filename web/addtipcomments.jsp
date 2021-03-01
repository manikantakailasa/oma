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
  rs=pt.executeQuery("select count(*) from tipcomments");rs.next();
  pt.executeUpdate("insert into tipcomments values("+request.getParameter("qid")+",'"+request.getParameter("des")+"','"+session.getAttribute("username")+"','"+(rs.getInt(1)+1)+"')");
  if(request.getParameter("val").equals("que"))  
  rd=request.getRequestDispatcher("ti.jsp");
  else
  rd=request.getRequestDispatcher("tipcomments.jsp");   
  rd.forward(request,response);
  }
  catch(Exception ec)
  {out.println(ec);}
%>