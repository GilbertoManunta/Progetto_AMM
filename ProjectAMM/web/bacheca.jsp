<%-- 
    Document   : bacheca
    Created on : 2-mag-2017, 9.30.40
    Author     : Gilberto Manunta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nerdbook - Bacheca</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Manunta Gilberto">
        <meta name="keywords" content="bacheca nerdbook social network post">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" media="screen" href="style.css">
    </head>
    <body>
        <c:set var="titolo" value="Bacheca" scope="request"/>
        <jsp:include page="header.jsp"/>
        
        <c:set var="page" value="bacheca" scope="request"/>
        <jsp:include page="nav.jsp"/>

                
        <div id="container">
            <div id="persone">
                <h2>Persone</h2>
            </div>
            <div id="gruppi">
                <h2>Gruppi</h2>
            </div>
        </div>
        
        <c:if test="${empty param.user}">
            <div id="logOutLink"><a href="Login?logout=1">Logout</a></div>
        </c:if>
        
        <div class="content" id="noMarginTop">
            <c:forEach var="posts" items="${posts}">
                <div class="postBacheca">
                    <c:if test="${post.postType=='TEXT'}">
                        <h3>Nome utente: ${user}</h3>
                        <img title="Foto profilo" src="${urlFotoProfilo}" alt="Foto profilo" width="150" height="140">
                        <p>${post.content}</p>
                    </c:if>
                    <c:if test="${post.postType=='IMAGE'}">
                        <h3>Nome utente: ${user}</h3>
                        <img title="Foto profilo" src="${urlFotoProfilo}" alt="Foto profilo" width="150" height="140">
                        <p>${post.content}</p>
                    </c:if>
                    <c:if test="${post.postType=='LINK'}">
                        <h3>Nome utente: ${user}</h3>
                        <img title="Foto profilo" src="${urlFotoProfilo}" alt="Foto profilo" width="150" height="140">
                        <p>${post.content}</p>
                    </c:if> 
                </div>
            </c:forEach>
        </div>
    </body>
</html>
