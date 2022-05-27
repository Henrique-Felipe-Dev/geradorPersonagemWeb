<%@ page import="com.company.model.bean.ClasseRpg" %>
<%@ page import="com.company.controller.ControllerClasseRpg" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    ClasseRpg clas = new ClasseRpg(id);
    ControllerClasseRpg clasCont = new ControllerClasseRpg();
    clas = clasCont.buscar(clas);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ClasseRpg</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR ClasseRpg</h1>
        <form name="alterarClasseRpg" action="validaAlterarClasse.jsp" method="post">
            TIPO: <input type="text" name="TIPO" value="<%=clas.getTipo()%>"> <br>
            ARMA: <input type="text" name="ARMA" value="<%=clas.getArma()%>"> <br>
            BONUS_HP: <input type="text" name="BONUS_HP" value="<%=clas.getBonusHp()%>"> <br>
            BONUS_DANO: <input type="text" name="BONUS_DANO" value="<%=clas.getBonusDano()%>"> <br>

            <input type="HIDDEN" name="ID" value="<%=clas.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>