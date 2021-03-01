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
<head>
<script type="text/javascript">
var ar=new Array();
var k=1; 
var h="id1";
ar.push("Cardiology ");
ar.push("Breast Diseases ");
ar.push("Dental ");
ar.push("Endocrinology ");
ar.push("Gastroenterology ");
ar.push("Liver Diseases ");
ar.push("Intensive care ");
ar.push("Cancer ");
ar.push("Cosmetology ");
ar.push("Pain ");
ar.push("Prostatic ");
ar.push("Eye Care ");
ar.push("Brain ");
ar.push("Bones ");
ar.push("Diabetics ");
ar.push("Bloodbank ");
ar.push("Skin ");
ar.push("Mother and Child ");
ar.push("Fewer ");
ar.push("Asthma ");
ar.push("Orthopedics ");
function fun1(i)
{    
document.cookie="k1="+ar[i-1];
window.location="hospital.jsp";
}
</script>
<style>
           b
           {
            font-size:60px;
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
         font-size: 18px;
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
      box-shadow:0 0 1px black; 
      font-size:24px;
      padding:1px;
      background:white;
      cursor:pointer;  
     }
     .l1:hover
     {
       color:brown;  
     }
 </style>
    </head>    
    <body text="black" style="padding-left:8px;padding-right:8px;">
                    <table width="100%" >
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
    
         <table width="100%" style="background:whitesmoke;padding-top:6px;" align="center">   <colgroup width="24%"></colgroup><tr>
<td valign="top" align="left"   >  
 <table align="left" cellspacing="7"  width="80%">     
 <tr><td class="l1"  onclick="fun1(1)">Cardiology</td></tr>
 <tr><td class="l1"  onclick="fun1(2)">Children</td></tr>
 <tr><td class="l1"  onclick="fun1(3)">Dental</td></tr>
 <tr><td class="l1"  onclick="fun1(4)" >Endocrinology</td></tr>
 <tr><td class="l1"  onclick="fun1(5)" >Gastroenterology</td></tr>
 <tr><td class="l1"  onclick="fun1(6)" >Liver Diseases</td></tr>
 <tr><td class="l1"  onclick="fun1(7)" >Intensive care </td></tr>
 <tr><td class="l1"  onclick="fun1(8)" >Cancer</td></tr>
 <tr><td class="l1"  onclick="fun1(9)" >Cosmetology</td></tr>
 <tr><td class="l1"  onclick="fun1(10)">Pain</td></tr>
 <tr><td class="l1"  onclick="fun1(11)" >Prostatic</td></tr>
 <tr><td class="l1"  onclick="fun1(12)" >Eye Care</td></tr>
 <tr><td class="l1"  onclick="fun1(13)" >Brain</td></tr>
 <tr><td class="l1"  onclick="fun1(14)" >Bones</td></tr>
 <tr><td class="l1"  onclick="fun1(15)" >Diabetics</td></tr>
 <tr><td class="l1"  onclick="fun1(16)" >Blood Banks</td></tr>
 <tr><td class="l1"  onclick="fun1(17)" >Skin</td></tr>
 <tr><td class="l1"  onclick="fun1(18)" >Mother & Child</td></tr>
 <tr><td class="l1"  onclick="fun1(19)" >Fever</td></tr>
 <tr><td class="l1"  onclick="fun1(20)" >Asthma</td></tr>
 <tr><td class="l1"  onclick="fun1(21)" >General</td></tr>
 </table>    
</td>
<td align="right" valign="top" style="padding-left:0px;"><br>
    <table  align="center"  width="99%" style="padding-left:20px;">
        <tr>
            <td style="font-size:24px;">Select Location
            <input type="text" style="width:85%;font-size:20px;"><input type="button" value="go" style="font-size:20px;background: #0099ff;"></td>
            <td style="font-size:24px;">Select Hospital
            <input type="text" style="width:85%;font-size:20px;"><input type="button" value="go" style="font-size:20px;background: #0099ff;"></td>
        </tr>
    </table>
    <table  align="center" cellspacing="30"  width="100%" >  
<% 
  try
  {    
  Cookie[] ck2=request.getCookies(); 
  Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","prakash");
  pt=con.createStatement();
  rs=pt.executeQuery("select * from hospitals where cat like '%"+ck2[1].getValue().toLowerCase()+"%' or cat like 'all' order by rating");   
 while(rs.next()) 
  {  
out.println("<tr><td><table class=\"inn\" border=\"0\"><tr><td align=\"left\" colspan=\"3\" > <font size=\"5\" style=\"font-family:serif;\">"+rs.getString(1).toUpperCase()+"</font></td></tr>");                    
out.println("<tr>");
out.println("<td><img src=hospitals/"+rs.getString(2)+" width=\"220\" height=\"150\" border=\"2\"></td><td align=\"left\" style=\"padding-left:30px;\">");
out.println("<pre class=\"onn\"><strong>Address:</strong><br>");
out.println(" H-No: "+rs.getString(3));
out.println("  "+rs.getString(4));
out.println("  "+rs.getString(5)+","+rs.getString(6)+"-");
out.println("  "+rs.getString(7)+","+rs.getString(8)+",");
out.println("  "+rs.getString(9));
out.println("</pre></td><td align=\"left\">");
out.println("<pre class=\"onn\"><strong>Contact Details:</strong><br>");
out.println("  Tel-No  : "+rs.getString(10)+",");
out.println("                  "+rs.getString(11)+".");
out.println("  Fax     :"+rs.getString(12));
out.println("  Email   :"+rs.getString(13)+",");
out.println("                  "+rs.getString(14));
out.println("</pre><td></tr><tr>");
out.println("<td  colspan=\"2\" class=\"onn\" align=\"left\"><big>rating:<strong><font color=\"red\">"+rs.getString(17)+"</font></strong></big><input type=\"hidden\" value=\""+rs.getString(15)+"\"></td><td align=\"right\"><a href=\"\">Click here for more info</a><br></td></tr></table></td></tr>");    
  }
  pt.close();
  con.close();
 }
 catch(Exception ec){out.println("<tr><td>"+ec+"</td></tr>");} 
%>                      
</table>
  </td>            
  </tr>
</table>
</body>
</html>