<%@ page import="com.company.model.bean.ClasseRpg" %>
<%@ page import="com.company.controller.ControllerClasseRpg" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    ClasseRpg clas = new ClasseRpg(id);
    ControllerClasseRpg clasCont = new ControllerClasseRpg();
    clas = clasCont.excluir(clas);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarClasse.jsp?END=" + pbusca;
    response.sendRedirect(url);
%>