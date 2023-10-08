<%-- 
    Document   : logout
    Created on : Sep 17, 2023, 11:36:49 AM
    Author     : Tanmay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",1000);
            }
        </script>
    </head>
    <body bg-colo="black" onload="logout()">
    </body>
</html>
