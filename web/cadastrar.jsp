<%-- 
    Document   : cadastrar.jsp
    Created on : 28/08/2018, 00:58:06
    Author     : alexs
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="br.com.creapix.Usuario"%>

<!--  Indicamos que usaremos o bean -->
<jsp:useBean id="u" class="br.com.creapix.HashConverter" scope="page" />
<jsp:useBean id="usuario" class="br.com.creapix.Usuario" scope="request" />



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de usuário</title>
    </head>
    <body>
        <% 
          try {
              //Aqui passamos a utilizar os métodos geters and seters no lugar de ter acesso direto aos atributos
              usuario.setNome(request.getParameter("nome"));
              usuario.setLogin(request.getParameter("login"));
              usuario.setSenha(request.getParameter("senha"));
              usuario.setTelefone(request.getParameter("telefone"));
              usuario.setEmail(request.getParameter("email"));
                            
              //exibe no console a senha recebida
              System.out.println("Senha recebida" + usuario.getSenha());
              
              //Subtituindo a senha sem conversão pela ja convertida
              usuario.setSenha(u.md5(usuario.getSenha()));
              
              //Exibindo a senha ja convertida em MD5
              System.out.println("Senha ja convertida em md5" + usuario.getSenha());
              
              
              application.getAttribute("usuarios");
              HashMap<String, Usuario> usuarios = (HashMap<String, Usuario>)
              application.getAttribute("usuarios");
              if(usuarios == null){
                  usuarios = new HashMap<String, Usuario>();
              }
              usuarios.put(usuario.getLogin(), usuario);
              application.setAttribute("usuarios", usuarios);
              out.println("<h3>Cadastro realizado com sucesso !</h3>");
              
          }  catch (Exception e) {
              out.println("<h3>Erro inesperado !</h3>");
          }
        %>
        <a href="index.jsp">Clique aqui para se logar</a>
    </body>
</html>
