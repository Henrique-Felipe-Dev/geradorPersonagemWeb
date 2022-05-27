<%@page import="java.util.List"%>
<%@ page import="com.company.model.bean.Usuario" %>
<%@ page import="com.company.controller.ControllerUsuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String login = request.getParameter("LOGIN");
    Usuario usu = new Usuario(login);
    ControllerUsuario usuCont = new ControllerUsuario();
    List<Usuario> usus = usuCont.listar(usu);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + usu.getLogin()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA USUÁRIOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Login">Login</th>
                  <th data-field="Senha">Senha</th>
                  <th data-field="Status">Status</th>
                  <th data-field="Tipo">Tipo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(usus.isEmpty())) { %>    
                <tbody>
                    <% for (Usuario listaUsuario : usus) { %>
                        <tr>
                            <td><%=listaUsuario.getId()%></td>
                            <td><%=listaUsuario.getLogin()%></td>
                            <td><%=listaUsuario.getSenha()%></td>
                            <td><%=listaUsuario.getStatus()%></td>
                            <td><%=listaUsuario.getTipo()%></td>
                            <% if (usuLogado.getTipo().equals("Adm")) { %>
                                <td><a href="excluirUsuario.jsp?<%=url + listaUsuario.getId()%>">Excluir</a></td>
                                <td><a href="alterarUsuario.jsp?<%=url + listaUsuario.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>