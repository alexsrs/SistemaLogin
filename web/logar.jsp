<%-- 
    Document   : logar
    Created on : 27/08/2018, 12:15:35
    Author     : alexs
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="br.com.creapix.Usuario"%>
<%@page import="java.util.*"%>

<!--  Indicamos que usaremos o bean -->
<jsp:useBean id="u" class="br.com.creapix.HashConverter" scope="page" />
<jsp:useBean id="usuario" class="br.com.creapix.Usuario" scope="request" />


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%
        //insere três usuários no hashmap
        //HashMap<String, String> usuarios = new HashMap<String, String>();
        //usuarios.put("ana","zasxcd");
        //usuarios.put("joao", "1q2w3e");
        
        //Pega os usuários adicionados ao objeto application
        HashMap<String, Usuario> usuarios = (HashMap<String, Usuario>)
        application.getAttribute("usuarios");
        if(usuarios!=null) {
             //Pega os parametros enviados pelo formulário
            String login = request.getParameter("login");
            String senha = request.getParameter("senha");
                
            //Valida o usuario e a senha
            usuario  = usuarios.get(login);
            
            if(login!=null && senha!=null && usuarios.get(login)!=null && usuarios.get(login).getSenha()!=null && usuarios.get(login).getSenha().equals(u.md5(senha))) {
            session.setAttribute("login", login);
            response.sendRedirect("principal.jsp");       
            } else {
                %>
                <h2 style="color: red">Usuário ou senha inválidos</h2>
                <a href="index.jsp">Clique aqui para voltar</a>
                <%}
        } else {
                %>
                <h2 style="color: red">Não existem usuários cadastrados</h2>
                <a href="formulario.jsp">Clique aqui para se cadastrar</a>
                <%
        }
                %>
    </body>
</html>
