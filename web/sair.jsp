<%-- 
    Document   : sair
    Created on : 27/08/2018, 12:51:18
    Author     : alexs
--%>

<%
    try {
        session.invalidate();
    } catch (Exception e) {
        
    }
    response.sendRedirect("index.jsp");
    %>
    