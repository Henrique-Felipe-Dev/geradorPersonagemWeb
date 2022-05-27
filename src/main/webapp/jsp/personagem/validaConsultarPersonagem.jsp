<%@page import="java.util.List"%>
<%@ page import="com.company.controller.ControllerPersonagem" %>
<%@ page import="com.company.model.bean.Personagem" %>
<%@ page import="com.company.model.bean.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nome = request.getParameter("NOME");
    Personagem pes = new Personagem(nome);
    ControllerPersonagem perCont = new ControllerPersonagem();
    List<Personagem> pess = perCont.listar(pes);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nome+"&ID=";
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PersonagemS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Raca">Raça</th>
                  <th data-field="Sexo">Sexo</th>
                  <th data-field="Idade">Idade</th>
                  <th data-field="Dano">Dano</th>
                  <th data-field="Hp">Hp</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pess.isEmpty())) { %>    
                <tbody>
                    <% for (Personagem listaPersonagems : pess) { %>
                        <tr>
                            <td><%=listaPersonagems.getId()%></td>
                            <td><%=listaPersonagems.getNome()%></td>
                            <td><%=listaPersonagems.getRaca()%></td>
                            <td><%=listaPersonagems.getSexo()%></td>
                            <td><%=listaPersonagems.getIdade()%></td>
                            <td><%=listaPersonagems.getDano()%></td>
                            <td><%=listaPersonagems.getHp()%></td>
                            <% if (usuLogado.getTipo().equals("Adm")) { %>
                                <td><a href="excluirPersonagem.jsp?<%=url + listaPersonagems.getId()%>">Excluir</a></td>
                                <td><a href="alterarPersonagem.jsp?<%=url + listaPersonagems.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>