<%-- 
    Document   : login
    Created on : 3-mag-2017, 11.14.47
    Author     : Gilberto Manunta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Nerdbook - Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Manunta Gilberto">
        <meta name="keywords" content="login nerdbook social network">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" media="screen" href="style.css">
    </head>
    <body>
        <c:set var="titolo" value="Login" scope="request"/>
        <jsp:include page="header.jsp"/>
        
        <c:set var="page" value="login" scope="request"/>
        <jsp:include page="nav.jsp"/>
        
        <div class="content" id="bodyLogin">
            <div id="divFormLogin">
                <c:if test="${invalidData == true}">
                    <div id="invalidDataWarning">I dati inseriti non sono corretti</div>
                </c:if>
                <form action="Login" method="post">
                    <div class="campo">
                        <label for="username">Username</label>
                    </div>
                    <div class="campo">
                        <input type="text" name="username" id="username" value="Username">
                    </div>
                    <div class="campo">
                        <label for="password">Password</label>
                    </div>
                    <div class="campo">
                        <input type="password" name="password" id="password" value="Password">
                    </div>
                    <div class="campo">
                        <button type="submit">Invia</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
