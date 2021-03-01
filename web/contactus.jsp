<html>
<head>
<script type="text/javascript">
document.cookie="k1=Asthma";
</script>
<%
    session.setAttribute("username2","invalid");
    session.setAttribute("username3","invalid");
%>
<title>
home page
</title>
    <style>         b
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
           .gnn
           {
            width:150;
            padding:2px;
            font-size:26px;
            box-shadow:0 0 2px gray;
            background-color:white;
            cursor:pointer;
           }
           .knn
           {
            box-shadow:0 0 4px black;
            height:100px;  
           }
           .lnn
           {
               font-size:20px; 
           }
           .jnn
           {
            border-radius:10px;
            box-shadow:0 0 10px black;
            border-width:20px;  
           }
           .gnn:hover
           {
             color:brown;  
           }
             
             
         .gd
         {
             padding-right:100px;
             padding-top:20px;
         }
         .fallow
         {
          font-size:30px;padding:3px;border-radius:10px ;box-shadow:0 0 1px black;  
         }
         .imag
         {
            height:450px;padding-top:16px;width:100%;
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
         <table width="100%">
             <tr><td colspan="3" align="center">
         <img  src="contactus/ct.jpg" width="1000" height="280" align="center">
         </td></tr>
             <tr><td align="center" style="font-size:21px;">
                     <img src="contactus/c1.jpg" width="70" height="70" ><g style="font-size:26px;text-decoration-line:underline;color: #0099ff; "> Address</g>
                     <br>
             <center >
                 H-No:1-333/3<br>
                 Shanthi Nagar Colony,<br>
                 Alwal,Secunderabed,<br>
                 500087,Ranga-Reddy,<br>
                 District,Telangana.<br>
             </center>     
                 </td>
                 <td align="center" style="font-size:21px;">
                  <img src="contactus/c2.jpg" width="70" height="70" ><g style="font-size:26px;text-decoration-line:underline;color: #0099ff; ">You can mail us at</g> 
                  <br>
                 <center>
                 ->&nbsp;kswarajpalreddy@mail.com, &nbsp; &nbsp;<br>
                 ->&nbsp;manidharbahandari@gmail.com,<br>
                 ->&nbsp;ramravipati94@gmail.com, &nbsp; &nbsp; &nbsp;<br>
                 ->&nbsp;jayaprakash,chary@gmail,com. &nbsp;
                 </center>    
                 </td>
                 <td align="center" style="font-size:21px;">
                     <img src="contactus/c3.jpg" width="70" height="70" ><g style="font-size:26px;text-decoration-line:underline;color: #0099ff; ">You can call us at</g> 
                     <br>
                 <center>
                     Land-line:040-23221212,<br>
                     &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;040-22323323,<br>
                     Mobile-No:9090909090,<br>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;9090999997,<br>
                     Fax:+91-040-221223122.<br>
                 </center>
                 </td></tr>
         </table>
         </body>
</html>         