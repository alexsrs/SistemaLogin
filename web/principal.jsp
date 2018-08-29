<%-- 
    Document   : principal
    Created on : 27/08/2018, 12:53:35
    Author     : alexs
--%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página principal</title>
    </head>
    <body>
        <%
            String login = (String) session.getAttribute("login");
            if(login==null) {
                response.sendRedirect("logar.jsp");
            } else {
            %>
            <h3>Olá <%=login%> você está logado(a) no nosso sistema !</h3>
            <%
                   }
                   %>
                   Para sair clique <a href="sair.jsp"> aqui !</a>
                   <a></a>
    </body>
</html>
