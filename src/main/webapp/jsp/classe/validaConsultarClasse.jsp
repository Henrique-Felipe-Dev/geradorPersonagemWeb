<%@page import="java.util.List"%>
<%@ page import="com.company.controller.ControllerClasseRpg" %>
<%@ page import="com.company.model.bean.ClasseRpg" %>
<%@ page import="com.company.model.bean.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String tipo = request.getParameter("TIPO");
    ClasseRpg clasEntrada = new ClasseRpg(tipo);
    ControllerClasseRpg contclas = new ControllerClasseRpg();
    List<ClasseRpg> listaclasSaida = contclas.listar(clasEntrada);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + tipo +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA Classes</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Tipo">Tipo</th>
                  <th data-field="Arma">Arma</th>
                  <th data-field="BonusHp">BonusHp</th>
                  <th data-field="BonusDano">BonusDano</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(listaclasSaida.isEmpty())) { %>    
                <tbody>
                    <% for (ClasseRpg listaclas : listaclasSaida) { %>
                        <tr>
                            <td><%=listaclas.getId()%></td>
                            <td><%=listaclas.getTipo()%></td>
                            <td><%=listaclas.getArma()%></td>
                            <td><%=listaclas.getBonusHp()%></td>
                            <td><%=listaclas.getBonusDano()%></td>
                            <% if (usuLogado.getTipo().equals("Adm")) { %>
                                <td><a href="excluirClasseRpg.jsp?<%=url + listaclas.getId()%>">Excluir</a></td>
                                <td><a href="alterarClasseRpg.jsp?<%=url + listaclas.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>