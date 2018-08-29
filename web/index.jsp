<%-- 
    Document   : index
    Created on : 27/08/2018, 12:04:02
    Author     : alexs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="logar.jsp" method="post">
            <fieldset>
                <legend>Sistema de login</legend>
                <table>
                    <tr>
                        <td>Login:</td>
                        <td><input type="text" name="login"/></td>
                    </tr>
                    <tr>
                        <td>Senha:</td>
                        <td><input type="password" name="senha"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar"/></td>
                        <td><input type="reset" value="Limpar"/></td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </body>
</html>
