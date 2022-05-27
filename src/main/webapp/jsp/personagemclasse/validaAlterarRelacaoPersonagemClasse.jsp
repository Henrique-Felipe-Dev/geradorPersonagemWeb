<%@ page import="com.company.model.bean.PersonagemClasseRpg" %>
<%@ page import="com.company.controller.ControllerPersonagemClasseRpg" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idClasse = Integer.parseInt(request.getParameter("ID_ClasseRpg"));
    int idPersonagem = Integer.parseInt(request.getParameter("ID_Personagem"));
    String obs = request.getParameter("OBS");
    String pbusca = request.getParameter("PBUSCA");
    PersonagemClasseRpg heroBat = new PersonagemClasseRpg(id,idPersonagem, idClasse, obs);
    ControllerPersonagemClasseRpg heroBatCont = new ControllerPersonagemClasseRpg();
    heroBat = heroBatCont.alterar(heroBat);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPersonagemClasse.jsp?OBS=" + pbusca;
    response.sendRedirect(url);
%>    
    
    