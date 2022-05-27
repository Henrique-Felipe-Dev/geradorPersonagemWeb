<%@ page import="com.company.model.bean.Personagem" %>
<%@ page import="com.company.controller.ControllerPersonagem" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Personagem pes = new Personagem(id);
    ControllerPersonagem perCont = new ControllerPersonagem();
    pes = perCont.buscar(pes);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - Personagem</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR Personagem</h1>
        <form name="alterarPersonagem" action="validaAlterarPersonagem.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=pes.getNome()%>"> <br>
            Identidade: <input type="text" name="NOME" value="<%=pes.getNome()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pes.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>