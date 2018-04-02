<%-- 
    Document   : form
    Created on : 23/03/2018, 15:25:07
    Author     : denis
--%>

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
            Aluno: <input type ="text" name="aluno" value="${param.aluno}"> ${requestScope.msgErroAluno}<br>  
            Frequência:<input type ="text" name="frequencia" value="${param.frequencia}"> ${requestScope.msgErroFrequencia}<br>
            Nota1: <input type ="text" name="nota1" value="${param.nota1}"> ${requestScope.msgErroNota1}<br>
            Trabalho: <input type="text" name="trabalho" value="${param.trabalho}"> ${requestScope.msgErroTrabalho}<br>
            Projeto: <input type="text" name="projeto" value="${param.projeto}"> ${requestScope.msgErroProjeto}<br>
            PF: <input type="text" name="pf"value="${param.pf}"> ${requestScope.msgErroPf}<br>

            <button type="submit"> Enviar </button>
            <button type="reset"> Apagar </button>           

        </form>
    </body>
</html>
