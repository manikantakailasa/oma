<html>
<head>
     <%@page  import="java.sql.DriverManager"%>
<%@page import="java.lang.*"%>  
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%> 
<%@page import="oracle.jdbc.driver.*"%>  
<%! ResultSet rs;
    Statement pt;
    Connection con;
%>  
<title>
home page
</title>
<script type="text/javascript">
   function checkuser()
   {
   var us=document.form.username.value;
   if(us=="guest")
   {
   alert("please login,to suggest");
   return false;
   }
   else
   {
   if(document.form.des.value=="")
   return false;
   return true;
   }    
   }
   
</script>    
    <style> 
                b
           {
            font-size:62px;
            color:#0099ff;
            text-shadow:0 0 2px #0099ff;
            text-align:center;
            float:left;
           } 
               
           td ul
           {
               background:#33ccff;
               display:inline;
               transition:all 0.4s;
               list-style: none;
               text-decoration:none; 
           }
           td ul li
           {
            font-size:23px;
            margin-right:8px; 
            float:left;
            list-style-type:none;
            text-decoration:none;
            padding:4px;
            
           }
           td ul li:hover
           {
            color:white; 
            cursor:pointer;
           }
     .onn
     {
         font-size: 16px;
         font-family:serif;
         font-style:italic;
     }
     .inn
     {
         width:100%;
         box-shadow:0 0 3px black;
         padding-bottom:-40px;
         text-align:center;
     }
     .l1
     {
      width:200px;
      box-shadow:0 0 2px gray;; 
      font-size:23px;
      padding:1px;
      background:white;
      cursor:pointer;
      padding:3px; 
     }
     .l1:hover
     {
       color:brown;  
     }
     .addque
     {
         width:80px;
         font-size:16px;
         background:skyblue;
         color:white;
         border-radius:10px;
     }
.divcat
{
    box-shadow:0 0 2px black;
    font-size:20px;
    padding-left:20px;
}
  .comm
         {
          border-bottom-left-radius:20px;
          border-bottom-right-radius:20px;
          padding-left:20px;
          padding-right:20px;
          font-size:14px;   
         }
     </style>
</head>
   <body text="black" style="padding-left:8px;padding-right:8px;  " >
  <table width='100%'>
            <tr>
                <td>
                    <b>Online Medical Assistance</b> 
                    <div align="right">
                  <h style="background: #00ccff;color:white;padding:3px;width:200px;border-radius:20px;cursor:pointer;  " onclick="window.location='login.jsp';" > &nbsp;&nbsp;login&nbsp;&nbsp;</h>&nbsp;<h style="background: #00ccff;color:white;padding:3px;border-radius:20px;cursor:pointer; " onclick="window.location='register2.jsp';">sign-up</h>  
                    <br>
                    <br>
          <%! 
             Object ob;
          %>   
        <%
           try
           {
           ob=session.getAttribute("username");    
           if(ob.equals("Guest"))
           out.println("<div align=right ><strong>Welcome</strong><big> "+ob.toString()+" </big><strong><a href=\"login.jsp\"><font color=black> Log In</font></a></strong></div>");   
           else
           out.println("<div align=right ><strong>Welcome</strong><big> "+ob.toString()+" </big><strong><a href=\"logout.jsp\" ><font color=black> Log Out</font></a></strong></div>");
           }
           catch(Exception ec)
           {               
            session.setAttribute("username","Guest");   
            ob=session.getAttribute("username");    
            out.println("<div align=right ><strong>Welcome</strong><big>  "+ob.toString()+"  </big><strong><a href=\"login.jsp\"><font color=black> Log In</font></a></strong></div>");    
           }
         %></div>
         </td>
            </tr>   
            <tr>
                <td style="background:#ffffff;width:100%;background:#00ccff; ">
                    <ul>
                        <li onclick="window.location='home.jsp';">Home
                        <li onclick="window.location='login.jsp';">Login       
                        <li onclick="window.location='register2.jsp'">Register
                        <li onclick="window.location='contactus.jsp'">ContactUs
                        <li onclick="window.location='aboutus.jsp'">AboutUs
                        <li onclick="window.location='feedback.jsp'">FeedBack
                        <li><input type="search"><input type="button" value="go">     
                    </ul>  
                </td>   
            </tr>
        </table> 
       <table style="background:whitesmoke;" width="100%" >
