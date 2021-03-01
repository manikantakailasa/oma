<html>
   <%@page  import="java.sql.DriverManager"%>    
<%@page import="java.lang.*"%>  
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%> 
<%@page import="oracle.jdbc.driver.*"%>
    
<%! ResultSet rs;
    Statement pt;
    Connection con;
%>            
    <head>
       <script type="text/javascript">
var k=1; 
var j=1;
   var i1=0;
var ar=new Array();
ar.push("Heart");
ar.push("Kidney");
ar.push("Liver");
ar.push("Lungs");
ar.push("Digestive System");
ar.push("Nerves");
ar.push("Brain");
ar.push("Spinal Cod");
ar.push("Backbone");
ar.push("Nose");
ar.push("Eyes");
ar.push("Teeth");
ar.push("Fat");
ar.push("Tongue");
ar.push("Mouth");
ar.push("Ears");
ar.push("Skin");
ar.push("Legs");
ar.push("Hands");
ar.push("General");
ar.push("Head");
ar.push("Fingers");
function fun1(i)
{        
document.cookie="k1="+ar[i-1];
window.location="diseases.jsp";
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
    <body>
 <body text="black" style="padding-left:8px;padding-right:8px;" >
                    <table width="100%">
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
                       <li onclick="window.location='home.jsp'">Home
                        <li onclick="window.location='login.jsp'">Login
                        <li onclick="window.location='register2.jsp'">Register
                        <li onclick="window.location='contactus.jsp'">ContactUs
                        <li onclick="window.location='aboutus.jsp'">AboutUs
                        <li onclick="window.location='feedback.jsp'">FeedBack     
                        <li><input type="text"><input type="button" value="go">     
                    </ul>        
                </td>   
            </tr>
        </table>                    
                    <table style="background:whitesmoke;" width="100%" ><colgroup width="20%"></colgroup>
              <tr>
                  <td valign="top">
<table align="left" cellspacing="7"  > 
 <tr><td class="l1"  onclick="fun1(1)" >*Heart</td></tr>
 <tr><td class="l1"  onclick="fun1(2)" >*Kidney</td></tr>
 <tr><td class="l1"  onclick="fun1(3)" >*Liver</td></tr>
 <tr><td class="l1"  onclick="fun1(4)" >*Lungs</a></td></tr>
 <tr><td class="l1"  onclick="fun1(5)" >*Digestive System</a></td></tr>
 <tr><td class="l1"  onclick="fun1(6)" >*Nerves</a></td></tr>
 <tr><td class="l1"  onclick="fun1(7)" >*Brain</a></td></tr>
 <tr><td class="l1"  onclick="fun1(8)" >*Spinal Cod</a></td></tr>
 <tr><td class="l1"  onclick="fun1(9)" >*Back Bone</a></td></tr>
 <tr><td class="l1"  onclick="fun1(10)" >*Nose </a></td></tr>
 <tr><td class="l1"  onclick="fun1(11)" >*Eyes</a></td></tr>
 <tr><td class="l1"  onclick="fun1(12)" >*Teeth</a></td></tr>
 <tr><td class="l1"  onclick="fun1(13)" >*Fat</a></td></tr>
 <tr><td class="l1"  onclick="fun1(14)" >*Tongue</a></td></tr>
 <tr><td class="l1"  onclick="fun1(15)" >*Mouth</a></td></tr>
 <tr><td class="l1"  onclick="fun1(16)" >*Ears</a></td></tr>
 <tr><td class="l1"  onclick="fun1(17)" >*Skin</a></td></tr>
 <tr><td class="l1"  onclick="fun1(18)" >*Legs</a></td></tr>
 <tr><td class="l1"  onclick="fun1(19)" >*Hands</a></td></tr>
 <tr><td class="l1"  onclick="fun1(20)" >*General</a></td></tr>
 <tr><td class="l1"  onclick="fun1(21)" >*Head</a></td></tr>
 <tr><td class="l1"  onclick="fun1(22)" >*Fingers</a></td></tr>
 </table>    
 </td>
 <td valign="top" style="padding-right:40px;">
<table  align="center"  width="99%" style="padding-left:50px;">
        <tr>
            <td style="font-size:24px;">Search Disease <br>
            <input type="text" style="width:40%;font-size:20px;"><input type="button" value="go" style="font-size:20px;"></td>
        </tr>
</table>     
<%
try
  {    
  Cookie[] ck2=request.getCookies(); 
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","prakash");
  pt=con.createStatement();
  rs=pt.executeQuery("select * from diseases where cat like '"+ck2[1].getValue()+"' or cat like 'Kidney'");   
  out.println("<table   width=\"96%\"  align=\"right\" cellspacing=20 >");
  while(rs.next())  
  {      
   out.println("<tr><td style=\"box-shadow:0 0 2px black;\"><table width=100% align=right >");   
   out.println("<tr><td colspan=\"2\" valign=\"top\" style=\"font-size:24px;\"><strong>"+rs.getString(2)+"</strong></td></tr>");
   out.println("<tr><td valign=\"top\" style=\"padding-left:30px;\"><img src=\"diseases/"+rs.getString(5)+"\" width=\"200\" height=\"100\" border=\"2\"></td>");
   out.println("<td valign=top style=\"font-size:22px;padding-left:10px;\">");
   out.println(rs.getString(3)+"</td></tr>");
   out.println("<tr><td colspan=2 align=right><input type=\"button\" value=\"Click here to get more info\"></pre></td></tr>");
   out.println("</table></td></tr>");
   
  }
  out.println("</table>");  
  }
  catch(Exception ec){out.println(ec);}
%>            
 </td>
 </tr>
       </table>
 </body>
</html>
