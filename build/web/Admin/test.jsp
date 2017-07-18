<%-- 
    Document   : test
    Created on : 2017/7/18, 下午 08:38:25
    Author     : OrcaR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%
            response.setCharacterEncoding("UTF-8");
            
     
          String str = request.getParameter("state");
          String str2 = request.getParameter("test");
       %>
       <%=str%>
       <%=str2%>
    </body>
</html>
