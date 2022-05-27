<%@page import="java.util.List"%>
<%@ page import="com.company.model.bean.PersonagemClasseRpg" %>
<%@ page import="com.company.controller.ControllerPersonagemClasseRpg" %>
<%@ page import="com.company.model.bean.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String obs = request.getParameter("OBS");
    PersonagemClasseRpg perClas = new PersonagemClasseRpg(obs);
    ControllerPersonagemClasseRpg perClasCont = new ControllerPersonagemClasseRpg();
    List<PersonagemClasseRpg> perClass = perClasCont.listar(perClas);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + perClas.getId() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA Personagems ClasseRpgs</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="ID">Id</th>
                  <th data-field="ID_Personagem">IdPersonagem</th>
                  <th data-field="ID_ClasseRpg">IdClasseRpg</th>
                  <th data-field="OBS">Obs</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(perClass.isEmpty())) { %>
                <tbody>
                    <% for (PersonagemClasseRpg listaPersonagemClasseRpg : perClass) { %>
                        <tr>
                            <td><%=listaPersonagemClasseRpg.getId()%></td>
                            <td><%=listaPersonagemClasseRpg.getIdPersonagem()%></td>
                            <td><%=listaPersonagemClasseRpg.getIdClasse()%></td>
                            <td><%=listaPersonagemClasseRpg.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("Adm")) { %>
                                <td><a href="excluirRelacaoPersonagemClasse.jsp?<%=url + listaPersonagemClasseRpg.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoPersonagemClasse.jsp?<%=url + listaPersonagemClasseRpg.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>