<%@ page import="com.company.controller.ControllerPersonagem" %>
<%@ page import="com.company.model.bean.Personagem" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String raca = request.getParameter("RACA");
    String sexo = request.getParameter("SEXO");
    int idade = Integer.parseInt(request.getParameter("IDADE"));
    double dano = Double.parseDouble(request.getParameter("DANO"));
    double hp = Double.parseDouble(request.getParameter("HP"));
    String pbusca = request.getParameter("PBUSCA");
    Personagem pes = new Personagem(id, nome, raca, sexo, idade, dano, hp);
    ControllerPersonagem perCont = new ControllerPersonagem();
    pes = perCont.alterar(pes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPersonagem.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>