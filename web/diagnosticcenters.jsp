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
    String s1,s2,s3,s4,s5;
%>  
<script type="text/javascript">
var ar=new Array();
ar.push("2D-ECHO");
ar.push("P.F.T");
ar.push("E.E.G");
ar.push("X-RAY");
ar.push("E.C.G");
ar.push("BRONCHOSCOPY");
ar.push("PATHOLOGY");
ar.push("BIOCHEMISTRY");
ar.push("SEROLOGY");
ar.push("MICROBIOLOGY");
ar.push("HARMONES");
ar.push("HAEMATOLOGY");
ar.push("RADIOLOGY");
ar.push("DIGITAL OPG");
ar.push("TREAD MILL TEST");
ar.push("PHYSIOTHERAPY");
ar.push("HORMONAL ASSAY");
ar.push("CELL COUNTER");
ar.push("CT-SCAN");
ar.push("M.R.I");
ar.push("DIGITAL X-RAY");
ar.push("ULTRASOUND SCAN");
function fun1(i)
{
    document.cookie="k1="+ar[i-1];
    window.location="diagnosticcenters.jsp";
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
            <tr><td class="l1 "onclick="fun1(1)">2D-ECHO</a></li></td></tr>
            <tr><td class="l1" onclick="fun1(2)">P.F.T</td></tr>
            <tr><td class="l1" onclick="fun1(3)">E.E.G</td></tr>
            <tr><td class="l1" onclick="fun1(4)">X-RAY</td></tr>
            <tr><td class="l1" onclick="fun1(5)">E.C.G</td></tr>
            <tr><td class="l1" onclick="fun1(6)">BRONCHOSCOPY</td></tr>
            <tr><td class="l1" onclick="fun1(7)">PATHOLOGY</td></tr>
            <tr><td class="l1" onclick="fun1(8)">BIOCHEMISTRY</td></tr>
            <tr><td class="l1" onclick="fun1(9)">SEROLOGY</td></tr>
            <tr><td class="l1" onclick="fun1(10)">MICROBIOLOGY</td></tr>
            <tr><td class="l1" onclick="fun1(11)">HARMONES</td></tr>
            <tr><td class="l1" onclick="fun1(12)">HAEMATOLOGY</td></tr>
            <tr><td class="l1" onclick="fun1(13)">RADIOLOGY</td></tr>
            <tr><td class="l1" onclick="fun1(14)">DIGITAL OPG</td></tr>
            <tr><td class="l1" onclick="fun1(15)">TREAD MILL TEST</td></tr>
            <tr><td class="l1"onclick="fun1(16)">PHYSIOTHERAPY </td></tr>
            <tr><td class="l1" onclick="fun1(17)">HORMONAL ASSAY</td></tr>
            <tr><td class="l1" onclick="fun1(18)">CELL COUNTER</td></tr>
            <tr><td class="l1" onclick="fun1(19)">CT-SCAN</td></tr>
            <tr><td class="l1" onclick="fun1(20)">M.R.I</td></tr>
            <tr><td class="l1" onclick="fun1(21)">DIGITAL X-RAY</td></tr>
            <tr><td class="l1" onclick="fun1(22)">ULTRASOUND SCAN</td></tr>
</table>     
</td>
 <td align="right" valign="top" style="padding-left:0px;"><br>
    <table  align="center"  width="99%" style="padding-left:20px;">
        <tr>
            <td style="font-size:24px;">Select Location
            <input type="text" style="width:85%;font-size:20px;"><input type="button" value="go" style="font-size:20px;background: #0099ff; "></td>
            <td style="font-size:24px;">Select Diagnostic-Center
            <input type="text" style="width:85%;font-size:20px;"><input type="button" value="go" style="font-size:20px;background: #0099ff; "></td>
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
  rs=pt.executeQuery("select * from diagnosticcenters where cat like '%"+ck2[1].getValue().toLowerCase()+"%' or cat like 'all' order by rating");   
 while(rs.next()) 
  {  
out.println("<tr><td><table class=\"inn\" border=\"0\"><tr><td align=\"left\" colspan=\"3\" > <font size=\"5\" style=\"font-family:serif;\">"+rs.getString(1).toUpperCase()+"</font></td></tr>");                    
out.println("<tr>");
out.println("<td><img src=diagnosticcenters/"+rs.getString(2)+" width=\"220\" height=\"150\" border=\"2\"></td><td align=\"left\" style=\"padding-left:30px;\">");
out.println("<pre class=\"onn\"><strong>Address:</strong><br>");
out.println(" H-No: "+rs.getString(3));
out.println(" "+rs.getString(4));
out.println(" "+rs.getString(5)+","+rs.getString(6)+"-");
out.println(" "+rs.getString(7)+","+rs.getString(8)+",");
out.println(" "+rs.getString(17));
out.println("</pre></td><td align=\"left\">");
out.println("<pre class=\"onn\"><strong>Contact Details:</strong><br>");
out.println("  Tel-No  : "+rs.getString(9)+",");
out.println("                  "+rs.getString(10)+".");
out.println("  Fax     :"+rs.getString(11));
out.println("  Email   :"+rs.getString(12)+",");
out.println("                  "+rs.getString(13));
out.println("</pre><td></tr><tr>");
out.println("<td  colspan=\"2\" class=\"onn\" align=\"left\"><big>rating:<strong><font color=\"red\">"+rs.getString(15)+"</font></strong></big><input type=\"hidden\" value=\""+rs.getString(16)+"\"></td><td align=\"right\"><a href=\"\">Click here for more info</a><br></td></tr></table></td></tr>");    
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