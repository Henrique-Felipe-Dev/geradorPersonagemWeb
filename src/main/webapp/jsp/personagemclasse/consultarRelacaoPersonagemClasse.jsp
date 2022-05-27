<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - PERSONAGEM - CLASSE</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR PERSONAGEM - CLASSE</h1>
       <form name="consultarPersonagemClasse" action="validaConsultarRelacaoPersonagemClasse.jsp" method="post">
           obs: <input type="text" name ="OBS" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
