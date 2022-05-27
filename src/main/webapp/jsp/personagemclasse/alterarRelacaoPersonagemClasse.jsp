<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="com.company.controller.ControllerPersonagem" %>
<%@ page import="com.company.model.bean.Personagem" %>
<%@ page import="com.company.controller.ControllerClasseRpg" %>
<%@ page import="com.company.model.bean.ClasseRpg" %>
<%@ page import="com.company.model.bean.PersonagemClasseRpg" %>
<%@ page import="com.company.controller.ControllerPersonagemClasseRpg" %>

<%
    ControllerPersonagem heroCont = new ControllerPersonagem();
    Personagem h = new Personagem("");
    List<Personagem> Personagems = heroCont.listar(h);

    ControllerClasseRpg clasCont = new ControllerClasseRpg();
    ClasseRpg clasEnt = new ClasseRpg("");
    List<ClasseRpg> clas = clasCont.listar(clasEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    PersonagemClasseRpg perClas = new PersonagemClasseRpg(id);
    ControllerPersonagemClasseRpg perClasCont = new ControllerPersonagemClasseRpg();
    perClas = perClasCont.buscar(perClas);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - Personagem ClasseRpg</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - Personagem ClasseRpg</h1>
        <form name="alterarPersonagemClasseRpg" action="validaAlterarRelacaoPersonagemClasse.jsp" method="post">
            <table>
                <tr>
                    <td>Personagem:</td>
                    <td>
                        <select NAME ="ID_Personagem" class="browser-default">
                            <% for (Personagem Personagem : Personagems) { %>
                            <% if( Personagem.getId()== perClas.getIdPersonagem()) { %>
                            <option selected value="<%=Personagem.getId()%>"><%=Personagem.getNome()%></option>
                            <% } else { %>
                            <option value="<%=Personagem.getId()%>"><%=Personagem.getNome()%></option>
                            <% } %>
                            <% } %>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td>ClasseRpg:</td>
                        <td>
                            <select NAME="ID_ClasseRpg" class="browser-default">
                                <% for (ClasseRpg classe : clas) { %>
                                    <% if( classe.getId() == perClas.getIdClasse()) { %>
                                        <option selected value="<%=classe.getId()%>"><%=classe.getTipo()%>
                                            <%=classe.getArma()%></option>
                                    <% } else { %>
                                        <option value="<%=classe.getId()%>"><%=classe.getTipo()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                    <td>Observação:</td>
                    <td><input type="text" name="OBS" value="<%=perClas.getObs()%>"></td>

                </tr>

                </table>    
            <input type="HIDDEN" name="ID" value="<%=perClas.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>