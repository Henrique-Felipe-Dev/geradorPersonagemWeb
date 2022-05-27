<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - Classe</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CLASSE</h1>
        <form name="inserirBatalha" action="validaInserirClasse.jsp" method="post">
            Tipo: <input type="text" name="TIPO" value=""> <br>
            Arma: <input type="text" name="ARMA" value=""> <br>
            BonusHp: <input type="text" name="BONUS_HP" value=""> <br>
            BonusDano: <input type="text" name="BONUS_DANO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
