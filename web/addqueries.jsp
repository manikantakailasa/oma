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
  Cookie[] ck2=request.getCookies(); 
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","prakash");
  pt=con.createStatement(); 
  rs=pt.executeQuery("select count(*) from queries");
  rs.next();
  pt.executeUpdate("insert into queries values("+(rs.getInt(1)+1)+",'"+request.getParameter("des")+"','"+ck2[1].getValue()+"','"+session.getAttribute("username")+"')");
  RequestDispatcher rd=request.getRequestDispatcher("quer.jsp");
  rd.forward(request,response);
  }
  catch(Exception ec)
  {out.println(ec);}
%>
  