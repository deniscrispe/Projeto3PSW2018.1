<%-- 
    Document   : form
    Created on : 23/03/2018, 15:25:07
    Author     : denis
--%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" import="br.cefetrj.psw.projeto3.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Histórico de Alunos</title>
    </head>
    <body>
        <h1>Notas</h1>
        <form action="ServletIndex" method="POST">
            Aluno: <input type ="text" name="aluno" value="<%= request.getParameter("aluno") != null ? request.getParameter("aluno") : ""%> "> <%= request.getAttribute("msgErroAluno") != null ? request.getAttribute("msgErroAluno") : ""%><br>  
            Frequência:<input type ="text" name="frequencia" value="<%= request.getParameter("frequencia") != null ? request.getParameter("frequencia") : ""%> "> <%= request.getAttribute("msgErroFrequencia") != null ? request.getAttribute("msgErroFrequencia") : ""%><br>
            Nota1: <input type ="text" name="nota1" value="<%= request.getParameter("nota1") != null ? request.getParameter("nota1") : ""%> "> <%= request.getAttribute("msgErroNota1") != null ? request.getAttribute("msgErroNota1") : ""%><br>
            Trabalho: <input type="text" name="trabalho" value="<%= request.getParameter("trabalho") != null ? request.getParameter("trabalho") : ""%> "> <%= request.getAttribute("msgErroTrabalho") != null ? request.getAttribute("msgErroTrabalho") : ""%><br>
            Projeto: <input type="text" name="projeto" value="<%= request.getParameter("projeto") != null ? request.getParameter("projeto") : ""%> "> <%= request.getAttribute("msgErroProjeto") != null ? request.getAttribute("msgErroProjeto") : ""%><br>
            PF: <input type="text" name="pf"value="<%= request.getParameter("pf") != null ? request.getParameter("pf") : ""%> "> <%= request.getAttribute("msgErroPf") != null ? request.getAttribute("msgErroPf") : ""%><br>

            <button type="submit"> Enviar </button>
            <button type="reset"> Apagar </button>
            <button type="button" onClick=location.href="historico.jsp"> Histórico </button>
            
            <%--
            <%  ArrayList<Aluno> hist = (ArrayList) request.getServletContext().getAttribute("historico");
                if(hist ==null) {%>
                    <input type="button" value="Histórico" id=1 onClick=location.href="historico.jsp" document.getElementById(1).disabled=0>
                <%}else {%>
                    <input type="button" value="Histórico" id=2 onClick=location.href="historico.jsp" document.getElementById(2).disabled=1>
                <%}%> --%>

        </form>
    </body>
</html>
