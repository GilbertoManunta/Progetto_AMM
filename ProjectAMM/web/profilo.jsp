<%-- 
    Document   : profilo
    Created on : 3-mag-2017, 11.45.36
    Author     : Gilberto Manunta
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="it-IT">
    <head>
        <title>Nerdbook - Profilo</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Manunta Gilberto">
        <meta name="keywords" content="profilo nerdbook social network">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" media="screen" href="style.css">
    </head>
    <body>
    <c:set var="titolo" value="Profilo" scope="request"/>
    <jsp:include page="header.jsp"/>

    <c:set var="page" value="profilo" scope="request"/>
    <jsp:include page="nav.jsp"/>

    <div class="content" id="bodyProfilo">
        <div id="fotoProfilo">
            <img src="Immagini/fotoprofilo.jpg" title="Foto profilo" alt="Foto profilo" width="150" height="150">
        </div>
        <div id="divFormProfilo">
            <form action="Profilo" method="post">
                <div class="fieldForm">
                    <div class="campo">
                        <label for="name">Nome utente: </label>
                    </div>
                    <div class="campo widthInputProfilo">
                        <input type="text" name="name" id="name" value="Nome">
                    </div>

                </div>
                <div class="fieldForm">
                    <div class="campo">
                        <label for="surname">Cognome utente: </label>
                    </div>
                    <div class="campo widthInputProfilo">
                        <input type="text" name="surname" id="surname" value="Cognome">
                    </div>

                </div>
                <div class="fieldForm">
                    <div class="campo">
                        <label for="image">URL immagine profilo: </label>
                    </div>
                    <div class="campo widthInputProfilo">
                        <input type="text" name="image" id="image" value="Immagine">
                    </div>

                </div>
                <div class="fieldForm">
                    <div class="campo">
                        <label for="presentation">Frase di presentazione: </label>
                    </div>
                    <div class="campo widthInputProfilo">
                        <textarea name="presentation" id="presentation"></textarea>
                    </div>

                </div>
                <div class="fieldForm">
                    <div class="campo">
                        <label for="date">Data di nascita: </label>
                    </div>
                    <div class="campo widthInputProfilo">
                        <input type="date" name="date" id="date">
                    </div>

                </div>
                <div class="fieldForm">
                    <div class="campo">
                        <label for="password">Password: </label>
                    </div>
                    <div class="campo widthInputProfilo">
                        <input type="password" name="password" id="password" value="Password">
                    </div>

                </div>
                <div class="fieldForm">
                    <div class="campo">
                        <label for="confirm">Conferma password: </label>

                    </div>
                    <div class="campo widthInputProfilo">
                        <input type="password" name="confirm" id="confirm" value="ConfermaPassword">
                    </div>

                </div>

                <div class="campo">
                    <button type="submit">Aggiorna</button>
                </div>
            </form>
        </div>
    </div>
    </body>
</html>
