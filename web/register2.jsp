<html>
    <head>
        <script type="text/javascript">
            function validate()
            {
             if((document.form.profilename.value!="")&&(document.form.username.value!="")&&((document.form.password1.value!="")&&(document.form.password2.value!=""))&&(document.form.password1.value==document.form.password2.value))
             return true;
             else
             document.getElementById("invalid").innerHTML="registration failed please check your details";
             return false;
            }
            function clear()
            {document.getElementById("invalid").innerHtml="";}
        </script>
        <style>
          .box
          {
           box-shadow:0 0 3px black;
           border-radius:10px; 
          }
          .l1
          {
           background: #0099ff;
           color:white;
           font-size:40px;
           text-align:center;
           border-top-left-radius:13px;
           border-top-right-radius:13px; 
              
          }
          .l2
          {
           text-align:left;
           font-size:30px;
           font-family:serif;
           color:#333333;
          }
          .l3
          {
          width:100%;
          height:100%;
          font-size:22px;
          }
          .l5
          {
            font-size:24px;
            color:white;
            width:48%;
            height:100%;
            background: #0088ff;
           
            border-radius:9px;
          }
          .i1
          {
              font-size:64px;
              color: #0099ff;
              text-shadow:0 0 3px #0099ff;
              
          }
          .i2
          {
           font-size:20px;
           color:brown;
           text-align:right;
           font-style: italic;
           padding-left:410px;
          }
          .l4
          {
           text-align:left;
           color:  #0066ff;
           text-decoration:underline; 
           cursor:pointer; 
          }
          .l6
          {
            color:  #0066ff;
           text-decoration:underline; 
           text-align:right;
           cursor:pointer; 
          }
        </style>   
    </head>
    <body style="background:whitesmoke;">
        <form action="register.jsp" method="post" onsubmit=" return validate()" name="form">
        <table align="center" width="100%" height="100%">
            <tr><td></td>
                <td valign="center" align="center">
                    <span class="i1">Online Medical Assistance</span><br>
                    <span class="i2" align="right">your complete health care center</span><br><br><br>
                    <table class="box" cellpadding="10" width="44%" height="40%">
                        <tr><td colspan="2" class="l1">Registration Form</td></tr>
                        <tr><td class="l2">enter profile name</td><td><input type="text" class="l3"  name="profilename" onfocus={document.getElementById('invalid').innerHTML='&nbsp;&nbsp;';} ></td></tr>
                        <tr><td class="l2">enter user name</td><td><input type="text" class="l3"  name="username" onfocus={document.getElementById('invalid').innerHTML='&nbsp;&nbsp;';} ></td></tr>
                        <tr><td class="l2">enter password</td><td><input type="password" class="l3" name="password1" onfocus={document.getElementById('invalid').innerHTML='&nbsp;&nbsp;';}></td></tr>
                        <tr><td class="l2">confirm password</td><td><input type="password" class="l3" name="password2" onfocus={document.getElementById('invalid').innerHTML='&nbsp;&nbsp;';}></td></tr>
                        <tr><td colspan="2"><input type="reset" class="l5" value="cancel" onclick="document.getElementById('invalid').innerHTML='&nbsp;&nbsp;'">&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="l5" value="submit"></td></tr>
                    </table>
                    <br>
                    <span id="invalid" style="color:red;font-size:20px;font-style:italic;">&nbsp;&nbsp;
                        <%
                            try
                            {    
                            Object ob=session.getAttribute("username3");
                            if(ob.toString().equals("guest"))
                            out.print("username already exists please change"); 
                            session.setAttribute("username3","invalid");
                            }
                            catch(Exception e)
                            {}    
                         %>
                    </span>
                </td>
                <td></td></tr>
        </table>
        </form>    
     </body>
</html>