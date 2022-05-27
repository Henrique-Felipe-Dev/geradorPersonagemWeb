<%@ page import="com.company.model.bean.PersonagemClasseRpg" %>
<%@ page import="com.company.controller.ControllerPersonagemClasseRpg" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PersonagemClasseRpg heroBat = new PersonagemClasseRpg(id);
    ControllerPersonagemClasseRpg heroBatCont = new ControllerPersonagemClasseRpg();
    heroBat = heroBatCont.excluir(heroBat);
    
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoPersonagemClasse.jsp?OBS=" + pbusca;
    response.sendRedirect(url);

%>

