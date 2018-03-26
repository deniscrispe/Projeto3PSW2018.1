<%-- 
    Document   : historico.jsp
    Created on : 23/03/2018, 23:54:53
    Author     : denis
--%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" import="br.cefetrj.psw.projeto3.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela de Notas</title>
    </head>
    <body>
        <table border=\"1\"> 
	<tr> 
                <td>Aluno</td>
                <td>Nota1</td>                
		<td>Trabalho</td>
		<td>Projeto</td>
		<td>Prova Final</td>
		<td>Situação</td>
        </tr>
                        
                <%  ArrayList<Aluno> historico = (ArrayList)request.getServletContext().getAttribute("historico");
                    for(int i=0 ;i< historico.size();i++){
                        Aluno x = historico.get(i);
                %>                        
        <tr>    
                <td><%=x.getNome()%></td>         
                <td><%=x.getP1()%></td>
                <td><%=x.getTrabalho()%></td>
                <td><%=x.getProjeto()%></td>
                <td><%=x.getPf()%></td>
                <td><%=x.situacao()%></td>
                
        </tr>
                <%
                }%>
	        
        </table>
        <br>
        <button type="button" onClick="history.go(-1)" > Voltar </button>
    </body>
</html>
