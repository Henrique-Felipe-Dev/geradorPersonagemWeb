<%@ page import="com.company.model.bean.Personagem" %>
<%@ page import="com.company.controller.ControllerPersonagem" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nome = request.getParameter("NOME");
    String raca = request.getParameter("RACA");
    String sexo = request.getParameter("SEXO");
    int idade = Integer.parseInt(request.getParameter("IDADE"));
    double dano = Double.parseDouble(request.getParameter("DANO"));
    double hp = Double.parseDouble(request.getParameter("HP"));
 
    Personagem pes = new Personagem(nome, raca, sexo, idade, dano, hp);
    ControllerPersonagem batCont = new ControllerPersonagem();
    pes = batCont.inserir(pes);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPersonagem.jsp";
    response.sendRedirect(url);
%>

