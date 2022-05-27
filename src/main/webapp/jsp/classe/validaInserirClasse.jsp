<%@ page import="com.company.model.bean.ClasseRpg" %>
<%@ page import="com.company.controller.ControllerClasseRpg" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String tipo = request.getParameter("TIPO");
    String arma = request.getParameter("ARMA");
    double bonusHp = Double.parseDouble(request.getParameter("BONUS_HP"));
    double bonusDano = Double.parseDouble(request.getParameter("BONUS_DANO"));
    ClasseRpg clasEntrada = new ClasseRpg(tipo, arma, bonusHp, bonusDano);
    ControllerClasseRpg contClas = new ControllerClasseRpg();
    ClasseRpg clasSaida = contClas.inserir(clasEntrada);
    
    // REDIRECIONA PARA A PAG clasIN.JSP
    String url = "inserirClasseRpg.jsp";
    response.sendRedirect(url);
%>

