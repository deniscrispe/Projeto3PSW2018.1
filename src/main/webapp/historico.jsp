<%-- 
    Document   : historico.jsp
    Created on : 23/03/2018, 23:54:53
    Author     : denis
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
            <c:if test="${not empty historico}">       

                <c:forEach items="${historico}" var="i">                       
                    <tr>    
                        <td>${i.nome}</td>         
                        <td>${i.p1}</td>
                        <td>${i.trabalho}</td>
                        <td>${i.projeto}</td>
                        <td>${i.pf}</td>
                        <td>${i.situacao()}</td>
                    </tr>
                </c:forEach>
            </c:if>

        </table>
        <br>
        <button type="button" onClick="history.go(-1)" > Voltar </button>
    </body>
</html>
