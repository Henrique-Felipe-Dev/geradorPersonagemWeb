<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ page import="com.company.controller.ControllerPersonagem" %>
<%@ page import="com.company.model.bean.Personagem" %>
<%@ page import="com.company.model.bean.ClasseRpg" %>
<%@ page import="com.company.controller.ControllerClasseRpg" %>

<%
    ControllerPersonagem perCont = new ControllerPersonagem();
    Personagem h = new Personagem("");
    List<Personagem> Personagems = perCont.listar(h);

    ControllerClasseRpg clasCont = new ControllerClasseRpg();
    ClasseRpg clasEnt = new ClasseRpg("");
    List<ClasseRpg> clas = clasCont.listar(clasEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR Personagem ClasseRpg</title>
    <body>
        <div class="container"/>
            <h1>Inseri Personagem ClasseRpg</h1>
            <form name="inserirPersonagemClasseRpg" action="validaRelacaoPersonagemClasse.jsp" method="post">
                <table>
                    <tr>
                        <td>Personagem:</td>
                        <td>
                            <select NAME ="ID_Personagem" class="browser-default">
                                <% for (Personagem Personagem : Personagems) { %>
                                    <option value="<%=Personagem.getId()%>"><%=Personagem.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>ClasseRpg:</td>
                        <td>
                            <select NAME="ID_ClasseRpg" class="browser-default">
                                <% for (ClasseRpg ClasseRpg : clas) { %>
                                    <option value="<%=ClasseRpg.getId()%>"><%=ClasseRpg.getTipo()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
