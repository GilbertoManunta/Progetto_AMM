<%-- 
    Document   : nav
    Created on : 2-mag-2017, 9.52.46
    Author     : Gilberto Manunta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav>
    <div class="titoloNav">
        <h2>Naviga</h2>
    </div>
    <ul class="fontSizeLi">
        <li class="sizeLi"><a href="descrizione.jsp">Descrizione sito</a></li>
        <c:if test="${page=='bacheca' or page=='profilo'}"><li><a href="login.jsp">Login</a></li></c:if>
        <c:if test="${page=='login'}"><li><a href="profilo.html">Profilo</a></li></c:if>
        <c:if test="${page=='login'}"><li><a href="bacheca.jsp">Bacheca</a></li></c:if>
    </ul>
</nav>
