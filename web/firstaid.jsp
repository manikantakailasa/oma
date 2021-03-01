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
         %>
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
               <table style="background:whitesmoke;" width="100%">
                   <colgroup width="23%"></colgroup>
            <tr>
                <td  style="padding-right:50px;padding-top:4px;  " valign="top"><div>
                        <table cellspacing="10" width="100%">
                            <tr><td class="gnn">Animal Byte</td></tr>
                            <tr><td class="gnn">Accidents</td></tr>
                            <tr><td class="gnn">Heart-Attack</td></tr>
                            <tr><td class="gnn">Head-Ache</td></tr>
                            <tr><td class="gnn">Blood Clot</td></tr>
                            <tr><td class="gnn">Stomach Pain</td></tr>
                            <tr><td class="gnn">Body Fracture</td></tr>
                            <tr><td class="gnn">Fire Accident</td></tr>  
                            <tr><td class="gnn">Nose Bleeding</td></tr>
                            <tr><td class="gnn">Chiken Pox</td></tr>  
                        </table>    
                    </div>   
                </td>     
                <td valign="top">
                    <table width="96%" style="vertical-align:top; " align="right" cellspacing="4">
                        <tr><td colspan="2" style="font-size:23px;">Animal Byte First Aid </td></tr>
                        <tr><td valign="top" style="font-size:20px;">
                                experts advise people to constantly moisturize<br> 
                                the skin with sunscreen, no matter how diligent<br>
                                you were with reapplying, you still end up <br>
                                getting too much sun, as it speeds up the <br>
                                healing process and soothes the red, <br>
                                inflamed skin, Time Magazine reported<br>
                            </td>
                            <td><img src="firstaid/1.jpeg" width="400" height="160"></td>
                        </tr>
                        <tr><td colspan="2" style="font-size:23px;">Clean The Skin </td></tr><td><img src="firstaid/3.jpeg" width="400" height="160"></td>
                        <td valign="top" style="font-size:20px;">
                                 experts advise people to constantly moisturize<br> 
                                the skin with sunscreen, no matter how diligent<br>
                                you were with reapplying, you still end up <br>
                                getting too much sun, as it speeds up the <br>
                                healing process and soothes the red, <br>
                                inflamed skin, Time Magazine reported<br>
                            </td>
                        <tr><td colspan="2" style="font-size:23px;">Treatment Plan </td></tr><tr><td valign="top" style="font-size:20px;">
                                experts advise people to constantly moisturize<br> 
                                the skin with sunscreen, no matter how diligent<br>
                                you were with reapplying, you still end up <br>
                                getting too much sun, as it speeds up the <br>
                                healing process and soothes the red, <br>
                                inflamed skin, Time Magazine reported<br>
                            </td><td><img src="firstaid/2.jpeg" width="400" height="160"></td></tr>    
                    </table>    
                        
                </td> 
            </tr>   
        </table>
         <table width="100%"><colgroup width="62%"></colgroup><tr><td align="right" style="text-align:center;padding-left:450px;">
     copyright @ cmrit technologies private lmt 2015<br>
     crafted and cared by cmrit technologies <br>
     </td><td><table align="right"><tr><td class="fallow" style="background:white;color:#3366ff;  ">fb</td><td class="fallow" style="background:white;color:black;  ">tw</td><td class="fallow" style="background:white;color:green;  ">hi</td><td class="fallow" style="background:white;color:red;  ">&nbsp;g&nbsp;</td><td class="fallow" style="background:white;color:blue;  ">&nbsp;li&nbsp;</td></tr></table></td></tr></table><br>
    
    </body>
</html>        
     