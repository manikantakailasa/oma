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
         <table with="100%"><colgroup width="60%"></colgroup>
             <tr>
                 <td width="100%" valign="top">
                     <g style="font-size:30px;color:black;font-family:serif; ">Designed And Developed By:</g>
                     <table cellspacing="20" width="87%" align="left" style="padding-left:10px;">
                         <tr><td style="box-shadow:0 0 2px black;border-radius:20px;"><table>
                         <tr><td><img src="about/ab1.jpg" width="300" height="130" style="border-radius:20px;box-shadow:0 0 2px black; "></td>
                             <td style="font-size:24px;vertical-align:top;" align="center" width="100%"><strong>Name:K.Swaraj Pal Reddy</strong><br>
                                 <i>   Profession:Software Engineer<br>
                                 Email:kswarajpalreddy@gmail.com<br>
                                 Fb-Id:kswarajpal reddy<br></i>
                          </td></tr></table></td></tr>
                         <tr><td style="box-shadow:0 0 2px black;border-radius:20px;"><table>
                         <tr><td><img src="about/ab2.jpg" width="300" height="130" style="border-radius:20px;box-shadow:0 0 2px black; "></td>
                             <td style="font-size:24px;vertical-align:top;" align="center" width="100%"><strong>Name:Ram Ravipati </strong><br>
                                 <i>   Profession:Software Engineer<br>
                                 Email:ramravipati94@gmail.com<br>
                                 Fb-Id:ramravi-pati<br></i>
                             </td></tr></table></td></tr>
                         <tr><td style="box-shadow:0 0 2px black;border-radius:20px;"><table>
                         <tr><td><img src="about/ab3.jpg" width="300" height="130" style="border-radius:20px;box-shadow:0 0 2px black; "></td>
                             <td style="font-size:24px;vertical-align:top;" align="center" width="100%"><strong>Name:Manidhar Bhandari</strong><br>
                                 <i>    Profession:Software Engineer<br>
                                 Email:manidharbhadari@gmail.com<br>
                                 Fb-Id:manidhar-bhandari<br><i>
                            </td></tr></table></td></tr>
                         <tr><td style="box-shadow:0 0 2px black;border-radius:20px;"><table>
                         <tr><td><img src="about/ab4.jpg" width="300" height="130" style="border-radius:20px;box-shadow:0 0 2px black; "></td>
                             <td style="font-size:24px;vertical-align:top;" align="center" width="100%"><strong>Name:G.Jaya Prakash Chary</strong><br>
                                 <i>     Profession:Software Engineer<br>
                                 Email:jayapakash.chary@gmail.com<br>
                                 Fb-Id:prakash chary<br></i>
                             </td></tr></table></td></tr>
                     </table>
                 </td>
                 <td style="font-size:44px;color:brown;text-align:center; " align="right" width="100%">Our Motto<br>
                     <img src="about/ab6.jpg" width="360" height="200"><br>
                     Our Inspiration<br>
                     <img src="about/ab5.jpg" width="360" height="200"><br>
                     Our Vision<br>
                     <img src="about/ab7.jpg" width="360" height="200">
                 </td></tr>
         </table>
   </body>
</html>