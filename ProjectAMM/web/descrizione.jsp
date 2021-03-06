<%-- 
    Document   : descrizione
    Created on : 3-mag-2017, 11.13.05
    Author     : Gilberto Manunta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="it-IT">
    <head>
        <title>Nerdbook - Descrizione</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Manunta Gilberto">
        <meta name="keywords" content="descrizione nerdbook social network accesso">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" media="screen" href="style.css">
    </head>
    <body>
        <c:set var="titolo" value="Descrizione sito" scope="request"/>
        <jsp:include page="header.jsp"/>
        
            <div id="divSommario">
                <div class="titoloNav">
                    <h2>Sommario</h2>
                </div>
                <ul class="fontSizeLi">
                    <li><a href="#Who">Chi?</a></li>
                    <li><a href="#Sign">Come iscriversi</a></li>
                    <li><a href="#Cost">Si paga?</a></li>
                </ul>
            </div>
            <div class="content">
                <a id="Who"></a>
                <div class="divSection">
                    <h3>A chi e' rivolto</h3>
                    <p>Nerdbook e' rivolto a tutti quelli che si sentono nerd dentro e ne vanno fieri. Nessuno
                        ti giudicherà. E' una comunità fatta apposta per questo.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam dignissim lacus at purus imperdiet hendrerit.
                        Nullam sed tortor ut tortor luctus lobortis accumsan a dolor. Quisque hendrerit augue turpis, non tincidunt urna dictum vitae.
                        Donec pellentesque nisi et dui rhoncus venenatis.</p><p> Praesent placerat nulla faucibus ligula eleifend, a aliquam lorem dignissim.
                        Vestibulum efficitur nibh vitae purus vehicula, et porttitor nulla vehicula. Vestibulum pharetra sem magna,
                        in consequat dui auctor vitae.</p><p>Pellentesque maximus varius suscipit. Mauris accumsan, erat sed imperdiet vestibulum, felis erat aliquet dui,
                        ac interdum quam ex non purus. Aliquam erat volutpat. Quisque tristique enim blandit nunc venenatis, 
                        vulputate maximus nisl rhoncus. Etiam ut faucibus tortor. In non arcu sapien. Ut congue, eros vitae molestie sodales, 
                        eros sem suscipit tellus, sit amet sagittis massa dolor nec ligula. Sed sagittis, lorem in gravida interdum, 
                        turpis purus blandit mauris, ac tincidunt massa mi a diam. Mauris condimentum pellentesque aliquam. 
                        Proin cursus lacus nisl, eleifend hendrerit libero tempus ac. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices 
                        posuere cubilia Curae; Praesent id dapibus nulla, at ornare ligula. Maecenas sed tempor nisi. Suspendisse mattis lorem at 
                        fringilla iaculis.</p>
                    <p>Ut commodo, ex at faucibus bibendum, eros enim vestibulum ligula, vel volutpat nisi sapien a neque.</p>
                </div>     
                <a id="Sign"></a>
                <div class="divSection">
                    <h3>Come iscriversi</h3>
                    <p>Basta inserire i dati che richiediamo. Dovrai solamente inserire il nome e cognome e la password. Vivamus lobortis sem augue, sit amet commodo odio lacinia imperdiet. Vestibulum in finibus mauris.
                        Vestibulum non tempus odio, id volutpat augue. Vivamus eu feugiat justo, sit amet tempus sem. 
                        Morbi fringilla condimentum ligula vitae tempor. Vestibulum venenatis eleifend neque vitae posuere. 
                        Suspendisse varius a nulla at ultricies. Vivamus vitae ligula a elit aliquet varius quis ac nunc. 
                        In hac habitasse platea dictumst. Curabitur sed risus ante. Aliquam tincidunt neque vitae gravida gravida. 
                        Aenean quis massa velit. Integer mi sem, aliquam eget mi at, scelerisque suscipit dolor. Donec placerat suscipit luctus. 
                        Nullam fringilla eleifend velit, eget vulputate orci egestas nec. Vivamus sit amet consequat arcu.
                    <p>Curabitur sit amet tellus quis tortor ornare rutrum nec ac mi. Nunc a fringilla nisi. Nullam dapibus massa augue. 
                        Nulla non diam non quam consequat maximus. Etiam turpis arcu, lacinia at porta id, fermentum et mauris. 
                        Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. 
                        Vestibulum at volutpat eros, et ornare justo. Aliquam eu odio eu risus faucibus vestibulum. 
                        Mauris pretium aliquam molestie. Mauris neque diam, laoreet ac lacus vitae, malesuada hendrerit turpis.</p>
                    <p>Sed sed risus elit. Nam lacinia condimentum condimentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. 
                        Nulla pellentesque vitae lacus luctus tempus. Quisque accumsan tortor nec enim porttitor, quis volutpat libero posuere.
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget tincidunt dui, sed sollicitudin velit.
                        Quisque tincidunt enim a tempus vehicula. Quisque sed orci vitae dolor hendrerit auctor cursus vel risus.
                        Morbi non ipsum orci. Cras ornare, sapien vel auctor rutrum, odio dolor consequat libero,
                        id mollis nibh justo vel risus. Duis et nisl eget ante molestie tincidunt non vitae leo.
                        Nulla vel pharetra lacus. Curabitur tincidunt nibh ac justo consequat finibus.
                        Duis pellentesque odio purus, sit amet tempus est gravida sed. Sed laoreet nulla eu bibendum ullamcorper.
                        Donec a aliquam dui. Vivamus tristique egestas metus id volutpat. Vestibulum ante ipsum primis in faucibus
                        orci luctus et ultrices posuere cubilia Curae; Ut quis tortor elementum, vehicula dui id, pulvinar lacus.
                        Donec ac pretium magna. Ut et rutrum sem, vitae dignissim ex.</p>
                </div>         
                <a id="Cost"></a>
                <div class="divSection">
                    <h3>Ma e' a pagamento?</h3>
                    <p>Non preoccuparti non ti spilliamo nemmeno uno scellino.</p>
                    <p>Pellentesque malesuada hendrerit massa quis porttitor.
                        Nam sed justo lacus. Fusce sit amet imperdiet leo. Mauris sodales ligula in pellentesque mollis.
                        Duis gravida dui ac dapibus viverra. Curabitur ultrices pulvinar mollis. Sed aliquam augue vel interdum pulvinar. 
                        Nulla non enim vehicula, volutpat mi ut, tempus nunc. Nam sed eleifend augue. Proin sit amet nisi metus. 
                        Vestibulum ultricies, augue in commodo porta, mi justo rhoncus sem, ac tempor tortor dolor sed sem. 
                        Phasellus faucibus ac lectus vel placerat. Nulla convallis diam ligula, sed rhoncus nibh gravida sit amet. 
                        Curabitur ex nulla, condimentum et fermentum sed, aliquet ut enim. In mattis lectus felis, ac scelerisque metus rhoncus et. 
                        Nunc purus risus, feugiat non blandit a, finibus non felis.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget tincidunt dui, sed sollicitudin velit.
                        Quisque tincidunt enim a tempus vehicula. Quisque sed orci vitae dolor hendrerit auctor cursus vel risus.
                        Morbi non ipsum orci. Cras ornare, sapien vel auctor rutrum, odio dolor consequat libero,
                        id mollis nibh justo vel risus. Duis et nisl eget ante molestie tincidunt non vitae leo.
                        Nulla vel pharetra lacus. Curabitur tincidunt nibh ac justo consequat finibus.
                        Duis pellentesque odio purus, sit amet tempus est gravida sed. Sed laoreet nulla eu bibendum ullamcorper.
                        Donec a aliquam dui. Vivamus tristique egestas metus id volutpat.</p>
                </div>
                <div id="tornaSu">
                    <p><a href="#testa">Torna su</a></p>
                </div>
            </div>
            <div id="divAccedi">
                <h2>Accedi</h2>
                <p>Clicca <a href="login.jsp">qui</a> per accedere.</p>
            </div>
    </body>
</html>
