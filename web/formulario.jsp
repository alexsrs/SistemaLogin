<%-- 
    Document   : formulario
    Created on : 28/08/2018, 00:28:51
    Author     : alexs
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de usuário</title>
    </head>
    <body>
        <form action="cadastrar.jsp">
            <fieldset>
                <legend>Cadastro de usuários</legend>
                
                <table>
                    <tr>
                        <td>Nome:</td>
                        <td><input name="nome" type="text"</td>
                    </tr>
                    <tr>
                        <td>Login:</td>
                        <td><input name="login" type="text"</td>
                    </tr>
                    <tr>
                        <td>Senha:</td>
                        <td><input name="senha" type="password"</td>
                    </tr>
                    <tr>
                        <td>Telefone:</td>
                        <td><input name="telefone" type="text"</td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input name="email" type="text"</td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Limpar"/></td>
                        <td><input type="submit" value="Enviar"/></td>
                    </tr>
                </table>
            </fieldset>   
        </form>
    </body>
</html>
