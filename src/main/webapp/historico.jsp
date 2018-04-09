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
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <title>Tabela de Notas</title>
    </head>
    <body>
        <div class="table-responsive">
        <table class="table table-sm table-striped table-bordered table-hover"> 
            <thead class="thead-dark">
            <tr> 
                <th scope="col">Aluno</th>
                <th scope="col">Frequência</th>
                <th scope="col">Nota1</th>                
                <th scope="col">Trabalho</th>
                <th scope="col">Projeto</th>
                <th scope="col">Prova Final</th>
                <th scope="col">Disciplina</th>
                <th scope="col">Situação</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${not empty historico}">       

                <c:forEach items="${historico}" var="i">                       
                    
                    <tr>    
                        <th scope="row">${i.nome}</th>
                        <td scope="row">${i.frequencia}</td>
                        <td scope="row">${i.p1}</td>
                        <td scope="row">${i.trabalho}</td>
                        <td scope="row">${i.projeto}</td>
                        <td scope="row">${i.pf}</td>
                        <td scope="row">${i.disciplina}</td>
                        <td scope="row">${i.situacao()}</td>
                    </tr>
                </c:forEach>
            </tbody>
            </c:if>

        </table>
        </div>
        <br>
        <button type="button" onClick="history.go(-1)" > Voltar </button>
        
        <script src="js/jquery-3.2.1.slim.min.js" ></script>
        <script src="js/popper.min.js" ></script>
        <script src="js/bootstrap.min.js" ></script>
    </body>
</html>
