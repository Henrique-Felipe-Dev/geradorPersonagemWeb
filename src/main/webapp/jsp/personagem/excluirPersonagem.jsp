<%@ page import="com.company.model.bean.Personagem" %>
<%@ page import="com.company.controller.ControllerPersonagem" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Personagem pes = new Personagem(id);
    ControllerPersonagem batCont = new ControllerPersonagem();
    pes = batCont.excluir(pes);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPersonagem.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>