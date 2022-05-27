<%@ page import="com.company.model.bean.ClasseRpg" %>
<%@ page import="com.company.controller.ControllerClasseRpg" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String tipo = request.getParameter("TIPO");
    String arma = request.getParameter("ARMA");
    double bonusHp = Double.parseDouble(request.getParameter("BONUS_HP"));
    double bonusDano = Double.parseDouble(request.getParameter("BONUS_DANO"));
    String pbusca = request.getParameter("PBUSCA");
    ClasseRpg clas = new ClasseRpg(id, tipo, arma, bonusHp, bonusDano);
    ControllerClasseRpg clasCont = new ControllerClasseRpg();
    ClasseRpg logSaida = clasCont.alterar(clas);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarClasse.jsp?END=" + pbusca;
    response.sendRedirect(url);
%>