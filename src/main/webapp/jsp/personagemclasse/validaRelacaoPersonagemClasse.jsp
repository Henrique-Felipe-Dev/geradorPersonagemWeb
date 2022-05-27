<%@ page import="com.company.model.bean.PersonagemClasseRpg" %>
<%@ page import="com.company.controller.ControllerPersonagemClasseRpg" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int idPersonagem = Integer.parseInt(request.getParameter("ID_Personagem"));
    int idClasse = Integer.parseInt(request.getParameter("ID_ClasseRpg"));
    String obs = request.getParameter("OBS");
    PersonagemClasseRpg perClas = new PersonagemClasseRpg(idPersonagem, idClasse, obs);
    ControllerPersonagemClasseRpg perClasCont = new ControllerPersonagemClasseRpg();
    perClas = perClasCont.inserir(perClas);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoPersonagemClasse.jsp";
    response.sendRedirect(url);

%>