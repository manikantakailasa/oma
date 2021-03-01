<%@page  import="java.sql.DriverManager"%>
<%@page import="java.lang.*"%>  
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%> 
<%@page import="oracle.jdbc.driver.*"%>
    
<%! ResultSet rs;
    Statement pt;
    Connection con;
    String s1,s2,s3;
    RequestDispatcher rd;
    %>
<%
  s1=request.getParameter("username");
  s2=request.getParameter("password1");
  s3=request.getParameter("profilename");
  try
  {    
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","prakash");
  pt=con.createStatement();
  rs=pt.executeQuery("select * from users where username like '"+s1+"'");
  while(rs.next())
  {
   session.setAttribute("username3","guest");
   rd=request.getRequestDispatcher("register2.jsp");
   rd.forward(request,response);
  } 
  pt.executeUpdate("insert into users values('"+s1+"','"+s2+"','"+s3+"')");
  session.setAttribute("username",s3);
  rd=request.getRequestDispatcher("home.jsp");
  rd.forward(request,response);
  }
  catch(Exception ec)
  {
  session.setAttribute("username2","guest");
  rd=request.getRequestDispatcher("login.jsp");
  rd.forward(request,response);  
  }    
  
%>
