<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - CLASSE</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR CLASSE</h1>
       <form name="consultarBatalha" action="validaConsultarClasse.jsp" method="post">
           Tipo <input type="text" name ="TIPO" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