<tr><td valign="top" style="padding-right:70px;" align="center"><br>
        <table width="100%" align="center" style="padding-right:14px;padding-left:20px;">
            <tr><td>
                  <form action="addsuggestions.jsp" method="post" onsubmit="return checkuser()" name="form">   
                  <table align="left" style="box-shadow:0 0 2px black;" width="100%" >
                      <tr><td colspan="3" style="font-size:23px;color: #009900; ">Please Give Your Suggestion:</td></tr>
                  <tr>
                  <td style="padding-left:50px;">
                  <textarea rows="4" cols="80" name="des" style="width:100%;border-radius:10px;font-size:16px;"></textarea>
                  </td>
                  <td valign="top" style="padding-left:20px;padding-right:8px;">
                  <input type="submit" value="post" class="addque">
                  <br><br><br>
                  <input type="reset" value="cancel" class="addque">
                </td>
            </tr>
 <tr>
     <td colspan="3">
         <%
             Object obb= session.getAttribute("username");
             if(obb.equals("Guest"))
             out.println("<input type=\"hidden\" name=\"username\" value=\"guest\">");    
             else
             out.println("<input type=\"hidden\" name=\"username\" value="+obb.toString()+">");
         %>
        </td></form>
 </tr>
         </table></td></tr></table>
        <br>        
        <%
  try
  {
  Cookie[] ck2=request.getCookies();
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","prakash");
  pt=con.createStatement();
  rs=pt.executeQuery("select * from suggestions  order by id desc");
  out.println("<table width=\"100%\" align=\"center\" style=\"padding-top:10px;padding-right:14px;padding-left:20px;padding-bottom:10px;\"><tr><td align=\"left\" style=\"font-size:30px;padding-left:10px;box-shadow:0 0 2px black;color:red;\">Comments</td></tr></table>");
  out.println("<br><table width=\"100%\"  align=\"center\" style=\"padding-right:14px;padding-left:20px;\" >");
   while(rs.next())
   {  
  out.println("<tr><td style=\"box-shadow:0 0 2px black;border-radius:10px;background:white;\">");      
  out.println("<table width=\"100%\" style=\"font-size:20px;\" ");   
  out.println("<tr><td style=\"padding-left:10px;\"><strong>#"+rs.getString(2)+"</strong></td></tr>");
  out.println("<tr><td style=\"padding-left:90px;\">"+rs.getString(3)+"</td></tr>");
  out.println("</table></td></tr><tr><td height=\"20px\"></td></tr>");
   }
   con.close();pt.close();
   out.println("</table>");
  }
  catch(Exception ec)
  {
  out.println(ec);
  }  
 %>    
 </td>
<td valign="top"  width="19%">
    <div style="background-color:white;width:98%;font-size:20px;text-align:center;border: solid  #00ccff;padding-bottom:10px;color: #666666;">
        <div style="background-color: #00ccff;padding-top:10px;padding-bottom:10px;font-size:22px;color:white; "><strong>Alternate Medicines</strong></div><br>
            <strong>Homeopathy</strong><br>
            for homeopathy medicines visit<br>
            <a href="">  www.homeopathy.com.</a><br><br>
            <strong>Aurvedic</strong><br>
            for aurvedic medicines visit<br>
            <a href="">   www.aurvedic.com.</a><br><br>
            <strong>Natural Medicines</strong><br>
             for natural medicines visit<br>
             <a href=""> www.natural.com.</a><br>        
        </div><br><br>
       <div style="background-color:white;width:98%;font-size:20px;text-align:center;border: solid  #00ccff;padding-bottom:10px;color: #666666;">
        <div style="background-color: #00ccff;padding-top:10px;padding-bottom:10px;font-size:22px;color:white; "><strong>Medical Events</strong></div><br>
            <strong>Medical Camps</strong><br>
            for list of Medical Camps visit<br>
            <a href="">  www.medicamp.com.</a><br><br>
            <strong>Yoga Events</strong><br>
            for list of Yoga Events visit<br>
            <a href="">   www.yogaevents.com.</a><br><br>
            <strong>Five K Runs</strong><br>
             for list of trend set events visit<br>
             <a href=""> www.natura524.com.</a><br>        
        </div>
</td> 
</tr> 
       </table>
 </body>
</html>
         
         