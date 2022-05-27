<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - Personagem</title>
    <body>
       <div class="container"/>
        <h1>INSERIR Personagem</h1>
        <form name="inserirPersonagem" action="validaInserirPersonagem.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Raca: <input type="text" name="RACA" value=""> <br>
            Sexo: <input type="text" name="SEXO" value=""> <br>
            Idade: <input type="text" name="IDADE" value=""> <br>
            Dano: <input type="text" name="DANO" value=""> <br>
            Hp: <input type="text" name="HP" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
