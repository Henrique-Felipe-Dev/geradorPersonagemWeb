<%@ page import="com.company.model.bean.Usuario" %>
<%@ page import="com.company.controller.ControllerUsuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String status = request.getParameter("STATUS");
    String tipo = request.getParameter("TIPO");
    Usuario usu = new Usuario(login,senha,status,tipo);
    ControllerUsuario usuCont = new ControllerUsuario();
    usu = usuCont.inserir(usu);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirUsuario.jsp";
    response.sendRedirect(url);
%>

<HTML>
    <BODY>
        <%=login%>  <BR>
        <%=senha%>  <BR>
        <%=status%> <BR>
        <%=tipo%>   <BR>
    </BODY>
</HTML>
