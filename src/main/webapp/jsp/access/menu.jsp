<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.company.model.bean.Usuario" %>
<%@ page import="com.company.controller.ControllerUsuario" %>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usuEntrada = new Usuario(login,senha);
    ControllerUsuario usucont = new ControllerUsuario();
    Usuario usuSaida = usucont.ValidarWeb(usuEntrada);
    session.setAttribute("UsuarioLogado",usuSaida);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (usuSaida != null) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Personagem</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Manter classe</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Manter Personagemclasse</a>

            <% if (usuSaida.getTipo().equals("Adm")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> InserirUsuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuario </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuario </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("Adm")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../personagem/inserirPersonagem.jsp"> InseriPersonagem </a></li>
                    <li><a href="../personagem/consultarPersonagem.jsp"> ConsultaPersonagem </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../personagem/consultarPersonagem.jsp"> ConsultaPersonagem </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("Adm")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                <li><a href="../classe/inserirClasse.jsp"> Insericlasse </a></li>
                <li><a href="../classe/consultarClasse.jsp"> Consultarclasse </a></li>
            </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                <li><a href="../classe/consultarClasse.jsp"> Consultaclasse </a></li>
            </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("Adm")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../personagemclasse/inserirRelacaoPersonagemClasse.jsp"> InseriPersonagemclasse </a></li>
                    <li><a href="../personagemclasse/consultarRelacaoPersonagemClasse.jsp"> ConsultaPersonagemclasse </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../personagemclasse/consultarRelacaoPersonagemClasse.jsp"> ConsultaPersonagemclasse </a></li>
                </ul>
            <% } %>
            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>