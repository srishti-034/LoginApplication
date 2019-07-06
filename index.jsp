<html>
<head>
<style>
   #regForm{
    background : #F5FFFA;
    font-family : corbel;
    color : #112233;
    font-size : 25px;
    border : 5px solid;
    border-color : #6699aa;
   }
   #heading{
    font-family : corbel;
    color : #225588;
    font-size : 44px;
   }
   </style>
</head>
 <body>
 <div id='heading'>Login Form</div>
 <div  align='center' id='regForm'>
   <form action="loginProcess.jsp" method="post">
      Enter User name :<input type="text" name="loginName"><br>
      Enter Password :<input type="password" name="pwd"><br>
      <input type="submit" value="Login" style='width:100px;'>
   </form>
   </div>
 </body>
</html>
<%
   String result=(String)request.getParameter("message");
   if(result!=null)
   {  if(result.equals("success"))
          out.println("<p style='font-family:corbel; font-size:20px; color:green;'>Login Success</p>");
      else
          out.println("<p style='font-family:corbel; font-size:20px; color:red;'>Login Failed</p>");
   }
  %>