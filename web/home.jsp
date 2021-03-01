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
            font-size:68px;
            color:#0099ff;
            text-shadow:0 0 2px #0099ff;
            text-align:left;
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
            font-size:26px;
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
                <td style="vertical-align: text-bottom;">
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
                <td  style="padding-right:50px;padding-top:4px;  "><div>
                        <table cellspacing="10" width="100%">
                            <tr><td class="gnn" onclick={document.cookie="k1=Cardiology";window.location='hospital.jsp';} onmouseover={document.images.im1.src='menu/j1.jpg';document.images.im1.className='imag';} onmouseout={document.images.im1.src='menu/1.jpg';} >Hospitals</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=Anaesthesiology";window.location='doctors.jsp';}>Doctors</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=Cardiology";window.location='pharmacy.jsp';}>Pharmacy</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=Heart";window.location='quer.jsp';}>Queries</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=Radiology";window.location='aboutdiagnostics.jsp';}>Diagnostics</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=Heart";window.location='ti.jsp';}>Health Tips</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=Heart";window.location='diseases.jsp';}>Diseases</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=AnimalByte";window.location='firstaid.jsp';}>First Aid</td></tr>  
                            <tr><td class="gnn" onclick={document.cookie="k1=Cardiology";window.location='ambulances.jsp';}>Ambulances</td></tr>
                            <tr><td class="gnn" onclick={document.cookie="k1=Cardiology";window.location='bloodbanks.jsp';}>Blood Banks</td></tr>  
                        </table>    
                    </div>   
                </td>     
                <td>
                    <img src="menu/1.jpg"  class="imag" id="im1">   
                </td> 
            </tr>   
        </table>
         <table width="100%"><colgroup width="62%"></colgroup><tr><td align="right" style="text-align:center;padding-left:450px;">
     copyright @ cmrit technologies private lmt 2015<br>
     crafted and cared by cmrit technologies <br>
     </td><td><table align="right"><tr><td class="fallow" style="background:white;color:#3366ff;  ">fb</td><td class="fallow" style="background:white;color:black;  ">tw</td><td class="fallow" style="background:white;color:green;  ">hi</td><td class="fallow" style="background:white;color:red;  ">&nbsp;g&nbsp;</td><td class="fallow" style="background:white;color:blue;  ">&nbsp;li&nbsp;</td></tr></table></td></tr></table><br>
    
    </body>
</html>        
     